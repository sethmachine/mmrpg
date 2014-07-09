scope TeamAttack initializer init

globals
	constant string TEAM_ATTACK_MSG = RED + "Error:|r You can't attack allies!"
endglobals

private function main takes nothing returns boolean
	local unit u = GetAttacker()
	local player p = GetOwningPlayer(u)
	if IsUnitAlly(GetTriggerUnit(), p) and GetPlayerId(GetOwningPlayer(GetTriggerUnit())) <= 10 then
		call IssueImmediateOrder(u, "stop")
		call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, TEAM_ATTACK_MSG)
		if p == GetLocalPlayer() then
			call StartSound(gg_snd_Error)
		endif
	endif	
    return false
endfunction



private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ATTACKED)
	call TriggerAddCondition(t, Condition(function main))
    set t = null
endfunction

endscope