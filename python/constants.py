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

def int2Rawcode(integer, rawId):
    if integer < 10:
        return  "'" + rawId + "00" + str(integer) + "'"
    elif integer >= 10 and integer < 100:
        return  "'" + rawId + "0" + str(integer) + "'"
    else:
        return  "'" + rawId + str(integer) + "'"
    



def constants(constantsDir, constantsFile, cwd, keywords = [], rawCode = "", suffix = ""):
    fileNames = util.getFileNames(constantsDir, cwd, keywords)
    varNames = [util.getFileName.findall(x)[0] for x in fileNames]
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(path, 'w')
    header = "library " + constantsDir.title() + "Constants\n"
    header = header.replace("_", "")
    header += "globals\n"
    i = 0
    for var in varNames:
        value = i
        if rawCode != "":
            value = int2Rawcode(value, rawCode)
        header += "\tconstant integer " + var.upper() + suffix + " = " + str(value) + "\n"
        i += 1
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
        
        
    
    



