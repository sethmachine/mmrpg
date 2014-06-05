scope CreepDeath initializer init

globals
endglobals

private function main takes nothing returns boolean
    local player p = GetOwningPlayer(GetKillingUnit())
    local integer pid = GetPlayerId(p)
    local Monster creep = getCreepFromCreepRegionTable(GetDyingUnit())
    if IsUnitType(creep.u, UNIT_TYPE_HERO) then
        //call exp system on it
        //call item drop system on it
        //call recruit system on it
        call recruitExec(p, pid, creep)
    endif
    set p = null
    return false
endfunction



private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterPlayerUnitEvent(t, BOT_ENEMY, EVENT_PLAYER_UNIT_DEATH, null)
    call TriggerAddCondition(t, Condition(function main))
    set t = null
endfunction

endscope