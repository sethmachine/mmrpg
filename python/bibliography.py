import os
import re
import util

root = util.find("Imports", "C:\\")

getExtension = re.compile(r'(?<=\.).+$')

getReadmeName = re.compile(r'\A[a-z0-9 \._]+', re.IGNORECASE)

getReadmeAuthor = re.compile(r'(?<=by )[a-z0-9 \._]+', re.IGNORECASE)

EXTENSIONS = ["txt"]

def getBibNamesArr(l = [], cwd = root, extensions = EXTENSIONS):
    for fileName in os.listdir(cwd):
        path = os.path.join(cwd, fileName)
        if os.path.isfile(path):
            fileExt = getExtension.findall(path)[0]
            if fileExt in extensions:
                l.append(path)
        else:
            getBibNamesArr(l, path, extensions)

def getBibNames(cwd = root, extensions = EXTENSIONS):
    l = []
    getBibNamesArr(l, cwd, extensions)
    return l


def writeBib(bibFile = "bibliography\\bib.txt", cwd = root, extensions = EXTENSIONS):
    readmes = getBibNames(cwd, extensions)
    u = open(os.path.join(util.root, bibFile), 'w')
    for readme in readmes:
        w = open(readme, 'r')
        t = w.read()
        w.close()
        name = getReadmeName.findall(t)
        author = getReadmeAuthor.findall(t)
        if name != [] and author != []:
            print>>u, name[0] + " by " + author[0] + "\n"
    u.close()

def bibTuple(cwd = root, extensions = EXTENSIONS):
    readmes = getBibNames(cwd, extensions)
    l = []
    for readme in readmes:
        w = open(readme, 'r')
        t = w.read()
        w.close()
        name = getReadmeName.findall(t)
        author = getReadmeAuthor.findall(t)
        if name != [] and author != []:
            l.append((name[0], author[0]))
    return l
    
        
    


            
