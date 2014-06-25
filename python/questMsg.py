#code for generating constants
#bases each constant as an integer value
#with the name of the file in capitals
#appended with some suffix, e.g. QUEST or STORY.

import os
import platform
import re
import util

getMsg = re.compile('(?<=setDescription\()[^\)]+')

def questMsg(questDir, cwd, keywords = ["msg"]):
    fileNames = util.getFileNames(questDir, cwd, keywords)
    for fileName in fileNames:
        textFile = fileName.replace(".j", "")
        textFile += "_msg.txt"
        w = open(fileName, 'r')
        t = w.read()
        t = getMsg.sub("", t)
        w.close()
        w = open(textFile, 'r')
        msg = w.read()
        w.close()
        msg = msg.replace("\n", "")
        msg = msg.replace("\\l", "\n")
        t = t.replace("setDescription()", 'setDescription("' + msg.encode("string-escape") + '")', 1)
        w = open(fileName, 'w')
        print>>w, t
        w.close()
        
            
        
        
        
        



