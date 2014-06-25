scope LevelUp initializer init

globals
	constant string LEVEL_UP_MSG = YELLOW + "LEVEL UP:|r "
endglobals

private function main takes nothing returns boolean
	local unit u = GetTriggerUnit()
	local player p = GetOwningPlayer(u)
	local integer pid = GetPlayerId(p)
	local PlayerData pd
	local Monster m
	local integer currLvl
	local integer prevLvl
	if pid < TOTAL_PLAYERS then
		set pd = playerDatum[pid]
		if u != pd.pc.u then
			set m = pd.party.getMonsterByUnit(u)
			set currLvl = GetHeroLevel(u)
			set prevLvl = m.heroLvl
			call m.levelUp(currLvl - prevLvl)
			set m.heroLvl = currLvl
			call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, LEVEL_UP_MSG + GetHeroProperName(u) + " is now level " + I2S(currLvl) + "!")
		endif
	endif
	set u = null
	set p = null	
	return false
endfunction



private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
	call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_HERO_LEVEL)
	call TriggerAddCondition(t, Condition(function main))
    set t = null
endfunction

endscope