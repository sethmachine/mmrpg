#code for performing insertion

import os #need this to traverse through directories
import platform
import re

if platform.system() == 'Windows':
    root = "C:\\"
elif platform.system() == 'Darwin':
    root = "/Users/"

getInsertFileDir = re.compile(r'(?<=/|\\)[^/\\]+')

def find(name, path):
    for root, dirs, files in os.walk(path):
        if name in files or name in dirs:
            return os.path.join(root, name)

def insert(insertFile, insertDir, header, newFile):
    """
    Inserts the contents of each file in the insertDir directory
    in between the header and ender in the insertFile.  The new
    text is then written to newFile.  Does not modify the contents of
    the insertFile or the files in insertDir.

    @Args:
        insertFile: the file where data is inserted
        insertDir: the directory where each file's content is inserted
        header: the delimiter marking where insertions should begin
        newFile: the file containing the insertions with insertFile
    @Returns:
        nothing
    """
    insertFile = find(insertFile, root)
    insertDir = find(insertDir, root)
    insertions = ""
    for fileName in os.listdir(insertDir):
        w = open(os.path.join(insertDir, fileName), 'r')
        t = w.read()
        w.close()
        insertions += t
    w = open(insertFile, 'r')
    t = w.read()
    w.close()
    t = t.replace(header, insertions)
    insertFile = insertFile.replace(getInsertFileDir.findall(insertFile)[-1])
    w = open(os.path.join(insertFile, newFile), 'w')
    print>>w, t
    w.close()
    
        
        
