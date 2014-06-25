scope PlayerDeath initializer init

globals
	constant string PLAYER_DEATH_MSG = RED + "WIPE OUT:|r" + " Your party has been wiped out!"
	private constant real WAIT = 5.0
	private Table timerTable
endglobals

private function afterWait takes nothing returns nothing
	local timer t = GetExpiredTimer()
	local unit u = timerTable.unit[GetHandleId(t)]
	local player p = GetOwningPlayer(u)
	local integer pid = GetPlayerId(p)
	local PlayerData pd
	local unit pc
	if pid < TOTAL_PLAYERS then
		set pd = playerDatum[pid]
		set pc = pd.pc.u
		if u == pc then //make sure it is the player hero
			call pd.keys.keys[HOME].warp(pid) //return to GreatBark
			call ReviveHeroLoc(pc, GetUnitLoc(pc), true)
		endif
	endif
	call DestroyTimer(t)
	set t = null
	set u = null
	set p = null
	set pc = null
endfunction
	
private function main takes nothing returns boolean
	local timer t
	local unit u = GetDyingUnit()
	local player p = GetOwningPlayer(u)
	local integer pid = GetPlayerId(p)
	local unit pc
	if pid < TOTAL_PLAYERS then
		set pc = playerDatum[pid].pc.u
		if u == pc then
			set t = CreateTimer()
			set timerTable.unit[GetHandleId(t)] = u
			call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, PLAYER_DEATH_MSG)
			if p == GetLocalPlayer() then
				call StartSound(gg_snd_Defeat_2_u)
			endif
			call TimerStart(t, WAIT, false, function afterWait)
		endif
	endif
	set u = null
	set p = null
	set t = null
    return false
endfunction



private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
	set timerTable = Table.create()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_DEATH)
	call TriggerAddCondition(t, Condition(function main))
    set t = null
endfunction

endscope