/*library ShowQuestPath initializer init requires Colors

globals
    private constant integer SHOW_QUEST_PATH = 'qpth'
	private real PING_DURATION = 5.0
endglobals

private function main takes nothing returns boolean
	local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
	local PlayerData pd = playerDatum[pid]
	local integer i = 0
	local Quest q
	local Goal g
	local location loc
	if GetSpellAbilityId() == SHOW_QUEST_PATH then
		loop
			exitwhen i == TOTAL_QUESTS
			set q = pd.quests[i]
			if q != 0 then
				if q.isActive then
					set g = q.goals[q.stage]
					set loc = g.goalLoc
					if loc != null then
						if GetLocalPlayer() == p then
							call PingMinimap(GetLocationX(loc), GetLocationY(loc), PING_DURATION)
						endif
					endif
				endif
			endif
			set i = i + 1
		endloop
	endif
	set p = null
	set loc = null
	return false
endfunction
		
private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(t, Condition(function main))
endfunction
endlibrary*/