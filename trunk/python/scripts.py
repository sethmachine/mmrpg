#scripts to be executed before importing objects / jass code

import util
import imports as imp
import insert as ins
import constants as cns
import dialog as d



#constants scripts
#these create libraries where integer constants are made
#based on the file names

#story struct pre-processing
d.dialog("story_merge", "jass", ["msg"])

#creates library for monster constants--however, must be integer to rawcode!
cns.constants("monsters", "tables/monsters_constants.j", "lua", ["header", "insert"], "M")

#creates library for npc constants--integer to integer
cns.constants("npcs", "tables/npcs_constants.j", "lua", ["header", "insert"])

#creates library for quest constants--integer to integer
cns.constants("quests_merge", "tables/quests_constants.j", "jass", ["header", "insert"])

#creates library for reward constants--integer to integer
cns.constants("reward_merge", "tables/reward_constants.j", "reward_struct", ["header", "insert"], "", "_REWARD")

#generate constants library
cns.constantsLib("constants", "constants_library.j", "jass", ["library"])

#insert scripts
#creates lua/jass files that allow "global" values

#creates lua file for villagers
ins.insert("villagers_header.j", "villagers", "villagers_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for npcs
ins.insert("npcs_header.j", "npcs", "npcs_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for monsters
ins.insert("monsters_header.j", "monsters", "monsters_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for warps
ins.insert("warps_header.j", "warps", "warps_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for monster items
ins.insert("passive_header.j", "monster_equipment", "passive_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for quest items
ins.insert("fetchables_header.j", "quest_items", "fetchables_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#lua file for all terrain objects
ins.insert("terrain_header.j", "terrain", "terrain_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates the jass file for rewards
ins.insert("reward_header.j", "reward_merge", "reward_insert.j", "reward_struct", "//insert", ["quest"])

#creates the jass file for quests
ins.insert("quest_header.j", "quests_merge", "quest_insert.j", "jass", "//insert")

#creates the jass file for stories
ins.insert("story_header.j", "story_merge", "story_insert.j", "jass", "//insert", ["msg", "decrep", "insert", "header"])

imp.writeImport("jass", "jass", "jass.j", ["merge", "header", "decrep", "imports", "msg"])
imp.writeImport("lua", "lua", "lua.j", ["merge", "header", "decrep", "imports"])
imp.writeImport("imports", "imports", "imports.j", ["merge", "header", "decrep"])
