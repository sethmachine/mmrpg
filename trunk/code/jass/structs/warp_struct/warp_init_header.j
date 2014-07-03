library WarpInit initializer init requires WarpStruct, Constants

globals
    private timer t
endglobals

private function main takes nothing returns nothing
    local integer i = 0
	local location loc
    local Warp w
    loop
        exitwhen i == TOTAL_PLAYERS
        //*********************
		// Ferry to Farm
		//*********************
		set w = Warp.create("Ferry to Farm", FERRY_TO_GREATBARK_LOC)
        set playerDatum[i].warps[FERRY_TO_FARM] = w
		set w.isActive = false	
        //*********************
		// Ferry to GreatBark
		//*********************
		set w = Warp.create("Ferry to GreatBark", FERRY_TO_FARM_LOC)
        set playerDatum[i].warps[FERRY_TO_GREATBARK] = w
        //*********************
		// Automatically generated warps
		//*********************
//insert
		set playerDatum[i].warps[KALKA].warpEvent = eventTable[KALKA_ENTER]
		set playerDatum[i].warps[KALKA_EXIT].warpEvent = eventTable[KALKA_LEAVE]
        set i = i + 1        
    endloop
    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function main)
endfunction
        
endlibrary
