library PlayerDataTable initializer init requires PlayerDataStruct, Colors

globals
    constant integer TOTAL_PLAYERS2 = 10 //the most human players possible in any game
    PlayerData array playerDatum
endglobals

private function init takes nothing returns nothing
    local integer i = 0
    local PlayerData pd
    loop
        exitwhen i == TOTAL_PLAYERS2
        set pd = PlayerData.create(i)
        set playerDatum[i] = pd
        set i = i + 1
    endloop
endfunction

endlibrary