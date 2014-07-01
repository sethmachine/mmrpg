library LocConstants initializer init requires NPCLoc

globals
	private timer t
	location GREATBARK_LOC
	location FARM_LOC
	location FERRY_TO_FARM_LOC
	location FERRY_TO_GREATBARK_LOC
	location KALKA_LOC
	location KALKA_EXIT_LOC
	location CAZBAR_LOC
	location CAZBAR_EXIT_LOC
endglobals

private function main takes nothing returns nothing
	set GREATBARK_LOC = Location(-12826.9, 12474.9)
	set FARM_LOC = Location(-7715.8, 12245.1)
	set FERRY_TO_FARM_LOC = getNPCLoc(FERRY_TO_FARM_ID)
	set FERRY_TO_GREATBARK_LOC = getNPCLoc(FERRY_TO_GREATBARK_ID)
	set KALKA_LOC = getNPCLoc(KALKA_ID)
	set KALKA_EXIT_LOC = getNPCLoc(KALKA_EXIT_ID)
	set CAZBAR_LOC = getNPCLoc(CAZBAR_ID)
	set CAZBAR_EXIT_LOC = getNPCLoc(CAZBAR_EXIT_ID)
	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.25, false, function main)
endfunction

endlibrary