import os
import platform
import re
import util
import bibliography as bib

getMsg = re.compile(r'(?<=SetDescription\(q, )[^\)]+')
getCredit = re.compile(r'call QuestItemSetDescription\(QuestCreateItem\(q\),.+', re.DOTALL)

def insertMsg(f9Dir, cwd, keywords = ["msg"]):
    fileNames = util.getFileNames(f9Dir, cwd, keywords)
    for fileName in fileNames:
        #get the msg file
        msgFile = fileName.replace(".j", "")
        msgFile += "_msg.txt"
        #read in the contents of the quest file
        #and clean out any previous messages
        w = open(fileName, 'r')
        t = w.read()
        t = getMsg.sub("", t)
        w.close()
        #open the message file up
        w = open(msgFile, 'r')
        msg = w.read()
        w.close()
        #clean up its newlines
        #and add our own, notated as \l
        msg = msg.replace("\n", "")
        msg = msg.replace("\l", "\n")
        #create our new quest file
        t = t.replace("SetDescription(q, )", 'SetDescription(q, "' + msg.encode("string-escape") + '")', 1)
        #t = getMsg.sub(msg, t)
        #open it up and replace its contents with the new msg
        w = open(fileName, 'w')
        print>>w, t
        w.close()


def addCredits(creditsFile):
    path = util.find(creditsFile, util.root)
    w = open(path, 'r')
    t = w.read()
    w.close()
    t = getCredit.sub("", t)
    header = "\tcall QuestItemSetDescription(QuestCreateItem(q), "
    bibTuple = bib.bibTuple()
    for pair in bibTuple:
        newHeader = header
        newHeader += '"' + pair[1] + " (" + pair[0] + ')")\n'
        t += newHeader
    w = open(path, 'w')
    print>>w, t
    w.close()
        
        
        
        
        
        
    
