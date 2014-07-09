library NPCLoc initializer init requires Print, Table
//returns the location of a unique NPC in the map
globals
	private Table handleTable
	location npcLoc
	unit npcUnit
	integer playerCount //how many players in a given rect
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
	set npcLoc = null
	call ForGroup(g, function main)
	call DestroyGroup(g)
	return npcLoc
endfunction

function getNPCUnit takes integer npcId returns unit
	local group g = CreateGroup()
	set g = GetUnitsOfTypeIdAll(npcId)
	set npcUnit = null
	call ForGroup(g, function main2)
	call DestroyGroup(g)
	return npcUnit
endfunction

function getPlayerCountInRect takes rect r returns integer
	local integer i = 0
	local integer count = 0
	loop
		exitwhen i == TOTAL_PLAYERS
		if isUnitInRect(playerDatum[i].pc.u, r) then
			set count = count + 1
		endif
		set i = i + 1
	endloop
	return count
endfunction
	

private function init takes nothing returns nothing
	set handleTable = Table.create()
endfunction

endlibrary