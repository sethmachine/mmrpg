library LocConstants initializer init requires NPCLoc

globals
	private timer t
	location GREATBARK_LOC
	location FARM_LOC
	location FERRY_TO_FARM_LOC
	location FERRY_TO_GREATBARK_LOC
//globals
endglobals

private function main takes nothing returns nothing
	set GREATBARK_LOC = Location(-12826.9, 12474.9)
	set FARM_LOC = Location(-7715.8, 12245.1)
	set FERRY_TO_FARM_LOC = getNPCLoc(FERRY_TO_FARM_ID)
	set FERRY_TO_GREATBARK_LOC = getNPCLoc(FERRY_TO_GREATBARK_ID)
//insert
	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.25, false, function main)
endfunction

endlibrary