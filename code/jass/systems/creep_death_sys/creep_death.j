scope CreepDeath initializer init

globals
endglobals

private function main takes nothing returns boolean
    local player p = GetOwningPlayer(GetKillingUnit())
    local integer pid = GetPlayerId(p)
	local unit u = GetDyingUnit()
    local Monster creep
	set creep = getCreepFromCreepRegionTable(u)
	if creep == 0 then
		set creep = playerDatum[pid].eventMonsters.getMonsterByUnit(u)
	endif
    if IsUnitType(creep.u, UNIT_TYPE_HERO) then
        //call item drop system on it
		//exp system
		call expExec(creep)
		//recruit system
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