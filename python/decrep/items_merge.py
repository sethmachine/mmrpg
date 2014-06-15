#script for merging item scripts with the item ability script
import os
import re

GET_CODE = re.compile(r'\t//\[\[[\S\s]+//\]\]')

PATH_TO_ITEM_ABIL = "C:\\Users\\Seth\\mmrpg\\code\\lua\\objects\\abilities\\item_abils\\passive.j"

ITEMS_DIR = "C:\\Users\\Seth\\mmrpg\\code\\lua\\objects\\items\\monster_items\\equipment\\basic\\"

PATH_TO_SCRIPT = "C:\\Users\\Seth\\mmrpg\\scripts\\monster_items.j"

ENDER = r'//! endexternalblock'


def merge(baseFile = PATH_TO_ITEM_ABIL, parasiteDir = ITEMS_DIR, scriptFile = PATH_TO_SCRIPT):
    w = open(baseFile, 'r')
    t = w.read()
    w.close()
    t = t.replace(ENDER, "")
    w = open(scriptFile, 'w')
    print>>w, t
    for fileName in os.listdir(parasiteDir):
        r = open(parasiteDir + fileName, 'r')
        print>>w, GET_CODE.findall(r.read())[0]
        r.close()
    print>>w, ENDER
    w.close()
        

merge()


