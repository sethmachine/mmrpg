#code for generating an import script
#an import script is a .j file consiting of many lines
#each line begins with //! import "path/to/some_script.j"

import os #need this to traverse through directories
import platform
import re
import util

IMPORT_HEADER = "//! import "

SCRIPTS_DIR = util.find("scripts", util.root)

def writeImport(importDir, cwd, fileName, keywords = []):
    fileNames = util.getFileNames(importDir, cwd, keywords)
    w = open(os.path.join(SCRIPTS_DIR, fileName), 'w')
    for fileName in fileNames:
        print>>w, IMPORT_HEADER + '"' + fileName + '"'
    w.close()

    


        
        
