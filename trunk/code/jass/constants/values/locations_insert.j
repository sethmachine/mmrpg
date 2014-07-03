library LocConstants initializer init requires NPCLoc

globals
	private timer t
	location GREATBARK_LOC
	location FARM_LOC
	location FERRY_TO_FARM_LOC
	location FERRY_TO_GREATBARK_LOC
	location CASTLE_CAZBAR_LOC
	location CASTLE_CAZBAR_EXIT_LOC
	location CAZBAR_LOC
	location CAZBAR_EXIT_LOC
	location CAZBAR_WELL_LOC
	location CAZBAR_WELL_EXIT_LOC
	location DESERT_TEMPLE_LOC
	location DESERT_TEMPLE_EXIT_LOC
	location KALKA_LOC
	location KALKA_EXIT_LOC
	location KALKA_SEWERS_LOC
	location KALKA_SEWERS_EXIT_LOC
	location MIRAGE_LAKE_LOC
	location MIRAGE_LAKE_EXIT_LOC

endglobals

private function main takes nothing returns nothing
	set GREATBARK_LOC = Location(-12826.9, 12474.9)
	set FARM_LOC = Location(-7715.8, 12245.1)
	set FERRY_TO_FARM_LOC = getNPCLoc(FERRY_TO_FARM_ID)
	set FERRY_TO_GREATBARK_LOC = getNPCLoc(FERRY_TO_GREATBARK_ID)
	set CASTLE_CAZBAR_LOC = getNPCLoc(CASTLE_CAZBAR_ID)
	set CASTLE_CAZBAR_EXIT_LOC = getNPCLoc(CASTLE_CAZBAR_EXIT_ID)
	set CAZBAR_LOC = getNPCLoc(CAZBAR_ID)
	set CAZBAR_EXIT_LOC = getNPCLoc(CAZBAR_EXIT_ID)
	set CAZBAR_WELL_LOC = getNPCLoc(CAZBAR_WELL_ID)
	set CAZBAR_WELL_EXIT_LOC = getNPCLoc(CAZBAR_WELL_EXIT_ID)
	set DESERT_TEMPLE_LOC = getNPCLoc(DESERT_TEMPLE_ID)
	set DESERT_TEMPLE_EXIT_LOC = getNPCLoc(DESERT_TEMPLE_EXIT_ID)
	set KALKA_LOC = getNPCLoc(KALKA_ID)
	set KALKA_EXIT_LOC = getNPCLoc(KALKA_EXIT_ID)
	set KALKA_SEWERS_LOC = getNPCLoc(KALKA_SEWERS_ID)
	set KALKA_SEWERS_EXIT_LOC = getNPCLoc(KALKA_SEWERS_EXIT_ID)
	set MIRAGE_LAKE_LOC = getNPCLoc(MIRAGE_LAKE_ID)
	set MIRAGE_LAKE_EXIT_LOC = getNPCLoc(MIRAGE_LAKE_EXIT_ID)

	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.25, false, function main)
endfunction

endlibrary
