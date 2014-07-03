#generates the warp init file

import os
import re
import util

getIsExit = re.compile(r'exit', re.IGNORECASE)

special = ["Ferry to Farm", "Ferry to Greatbark", "Magic Door Shrine"]

def genWarpInit(readfile = "warps_insert.j", headerfile = "warp_init_header.j",  keyword = "//insert", cwd = "lua"):
    cwd = util.find(cwd, util.root)
    writefile = util.find(headerfile.replace("_header", "_insert"), util.root)
    headerfile = util.find(headerfile, util.root)
    names = util.getInsertFileData(readfile)[0]
    insertStr = ""
    for nameData in names:
        data = nameData.split("|")
        name = data[0]
        exitName = name + " exit"
        isActive = "true"
        if len(data) > 1:
            isActive = data[1]
        if name not in special and getIsExit.findall(name) == []:
            insertStr += "\t\tset w = Warp.create(\"" + exitName + " to " + name + "\", " + util.name2Var(name) + "_LOC)\n"
            insertStr += "\t\tset playerDatum[i].warps[" + util.name2Var(exitName) + "] = w\n"
            insertStr += "\t\tset w = Warp.create(\"" + name + " to " + exitName + "\", " + util.name2Var(exitName) + "_LOC)\n"
            insertStr += "\t\tset playerDatum[i].warps[" + util.name2Var(name) + "] = w\n"
            if isActive == "false":
                    insertStr += "\t\tset w.isActive = false\n"
    w = open(headerfile, 'r')
    t = w.read()
    w.close()
    t = t.replace("//insert", insertStr)
    w = open(writefile, 'w')
    print>>w, t
    w.close()

def genWarpLocs(readfile = "warps_insert.j", headerfile = "locations_header.j",  keyword = "//insert", cwd = "lua"):
    cwd = util.find(cwd, util.root)
    writefile = util.find(headerfile.replace("_header", "_insert"), util.root)
    headerfile = util.find(headerfile, util.root)
    names = util.getInsertFileData(readfile)[0]
    globalsStr = ""
    insertStr = ""
    for nameData in names:
        data = nameData.split("|")
        name = data[0]
        locName = name + " loc"
        idName = name + " id"
        if name not in special:
            globalsStr += "\tlocation " + util.name2Var(locName) + "\n"
            insertStr += "\tset " + util.name2Var(locName) + " = getNPCLoc(" +  util.name2Var(idName) + ")\n"
    w = open(headerfile, 'r')
    t = w.read()
    w.close()
    t = t.replace("//globals", globalsStr)
    t = t.replace("//insert", insertStr)
    w = open(writefile, 'w')
    print>>w, t
    w.close()
    
    
    
    
    
