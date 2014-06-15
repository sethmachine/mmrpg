#script for merging item scripts with the item ability script
import os
import re

GET_NAME = re.compile(r'(?<=name)[A-Z\_]+')

GET_CODE = re.compile(r'\t//\[\[[\S\s]+//\]\]')

PATH_TO_ITEM_ABIL = "C:\\Users\\Seth\\mmrpg\\code\\lua\\objects\\abilities\\item_abils\\passive.j"

ITEMS_DIR = "C:\\Users\\Seth\\mmrpg\\code\\lua\\objects\\items\\monster_items\\equipment\\basic\\"

PATH_TO_SCRIPT = "C:\\Users\\Seth\\mmrpg\\scripts\\monster_items.j"

ENDER = r'//! endexternalblock'

#will need to write in constants in newFile, corresponding to the struct's index
QUEST_ENDER = "\tendloop\nendfunction\nendlibrary"

#will need to call addLines() function on each story message
#make this call on the newFile, after merging
STORY_ENDER = "\tcall DestroyTimer(t)\n\tset t = null\n\tcall questInit()\nendfunction\nendlibrary"

#will need to write in constants in newFile, corresponding to the struct's index
REWARD_ENDER = "\tcall DestroyTimer(t)\n\tset t = null\nendfunction\nendlibrary"



def merge(mergeFile, mergeDir, newFile, ender):
	w = open(mergeFile, 'r')
	t = w.read()
	w.close()
	t = t.replace(ender, "")
	w = open(newFile, 'w')
	print>>w, t
	for fileName in os.listdir(mergeDir):
		r = open(mergeDir + fileName, 'r')
		print>>w, r.read()
		r.close()
	print>>w, ender
	w.close()



