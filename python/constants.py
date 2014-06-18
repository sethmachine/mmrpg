#code for generating constants
#bases each constant as an integer value
#with the name of the file in capitals
#appended with some suffix, e.g. QUEST or STORY.

import os
import platform
import re
import util

CONSTANTS_DIR = util.find("constants", util.root)

def constants(constantsDir, constantsFile, cwd, keywords = []):
    fileNames = util.getFileNames(constantsDir, cwd, keywords)
    varNames = [util.getFileName.findall(x)[0] for x in fileNames]
    w = open(os.path.join(CONSTANTS_DIR, constantsFile), 'w')
    header = "library " + constantsDir.title() + "Constants\n"
    header += "globals\n"
    i = 0
    for var in varNames:
        header += "\tconstant integer " + var.upper() + " = " + str(i) + "\n"
        i += 1
    header += "endglobals\nendlibrary"
    print>>w, header
    w.close()
    
    
    



