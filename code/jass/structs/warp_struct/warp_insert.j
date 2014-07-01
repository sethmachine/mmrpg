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
		// Cazbar Interior to Agon
		//*********************
        set w = Warp.create("Cazbar to Agon", CAZBAR_LOC)
        set playerDatum[i].warps[CAZBAR_EXIT] = w
        //*********************
		// Cazbar to Cazbar Interior
		//*********************
        set w = Warp.create("Cazbar to Cazbar Interior", CAZBAR_EXIT_LOC)
        set playerDatum[i].warps[CAZBAR] = w
        //*********************
		// Kalka Interior to Agon
		//*********************
        set w = Warp.create("Kalka to Agon", KALKA_LOC)
        set playerDatum[i].warps[KALKA_EXIT] = w
        //*********************
		// Kalka to Kalka Interior
		//*********************
		set w = Warp.create("Kalka to City", KALKA_EXIT_LOC)
        set playerDatum[i].warps[KALKA] = w
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
