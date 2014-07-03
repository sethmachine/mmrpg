library NPCLoc requires Print
//returns the location of a unique NPC in the map
globals
	location npcLoc
	unit npcUnit
endglobals

private function main takes nothing returns nothing
	set npcLoc = GetUnitLoc(GetEnumUnit())
endfunction

private function main2 takes nothing returns nothing
	set npcUnit = GetEnumUnit()
endfunction

function getNPCLoc takes integer npcId returns location
	local group g = CreateGroup()
	set g = GetUnitsOfTypeIdAll(npcId)
	call ForGroup(g, function main)
	call DestroyGroup(g)
	return npcLoc
endfunction

function getNPCUnit takes integer npcId returns unit
	local group g = CreateGroup()
	set g = GetUnitsOfTypeIdAll(npcId)
	call ForGroup(g, function main2)
	call DestroyGroup(g)
	return npcUnit
endfunction

endlibrary