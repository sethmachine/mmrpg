#scripts to be executed before importing objects / jass code

import util
import imports as imp
import insert as ins
import constants as cns
import itemConstants as icns
import dialog as d
import questMsg as qm
import f9log as f9
import warpGen as wg



#constants scripts
#these create libraries where integer constants are made
#based on the file names

#story struct pre-processing
d.dialog("story_merge", "jass", ["msg"])

#quest description adding
qm.questMsg("quests_merge", "quest_struct", ["msg"])

#creates library for monster constants--however, must be integer to rawcode!
cns.constants("monsters", "tables/monsters_constants.j", "lua", ["header", "insert"], "M")

#creates library for npc names--for enumeration, string to string
#cns.constantsStr("npcs", "tables/npc_names_constants.j", "lua", ["header", "insert"])

#creates library for warp constants--integer to integer
#cns.constants("warps", "tables/warps_constants.j", "lua", ["header", "insert"])
#cns.constants("warps", "tables/warp_id_constants.j", "lua", ["header", "insert"], "w", "_ID", "Ids")

#creates library for quest constants--integer to integer
cns.constants("quests_merge", "tables/quests_constants.j", "quest_struct", ["header", "insert", "msg"])

#creates library for reward constants--integer to integer
cns.constants("reward_merge", "tables/reward_constants.j", "reward_struct", ["header", "insert"], "", "_REWARD")

#creates library for story constants--integer to integer
cns.constants("story_merge", "tables/story_constants.j", "jass", ["header", "insert", "msg"], "", "")

#creates library for story constants--integer to integer
cns.constants("events_merge", "tables/events_constants.j", "event_struct", ["header", "insert", "msg"], "", "")

#insert scripts
#creates lua/jass files that allow "global" values

#creates lua file for villagers
ins.insert("villagers_header.j", "villagers", "villagers_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for npcs
#ins.insert("npcs_header.j", "npcs", "npcs_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#replacement for npc calls
ins.insert("npc_units_header.j", "npc_units", "npc_units_insert.j", "npc_units", "//insert", ["decrep", "header", "insert"], True)
ins.insert("npc_heroes_header.j", "npc_heroes", "npc_heroes_insert.j", "npc_heroes", "//insert", ["decrep", "header", "insert"], True)

#creates lua file for monsters
ins.insert("monsters_header.j", "monsters", "monsters_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for warps
#ins.insert("warps_header.j", "warps", "warps_insert.j", "lua", "//insert", ["decrep", "header", "insert"])
ins.insert("warps_header.j", "warps_merge", "warps_insert.j", "warps", "//insert", ["decrep", "header", "insert"], True)

#creates lua file for monster items
ins.insert("passive_header.j", "monster_equipment", "passive_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#creates lua file for player consumables
ins.insert("consumables_header.j", "consumables_merge", "consumables_insert.j", "player_items", "//insert", ["decrep", "header", "insert"])

#creates lua file for quest items
ins.insert("fetchables_header.j", "fetchables_merge", "fetchables_insert.j", "lua", "//insert", ["decrep", "header", "insert"])

#lua file for all terrain objects
ins.insert("terrain_header.j", "terrain", "terrain_insert.j", "lua", "//insert", ["decrep", "header", "insert"], True)

#creates the jass file for rewards
ins.insert("reward_header.j", "reward_merge", "reward_insert.j", "reward_struct", "//insert", ["quest"])

#creates the jass file for quests
ins.insert("quest_header.j", "quests_merge", "quest_insert.j", "quest_struct", "//insert", ["decrep", "msg"])

#creates the jass file for stories
ins.insert("story_header.j", "story_merge", "story_insert.j", "jass", "//insert", ["msg", "decrep", "insert", "header"])

#creates the jass file for stories
ins.insert("event_header.j", "events_merge", "event_insert.j", "jass", "//insert", ["msg", "decrep", "insert", "header"])

#jass file for npcs
ins.insert("npc_init_header.j", "npc_merge", "npc_init_insert.j", "npc_struct", "//insert", ["msg", "decrep", "insert", "header"])

#creates jass file for abstract monster table
ins.insert("abstract_monster_header.j", "abstract_monster_merge", "abstract_monster_insert.j", "monster_struct", "//insert", ["msg", "decrep", "insert", "header"])

#creates the jass file for warps
#ins.insert("warp_header.j", "warp_merge", "warp_insert.j", "jass", "//insert", ["msg", "decrep", "insert", "header"])

#wrap up constants generation / library

#create item constants - passive items for monsters
icns.itemConstants("passive_insert.j", "tables/monster_item_constants.j", "items")

#create consumables constants - meats, potions, staves, etc.
icns.itemConstants("consumables_insert.j", "tables/consumables_constants.j", "items")

#create consumables constants - meats, potions, staves, etc.
icns.itemConstants("fetchables_insert.j", "tables/fetchables_constants.j", "items")

cns.rawCns("npc_units_insert.j", "tables/npc_unit_id_constants.j")
npcUnitCount = cns.intCns("npc_units_insert.j", "tables/npc_unit_constants.j")
cns.rawCns("npc_heroes_insert.j", "tables/npc_hero_id_constants.j")
cns.intCns("npc_heroes_insert.j", "tables/npc_hero_constants.j", "", npcUnitCount)
cns.rawCns("warps_insert.j", "tables/warp_id_constants.j")
cns.intCns("warps_insert.j", "tables/warp_constants.j")

cns.writeTable(["npc_unit_id_constants.j", "npc_hero_id_constants.j", "warp_id_constants.j"])

wg.genWarpInit()
wg.genWarpLocs()

#generate constants library
cns.constantsLib("constants", "constants_library.j", "jass", ["library", "header"])


#generate the help/optional quests
#insert the quest descriptions
f9.insertMsg("f9_merge", "help")
#build the credits
f9.addCredits("credits.j")
#finally, compile all the files into a single scope
ins.insert("f9_header.j", "f9_merge", "f9_insert.j", "jass", "//insert", ["msg"])


#finally, write the final import scripts for jass, lua, and imports
imp.writeImport("jass", "jass", "jass.j", ["merge", "header", "decrep", "imports", "msg"])
imp.writeImport("lua", "lua", "lua.j", ["merge", "header", "decrep", "imports"])
imp.writeImport("imports", "imports", "imports.j", ["merge", "header", "decrep"])
