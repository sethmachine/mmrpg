import re
import util
import os

KW = ["decrep", "merge", "header"]

getItemName = re.compile(r'(?<= unam = ")[a-z ]+', re.IGNORECASE)

getId = re.compile(r'(?<=itemId = \')[a-z0-9]+')

getTotal = re.compile(r'(?<= i total = )[0-9]+')

CONSTANTS_DIR = util.find("constants", util.root)





def itemConstants(itemFile, constantsFile, cwd, keywords = KW, suffix = ""):
    cwd = util.find(cwd, util.root)
    fileName = util.find(itemFile, cwd)
    path = os.path.join(CONSTANTS_DIR, constantsFile)
    w = open(fileName, 'r')
    t = w.read()
    w.close()
    libName = itemFile.replace("_insert.j", "")
    header = "library " + libName.title() + "Constants\n"
    header = header.replace("_", "")
    header += "globals\n"
    itemId = getId.findall(t)[0]
    varNames = [util.name2Var(x) for x in getItemName.findall(t)]
    totals = [int(x) for x in getTotal.findall(t)]
    if totals != []:
        for var in range(0, len(varNames)):
            for x in range(0, totals[var]):
                header += "\tconstant integer " + varNames[var] + "_" + str(x) + suffix + " = '" + itemId + "'\n"
                itemId = util.add(itemId)
    else:
        for var in range(0, len(varNames)):
            header += "\tconstant integer " + varNames[var] + suffix + " = '" + itemId + "'\n"
            itemId = util.add(itemId)
    header += "endglobals\nendlibrary"
    w = open(path, 'w')
    print>>w, header
    w.close()
    
                
        
        
        
        
    
    
