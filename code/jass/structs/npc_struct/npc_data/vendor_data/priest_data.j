library PriestData requires PlayerDataTable, NPCStruct

globals
    constant integer REVIVE_COST_FACTOR = 25 //the player pays gold equal to 25x the monster's level
	constant string PRIEST_HEADER = CYAN + "Priest|r:"
    constant string PRIEST_INTRO_MSG = PRIEST_HEADER + "\nHow may the Gods be of service?"
	constant string PRIEST_PARTY_MSG = "Which monster shall I restore to life?" 
    constant string BTTN_REVIVE = WHITE + "Revive a monster. [ " + RED + "R|r" + WHITE + " ]"
	constant integer HOTKEY_REVIVE = 'R'
endglobals

function reviveMain takes nothing returns nothing
	local button b = GetClickedButton()
	local player p = GetTriggerPlayer()
	local integer pid = GetPlayerId(p)
	local integer i = 0
	local integer gold
	local integer cost
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local MonsterGroup party = playerDatum[pid].party
	local Monster m
	loop
		exitwhen i == MAX_PARTY_SIZE
		if b == d.getButtonInt(i) then
			set m = party.monsters[i]
			if m.isDead() then
				set cost = GetHeroLevel(m.u) * REVIVE_COST_FACTOR
				set gold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
                if gold >= cost then
                    call ReviveHeroLoc(m.u, GetUnitLoc(playerDatum[pid].pc.u), true)
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, gold - cost)
                    if GetLocalPlayer() == p then
                        call StartSound(gg_snd_Revive_2_u)
                    endif
                    call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION,  PRIEST_HEADER + " Let light restore your " + m.toString() + "!")
                else
                    call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, PRIEST_HEADER + " You need at least " + I2S(cost) + " gold to restore your " + m.toString() + ".")
                endif
            else
                call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, PRIEST_HEADER + " Your " + m.toString() + " is well and alive already.")
			endif
		endif
		set i = i + 1
	endloop
	if b == d.getButton(BTTN_QUIT) then
		call d.flush()
		set b = null
		set p = null
	endif
endfunction

function priestIntroMain takes nothing returns nothing
	local button b = GetClickedButton()
	local player p = GetTriggerPlayer()
	local integer pid = GetPlayerId(p)
	local integer i = 0
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local Dialog partyDialog
	if b == d.getButton(BTTN_REVIVE) then
		call print("clicked revive button")
		set partyDialog = playerDatum[pid].party.toDialog(PRIEST_PARTY_MSG)
		call partyDialog.append(BTTN_QUIT, HOTKEY_QUIT)
		loop
			exitwhen i == MAX_PARTY_SIZE
			call partyDialog.linkInt(i, partyDialog)
			set i = i + 1
		endloop
		call partyDialog.registerDialogEvent(function reviveMain)
		call partyDialog.show(pid, true)
	endif
	set p = null
	set b = null
endfunction
endlibrary