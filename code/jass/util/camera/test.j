library Test2 initializer init

globals
endglobals

private function main takes nothing returns boolean
	local Monster m
	local integer pid = GetPlayerId(GetTriggerPlayer())
	local MonsterGroup farm = playerDatum[pid].farm
    local unit creep = CreateUnitAtLoc(BOT_ALLY, DUNE_FLYER, FARM_LOC, 0)
    call SetHeroLevel(creep, 2, true)
    set m = Monster.create(creep, pid)
    call m.levelUp(2)
    call playerDatum[pid].farm.addMonster(m)
	return false
endfunction

private function init takes nothing returns nothing
    local trigger t
    local integer i = 0 //counter for looping through players
    loop
        exitwhen i == TOTAL_PLAYERS
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t, Player(i), "-level", false)
		call TriggerAddCondition(t, Condition(function main))
		set i = i + 1
	endloop
endfunction

endlibrary