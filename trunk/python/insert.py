#code for performing insertion

import os #need this to traverse through directories
import platform
import re
import util

getInsertFileDir = re.compile(r'(?<=/|\\)[^/\\]+')

def insert(insertFile, insertDir, newFile, cwd, header, keywords = [], sort = False):
    fileNames = util.getFileNames(insertDir, cwd, keywords)
    if sort:
        fileNames = sorted(fileNames, key=lambda filename: os.stat(filename).st_ctime)
    insertFile = util.find(insertFile, util.find(cwd, util.root))
    insertions = ""
    for fileName in fileNames:
        w = open(fileName, 'r')
        insertions += w.read() + "\n"
        w.close()
    w = open(insertFile, 'r')
    t = w.read().replace(header, insertions)
    insertFile = insertFile.replace(getInsertFileDir.findall(insertFile)[-1], '')
    w = open(os.path.join(insertFile, newFile), 'w')
    print>>w, t
    w.close()
