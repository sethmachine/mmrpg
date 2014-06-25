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
		// Kalka Interior to Agon
		//*********************
		set loc = Location(-9812.9, 5286.2)
        set w = Warp.create("Kalka to Agon", loc)
        set playerDatum[i].warps[KALKA_EXIT] = w
        //*********************
		// Kalka to Kalka Interior
		//*********************
		set loc = Location(13630.8, 12937.9)
		set w = Warp.create("Kalka to City", loc)
        set playerDatum[i].warps[KALKA] = w
        //*********************
		// Ferry to Farm
		//*********************
		set loc = Location(-8749.9, 12190.0)
		set w = Warp.create("Ferry to Farm", loc)
        set playerDatum[i].warps[FERRY_TO_FARM] = w
		set w.isActive = false
		
        //*********************
		// Ferry to GreatBark
		//*********************
		set loc = Location(-10134.0, 12158.4)
		set w = Warp.create("Ferry to GreatBark", loc)
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
