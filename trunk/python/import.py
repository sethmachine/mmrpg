#code for generating an import script
#an import script is a .j file consiting of many lines
#each line begins with //! import "path/to/some_script.j"

import os #need this to traverse through directories
import platform
import re

if platform.system() == 'Windows':
    root = "C:\\"
elif platform.system() == 'Darwin':
    root = "/Users/"


IMPORT_HEADER = "//! import "

#keywords in files we do not import directly to map
getKeywords = re.compile(r'merge|header|insert|import', re.IGNORECASE)

def find(name, path):
    for root, dirs, files in os.walk(path):
        if name in files or name in dirs:
            return os.path.join(root, name)

cwd = find("mmrpg", root)

SCRIPTS_DIR = find("scripts", cwd)

def getLinesArr(importDir, lines = []):
    for fileName in os.listdir(find(importDir, cwd)):
        filePath = find(fileName, cwd)
        if os.path.isfile(filePath) and getKeywords.findall(filePath) == []:
            #lines += IMPORT_HEADER + '"' + filePath + '"\n'
            lines.append(IMPORT_HEADER + '"' + filePath + '"')
        elif getKeywords.findall(filePath) == []:
            getLinesArr(fileName, lines)

def getLines(importDir):
    l = []
    getLinesArr(importDir, l)
    lines = ""
    for x in l:
        lines += x + "\n"
    return lines

def writeImport(importDir, fileName):
    lines = getLines(importDir)
    w = open(os.path.join(SCRIPTS_DIR, fileName), 'w')
    print>>w, lines
    w.close()

    


        
        
