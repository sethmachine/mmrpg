#code for generating constants
#bases each constant as an integer value
#with the name of the file in capitals
#appended with some suffix, e.g. QUEST or STORY.

import os
import platform
import re
import util

CONSTANTS_DIR = util.find("constants", util.root)

getLibName = re.compile(r'(?<=library )[a-z]+', re.IGNORECASE)

getObjectName = re.compile(r'(?<="unam", ")[^"]+')

getIdType = re.compile(r'(?<=add\()[^,]+')

#finds the rawcode id of the insert file
getId = re.compile(r'(?<=//! i id = \')[a-z0-9]+', re.IGNORECASE)

#finds the name of each object in the insert file
getNames = re.compile(r'(?<=//\[\[ )[a-z ]+', re.IGNORECASE)

def int2Rawcode(integer, rawId):
    if integer < 10:
        return  "'" + rawId + "00" + str(integer) + "'"
    elif integer >= 10 and integer < 100:
        return  "'" + rawId + "0" + str(integer) + "'"
    else:
        return  "'" + rawId + str(integer) + "'"
    



def constants(constantsDir, constantsFile, cwd, keywords = [], rawCode = "", suffix = "", alt = ""):
    fileNames = util.getFileNames(constantsDir, cwd, keywords)
    varNames = [util.getFileName.findall(x)[0] for x in fileNames]
    varNames = [x.replace("_hero", "") for x in varNames]
    varNames = [x.replace("_vendor", "") for x in varNames]
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(path, 'w')
    header = "library " + (constantsDir + alt).title() + "Constants\n"
    header = header.replace("_", "")
    header += "globals\n"
    i = 0
    objID = rawCode + "000"
    if rawCode == "N":
        i = 1
    elif rawCode == "w":
        i = "vZZZ"
    elif rawCode == "g":
        objID = rawCode + "001"
    for var in varNames:
        value = i
        if rawCode != "" and rawCode != "w" and rawCode != "g":
            value = int2Rawcode(value, rawCode)
        elif rawCode == "w" or rawCode == "g":
            value = "'" + objID + "'"
            objID = util.add(objID)
        header += "\tconstant integer " + var.upper() + suffix + " = " + str(value) + "\n"
        if rawCode != "w" and rawCode != "g":
            i += 1
    header += "endglobals\nendlibrary"
    print>>w, header
    w.close()

def rawCns(insertFile, constantsFile, suffix = "id"):
    """Takes an insert file as an argument and creates a vJASS library,
    which contains each of the objects' rawcodes represented as
    JASS constant integers."""
    data = util.getInsertFileData(insertFile)
    names = [x.split("|")[0] for x in data[0]]
    ids = data[1]
    if len(names) != len(ids):
        print "Error: The size of names and ids is not the same!"
        return
    #build the first part of the library
    header = "library " + util.name2Lib(insertFile.replace("_insert.j", "") + suffix) + "Constants\n"
    header = header.replace("_", "")
    header += "globals\n"
    #now for each name, create a constant integer
    for x in range(0, len(names)):
        header += "\tconstant integer " + util.name2Var(names[x] + "_" + suffix) + " = \'" + ids[x] + "\'\n"
    header += "endglobals\nendlibrary"
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(path, 'w')
    print>>w, header
    w.close()

def intCns(insertFile, constantsFile, suffix = ""):
    """Takes an insert file as an argument and creates a vJASS library,
    which contains each of the objects' rawcodes represented as
    JASS constant integers."""
    data = util.getInsertFileData(insertFile)
    names = [x.split("|")[0] for x in data[0]]
    ids = data[1]
    if len(names) != len(ids):
        print "Error: The size of names and ids is not the same!"
        return
    #build the first part of the library
    header = "library " + util.name2Lib(insertFile.replace("_insert.j", "")) + "Constants\n"
    header = header.replace("_", "")
    header += "globals\n"
    #now for each name, create a constant integer
    for x in range(0, len(names)):
        header += "\tconstant integer " + util.name2Var(names[x]) + " = " + str(x) + "\n"
    header += "endglobals\nendlibrary"
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(path, 'w')
    print>>w, header
    w.close()

def writeTable(constantsFiles = [], tableFile = "npc_unit_id_table_header.j", tableName = "npcUnitIdTable"):
    tableFile = util.find(tableFile, util.root)
    w = open(tableFile, 'r')
    t = w.read()
    w.close()
    tableStatements = ""
    for constantsFile in constantsFiles:
        names = util.getConstantsFileVars(constantsFile)
        for name in names:
            cell = "[" + name + "]"
            tableStatements += "\tset " + tableName + cell + " = " + name.replace("_ID", "") + "\n"
    t = t.replace("//insert", tableStatements)
    w = open(tableFile.replace("_header.j", "") + "_insert.j", 'w')
    print>>w, t
    w.close()
            
        
    

def constantsStr(constantsDir, constantsFile, cwd, keywords = [], suffix = "_STR"):
    fileNames = util.getFileNames(constantsDir, cwd, keywords)
    varNames = [util.getFileName.findall(x)[0] for x in fileNames]
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(path, 'w')
    header = "library " + constantsDir.title() + "StringConstants\n"
    header = header.replace("_", "")
    header += "globals\n"
    for x in range (0, len(fileNames)):
        u = open(fileNames[x], 'r')
        value = getObjectName.findall(u.read())[0]
        u.close()
        header += "\tconstant string " + varNames[x].upper() + suffix + " = \"" + value + "\"\n"
    header += "endglobals\nendlibrary"
    print>>w, header
    w.close()
    
def constantsLib(constantsDir, constantsFile, cwd, keywords = []):
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    fileNames = util.getFileNames(constantsDir, cwd, keywords)
    requiresStr = " requires "
    p = re.compile(r', $')
    for fileName in fileNames:
        w = open(fileName, 'r')
        t = w.read()
        w.close()
        libName = getLibName.findall(t)
        if libName != []:
            requiresStr += libName[0] + ", "
    requiresStr = p.sub("", requiresStr)
    header = "library Constants" + requiresStr + "\nglobals\nendglobals\nendlibrary"
    w = open(path, 'w')
    print>>w, header
    w.close()
        
        
    
    



