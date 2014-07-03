library InnStruct requires PlayerDataTable

globals
    constant string INN_HEADER = YELLOW + "Inn|r:" //the name of the character
    constant string INN_MSG = "\nLooking to rest up?"
    constant integer STAY_BTTN = 1 //used to revive all dead party monsters + heal the team and hero
    constant string STAY_BTTN_MSG = "Stay at the inn."
	constant integer INN_BASE_COST = 10
endglobals


private function introMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0
	local integer gold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
    local MonsterGroup party
    local Monster m
    local trigger t
    local PlayerData playerData = playerDatum[pid]
    local unit u = playerData.pc.u
    local NPC npc = playerData.npcs[INN]
	local integer cost = GetHeroLevel(u) * INN_BASE_COST
    if b == npc.twoD[INTRO * MAX_BTTNS].button[STAY_BTTN] then
		if gold >= cost then
			call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR,  INN_HEADER + " Enjoy your stay!")
			call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, gold - cost)
			set party = playerData.party
			loop
				exitwhen i == MAX_PARTY_SIZE
				set m = party.monsters[i]
				if m != 0 and not m.isDead() then
					call SetUnitLifePercentBJ(m.u, 100.0)
					call SetUnitManaPercentBJ(m.u, 100.0)
				endif
				set i = i + 1
			endloop
			call SetUnitLifePercentBJ(u, 100.0)
			call SetUnitManaPercentBJ(u, 100.0)
			if p == GetLocalPlayer() then
				call StartSound(gg_snd_RestorationPotion)
			endif
		else
			call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, INN_HEADER + " You need at least " + I2S(cost) + " gold to spend the night.")
		endif
	endif
    set b = null
    set t = null
    set u = null
    return false
endfunction

struct Inn extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        local trigger t = CreateTrigger()
        set oneD.string[INTRO] = INN_HEADER + INN_MSG
        call addBttnToDialog(INTRO, STAY_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[INTRO])
        call TriggerAddCondition(t, Condition(function introMain))
        set t = null
        return this
    endmethod
endstruct

endlibrary