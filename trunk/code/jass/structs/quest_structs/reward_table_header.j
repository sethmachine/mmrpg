library RewardTable initializer init

globals
    Reward array rewardTable[JASS_MAX_ARRAY_SIZE]
    private timer t
endglobals

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction


private function fillTable takes nothing returns nothing
    local integer i = 0
    local Reward r
    call DestroyTimer(t)
    set t = null
endfunction
endlibrary
