library PlayerFilters initializer init

globals
	constant integer TOTAL_PLAYERS = 10
    player array players[TOTAL_PLAYERS]
    boolexpr array playerRegionFilters[TOTAL_PLAYERS]
endglobals


//! textmacro RegionFilter takes PLAYER_ID
function p$PLAYER_ID$RegionFilter takes nothing returns boolean
    if GetOwningPlayer(GetFilterUnit()) == players[$PLAYER_ID$] then
        return true
    endif
    return false
endfunction
//! endtextmacro

//! runtextmacro RegionFilter("0")
//! runtextmacro RegionFilter("1")
//! runtextmacro RegionFilter("2")
//! runtextmacro RegionFilter("3")
//! runtextmacro RegionFilter("4")
//! runtextmacro RegionFilter("5")
//! runtextmacro RegionFilter("6")
//! runtextmacro RegionFilter("7")
//! runtextmacro RegionFilter("8")
//! runtextmacro RegionFilter("9")

private function init takes nothing returns nothing
    local integer i = 0
    loop
        exitwhen i == TOTAL_PLAYERS 
        set players[i] = Player(i)
        set i = i + 1
    endloop
    set playerRegionFilters[0] = Filter(function p0RegionFilter)
    set playerRegionFilters[1] = Filter(function p1RegionFilter)
    set playerRegionFilters[2] = Filter(function p2RegionFilter)
    set playerRegionFilters[3] = Filter(function p3RegionFilter)
    set playerRegionFilters[4] = Filter(function p4RegionFilter)
    set playerRegionFilters[5] = Filter(function p5RegionFilter)
    set playerRegionFilters[6] = Filter(function p6RegionFilter)
    set playerRegionFilters[7] = Filter(function p7RegionFilter)
    set playerRegionFilters[8] = Filter(function p8RegionFilter)
    set playerRegionFilters[9] = Filter(function p9RegionFilter)
endfunction

endlibrary