library RewardTable initializer init

globals
    Reward array rewardTable
    private timer t
endglobals

private function fillTable takes nothing returns nothing
    local integer i = 0
    local Reward r
	    //********************************
    // Flowers for Al-Jernan Reward 
    //********************************
    set r = Reward.create()
    call r.setUnknownReward()
    set rewardTable[i] = r
    set i = i + 1
    //********************************
    //***** Tutorial Reward **********
    //********************************
    set r = Reward.create()
    call r.setKeyReward(AGON)
    set rewardTable[i] = r
    set i = i + 1

    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary

