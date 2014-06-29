library NPCLoc requires Print
//returns the location of a unique NPC in the map
globals
	location npcLoc
endglobals

private function main takes nothing returns nothing
	//call KillUnit(GetEnumUnit())
	//call print("killed a unit")
	set npcLoc = GetUnitLoc(GetEnumUnit())
endfunction

function getNPCLoc takes integer npcId returns location
	local group g = CreateGroup()
	set g = GetUnitsOfTypeIdAll(npcId)
	//call GroupEnumUnitsOfType(g, npcStr, null) //enumerate the group
	call ForGroup(g, function main)
	call DestroyGroup(g)
	return npcLoc
endfunction

endlibrary