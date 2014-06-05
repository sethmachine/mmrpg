library WarpInit initializer init requires WarpStruct, Constants

globals
    private timer t
    unit FERRY_TO_FARM
    unit FERRY_TO_MAIN
    unit KALKA_CITY
    unit KALKA_AGON
endglobals

private function main takes nothing returns nothing
    local integer i = 0
    local Warp w
    set FERRY_TO_FARM = gg_unit_w006_0008
    set FERRY_TO_MAIN = gg_unit_w007_0007
    set KALKA_CITY = gg_unit_w005_0010
    set KALKA_AGON = gg_unit_w001_0017
    loop
        exitwhen i == 1

        set w = Warp.create("Ferry to Farm", GetUnitLoc(FERRY_TO_MAIN))
        set playerDatum[i].warps[GetUnitPointValue(FERRY_TO_FARM) - WARP_CONS] = w
        
        set w = Warp.create("Ferry to GreatBark", GetUnitLoc(FERRY_TO_FARM))
        set playerDatum[i].warps[GetUnitPointValue(FERRY_TO_MAIN) - WARP_CONS] = w
        
        set w = Warp.create("Kalka to City", GetUnitLoc(KALKA_CITY))
        set playerDatum[i].warps[GetUnitPointValue(KALKA_AGON) - WARP_CONS] = w
        
        set w = Warp.create("Kalka to Agon", GetUnitLoc(KALKA_AGON))
        set playerDatum[i].warps[GetUnitPointValue(KALKA_CITY) - WARP_CONS] = w
        
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