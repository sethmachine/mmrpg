library NPCUnitIdTable initializer init requires Constants
globals
	private timer t
	Table npcUnitIdTable
endglobals

private function main takes nothing returns nothing
	set npcUnitIdTable = Table.create()
	set npcUnitIdTable[ISAIAH_ID] = ISAIAH
	set npcUnitIdTable[MONSTER_BREEDER_ID] = MONSTER_BREEDER
	set npcUnitIdTable[PRIEST_ID] = PRIEST
	set npcUnitIdTable[INN_ID] = INN
	set npcUnitIdTable[MONSTER_FARMER_ID] = MONSTER_FARMER
	set npcUnitIdTable[MONSTER_LIBRARIAN_ID] = MONSTER_LIBRARIAN
	set npcUnitIdTable[ROYAL_CHAPLAIN_ID] = ROYAL_CHAPLAIN
	set npcUnitIdTable[ITEM_VAULT_ID] = ITEM_VAULT
	set npcUnitIdTable[TOMBSTONE_ID] = TOMBSTONE
	set npcUnitIdTable[ALFONZO_ID] = ALFONZO
	set npcUnitIdTable[SAGE_ATHOS_ID] = SAGE_ATHOS
	set npcUnitIdTable[HUNGRY_BANDIT_ID] = HUNGRY_BANDIT
	set npcUnitIdTable[AGON_SICK_MAN_ID] = AGON_SICK_MAN
	set npcUnitIdTable[ALFONZO2_ID] = ALFONZO2
	set npcUnitIdTable[THE_KING_ID] = THE_KING
	set npcUnitIdTable[OLD_OAK_ID] = OLD_OAK
	set npcUnitIdTable[ABU_DHABI_ID] = ABU_DHABI
	set npcUnitIdTable[JAFFAR_ID] = JAFFAR
	set npcUnitIdTable[FERRY_TO_FARM_ID] = FERRY_TO_FARM
	set npcUnitIdTable[FERRY_TO_GREATBARK_ID] = FERRY_TO_GREATBARK
	set npcUnitIdTable[MAGIC_DOOR_SHRINE_ID] = MAGIC_DOOR_SHRINE
	set npcUnitIdTable[CASTLE_CAZBAR_ID] = CASTLE_CAZBAR
	set npcUnitIdTable[CASTLE_CAZBAR_EXIT_ID] = CASTLE_CAZBAR_EXIT
	set npcUnitIdTable[CAZBAR_ID] = CAZBAR
	set npcUnitIdTable[CAZBAR_EXIT_ID] = CAZBAR_EXIT
	set npcUnitIdTable[CAZBAR_WELL_ID] = CAZBAR_WELL
	set npcUnitIdTable[CAZBAR_WELL_EXIT_ID] = CAZBAR_WELL_EXIT
	set npcUnitIdTable[DESERT_TEMPLE_ID] = DESERT_TEMPLE
	set npcUnitIdTable[DESERT_TEMPLE_EXIT_ID] = DESERT_TEMPLE_EXIT
	set npcUnitIdTable[KALKA_ID] = KALKA
	set npcUnitIdTable[KALKA_EXIT_ID] = KALKA_EXIT
	set npcUnitIdTable[KALKA_SEWERS_ID] = KALKA_SEWERS
	set npcUnitIdTable[KALKA_SEWERS_EXIT_ID] = KALKA_SEWERS_EXIT
	set npcUnitIdTable[MIRAGE_LAKE_ID] = MIRAGE_LAKE
	set npcUnitIdTable[MIRAGE_LAKE_EXIT_ID] = MIRAGE_LAKE_EXIT

	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.10, false, function main)
endfunction
endlibrary




