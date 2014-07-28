library RewardTable initializer init

globals
    Reward array rewardTable
    private timer t
endglobals

private function fillTable takes nothing returns nothing
    local integer i = 0
    local Reward r
	//insert
    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary
