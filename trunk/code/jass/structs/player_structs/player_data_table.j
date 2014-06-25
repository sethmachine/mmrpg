library PlayerDataTable initializer init requires PlayerDataStruct, Colors

globals
    PlayerData array playerDatum
endglobals

private function init takes nothing returns nothing
    local integer i = 0
    local PlayerData pd
    loop
        exitwhen i == TOTAL_PLAYERS
        set pd = PlayerData.create(i)
        set playerDatum[i] = pd
        set i = i + 1
    endloop
endfunction

endlibrary