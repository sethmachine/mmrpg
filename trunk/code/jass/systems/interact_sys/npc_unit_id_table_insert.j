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
	set npcUnitIdTable[THE_KING_ID] = THE_KING
	set npcUnitIdTable[OLD_OAK_ID] = OLD_OAK
	set npcUnitIdTable[ABU_DHABI_ID] = ABU_DHABI
	set npcUnitIdTable[JAFFAR_ID] = JAFFAR

	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.10, false, function main)
endfunction
endlibrary




