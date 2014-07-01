scope WarpStaff initializer init

globals
    constant integer WARP_STAFF_ABIL = 'sw00' //teleports player to GreatBark
endglobals

private function main takes nothing returns boolean
    local player p = GetOwningPlayer(GetTriggerUnit())
    local integer pid = GetPlayerId(p)
    local integer staffType = GetSpellAbilityId()
    if staffType == WARP_STAFF_ABIL then
		call playerDatum[pid].keys.keys[HOME].warp(pid)
    endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(t, Condition(function main))
endfunction

endscope