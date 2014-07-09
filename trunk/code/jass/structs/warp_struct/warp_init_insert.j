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
		set w = Warp.create("Castle Cazbar exit to Castle Cazbar", CASTLE_CAZBAR_LOC)
		set playerDatum[i].warps[CASTLE_CAZBAR_EXIT] = w
		set w = Warp.create("Castle Cazbar to Castle Cazbar exit", CASTLE_CAZBAR_EXIT_LOC)
		set playerDatum[i].warps[CASTLE_CAZBAR] = w
		set w.isActive = false
		set w = Warp.create("Cazbar exit to Cazbar", CAZBAR_LOC)
		set playerDatum[i].warps[CAZBAR_EXIT] = w
		set w = Warp.create("Cazbar to Cazbar exit", CAZBAR_EXIT_LOC)
		set playerDatum[i].warps[CAZBAR] = w
		set w = Warp.create("Cazbar Well exit to Cazbar Well", CAZBAR_WELL_LOC)
		set playerDatum[i].warps[CAZBAR_WELL_EXIT] = w
		set w = Warp.create("Cazbar Well to Cazbar Well exit", CAZBAR_WELL_EXIT_LOC)
		set playerDatum[i].warps[CAZBAR_WELL] = w
		set w.isActive = false
		set w = Warp.create("Desert Temple exit to Desert Temple", DESERT_TEMPLE_LOC)
		set playerDatum[i].warps[DESERT_TEMPLE_EXIT] = w
		set w = Warp.create("Desert Temple to Desert Temple exit", DESERT_TEMPLE_EXIT_LOC)
		set playerDatum[i].warps[DESERT_TEMPLE] = w
		set w = Warp.create("Kalka exit to Kalka", KALKA_LOC)
		set playerDatum[i].warps[KALKA_EXIT] = w
		set w = Warp.create("Kalka to Kalka exit", KALKA_EXIT_LOC)
		set playerDatum[i].warps[KALKA] = w
		set w = Warp.create("Kalka Sewers exit to Kalka Sewers", KALKA_SEWERS_LOC)
		set playerDatum[i].warps[KALKA_SEWERS_EXIT] = w
		set w = Warp.create("Kalka Sewers to Kalka Sewers exit", KALKA_SEWERS_EXIT_LOC)
		set playerDatum[i].warps[KALKA_SEWERS] = w
		set w.isActive = false
		set w = Warp.create("Mirage Lake exit to Mirage Lake", MIRAGE_LAKE_LOC)
		set playerDatum[i].warps[MIRAGE_LAKE_EXIT] = w
		set w = Warp.create("Mirage Lake to Mirage Lake exit", MIRAGE_LAKE_EXIT_LOC)
		set playerDatum[i].warps[MIRAGE_LAKE] = w
		set w = Warp.create("Sunchamber exit to Sunchamber", SUNCHAMBER_LOC)
		set playerDatum[i].warps[SUNCHAMBER_EXIT] = w
		set w = Warp.create("Sunchamber to Sunchamber exit", SUNCHAMBER_EXIT_LOC)
		set playerDatum[i].warps[SUNCHAMBER] = w

		set playerDatum[i].warps[KALKA].warpEvent = eventTable[RESET_WATER_TINT_E]
		set playerDatum[i].warps[KALKA_EXIT].warpEvent = eventTable[KALKA_LEAVE]
		set playerDatum[i].warps[SUNCHAMBER].warpEvent = eventTable[SUNCHAMBER_ENTER_E]
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

