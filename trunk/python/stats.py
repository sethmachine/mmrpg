#simulates monster stat growth for a given level.


import re
import os
import util
import random

root = util.find("abstract_monster_merge", util.root)

getMin = re.compile(r'(?<=Min\()[^\)]+')

getMax = re.compile(r'(?<=Max\()[^\)]+')


DEF = 0
INT = 1
STR = 2
ATT = 3
AGI = 4
HP = 5
MANA = 6
SP = 7

def re2Arr(arr):
    s = arr[0]
    s = s.replace(" ", "")
    return s.split(",")

def simulate(arrMin, arrMax, lvl = 10):
    l = []
    for x in range(0, 8):
        i = 0
        for y in range(0, lvl):
            i += random.randint(int(arrMin[x]), int(arrMax[x]))
        l.append(i)
    l = [str(x) for x in l]
    l[DEF] = "DEF: " + l[DEF]
    l[INT] = "INT: " + l[INT]
    l[STR] = "STR: " + l[STR]
    l[ATT] = "ATT: " + l[ATT]
    l[HP] = "HP: " + l[HP]
    l[MANA] = "MANA: " + l[MANA]
    l[SP] = "SP: " + l[SP]
    return l
        
def calc(monster = "slime", lvl = 10):
    path = util.find(monster + ".j", root)
    w = open(path, 'r')
    t = w.read()
    w.close()
    attrMin = re2Arr(getMin.findall(t))
    attrMax = re2Arr(getMax.findall(t))
    return simulate(attrMin, attrMax, lvl)
