library CreepWanderAdd initializer init requires CreepRegionTable

globals
    constant integer WANDER_ADD_PERIOD = 60
endglobals

private function main takes nothing returns nothing
    //will need to filter out non-creep bot units
    local integer i = 0
    local integer j = 0
    local CreepRegion cr
    local MonsterGroup creeps
    local Monster creep
    loop
        exitwhen i == MAX_CREEP_REGIONS
        set cr = creepRegionTable[i]
        if cr != 0 then
            if cr.totalPlayers != 0 then
                set creeps = cr.creeps
                loop
                    exitwhen j == creeps.maxSize
                    if creeps.monsters[j] != 0 then
                        set creep = creeps.monsters[j]
                        if creep.isInCombat then
                            set creep.isInCombat = false
                            call UnitAddAbility(creep.u, ABIL_WANDER)
                        endif
                    endif
                    set j = j + 1
                endloop
            endif
        endif
        set i = i + 1
    endloop               
endfunction


private function init takes nothing returns nothing
    local timer t = CreateTimer()
    call TimerStart(t, WANDER_ADD_PERIOD, true, function main)
endfunction

endlibrary