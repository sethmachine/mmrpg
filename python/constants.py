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
    if rawCode == "g" or rawCode == "N":
        i = 1
    for var in varNames:
        value = i
        if rawCode != "":
            value = int2Rawcode(value, rawCode)
        header += "\tconstant integer " + var.upper() + suffix + " = " + str(value) + "\n"
        i += 1
    header += "endglobals\nendlibrary"
    print>>w, header
    w.close()


"""def constantsNPC(npcsFile = "npcs_insert.j", constantsFile, suffix = ""):
    w = open(util.find(npcsFile, util.root))
    t = w.read()
    w.close()
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(path, 'w')
    header = "library " + "NPCIdsConstants\n"
    header = header.replace("_", "")
    header += "globals\n"
    i = 0
    j = 0
    names = getObjectName.findall(t)
    idTypes = getIdType.findall(t)
    for x in range(0, len(names)):
        if name == 
    for var in varNames:
        value = i
        if rawCode != "":
            value = int2Rawcode(value, rawCode)
        header += "\tconstant integer " + var.upper() + suffix + " = " + str(value) + "\n"
        i += 1
    header += "endglobals\nendlibrary"
    print>>w, header
    w.close()"""
    
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
        
        
    
    



