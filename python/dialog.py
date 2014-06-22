#code for generating constants
#bases each constant as an integer value
#with the name of the file in capitals
#appended with some suffix, e.g. QUEST or STORY.

import os
import platform
import re
import util
import lines

getMsg = re.compile('(?<=StoryMsg\()[^\)]+')

def process(textFile):
    w = open(textFile, 'r')
    msgs = w.read().split("//end")
    w.close()
    for x in range(0, len(msgs)):
        msgs[x] = msgs[x].replace("\n", " ")
        msgs[x] = msgs[x].replace("  ", " ")
        msgs[x] = lines.addLines(msgs[x])
    return msgs
    
def dialog(dialogDir, cwd, keywords = ["msg"]):
    fileNames = util.getFileNames(dialogDir, cwd, keywords)
    for fileName in fileNames:
        textFile = fileName.replace(".j", "")
        textFile += "_msg.txt"
        msgs = process(textFile)
        w = open(fileName, 'r')
        t = w.read()
        t = getMsg.sub("", t)
        w.close()
        for msg in msgs:
            t = t.replace("StoryMsg()", 'StoryMsg("' + msg.encode("string-escape") + '")', 1)
        w = open(fileName, 'w')
        print>>w, t
        w.close()
        
            
        
        
        
        



