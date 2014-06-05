library CreepWanderRemove initializer init requires CreepRegionTable

globals
endglobals

private function main takes nothing returns boolean
    //will need to filter out non-creep bot units
    local Monster creep = getCreepFromCreepRegionTable(GetTriggerUnit())
    if creep != 0 then
        set creep.isInCombat = true
        call UnitRemoveAbility(creep.u, ABIL_WANDER)
    endif
    return false
endfunction


private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterPlayerUnitEvent(t, BOT_ENEMY, EVENT_PLAYER_UNIT_ATTACKED, null)
    call TriggerAddCondition(t, Condition(function main))
    set t = null
endfunction

endlibrary