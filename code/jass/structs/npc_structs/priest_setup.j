library PriestFunctions initializer init

globals
    constant integer REVIVE_COST_FACTOR = 25 //the player pays gold equal to 100x the monster's level
    constant string PRIEST_HEADER = "|cff00ffffPriest|r:" //the name of the character
    constant string PRIEST_MSG = "\nHow may the Gods be of service?"
    constant string REVIVE_BTTN_MSG = "Revive a monster"
    constant string MDIALOG_MSG = "Which monster shall I restore to life?"
    constant integer REVIVE_BTTN = 1 //the revive bttn comes right before the quit button
endglobals

private function reviveMon takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local integer gold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
    local integer cost = 0
    local MonsterGroup m = playerDatum[pid].party
    loop
        exitwhen i == MAX_PARTY_SIZE
        if b == m.bttns[i] then
            if m.monsters[i].isDead() then
                set cost = (m.monsters[i].heroLvl * REVIVE_COST_FACTOR)
                if gold >= cost then
                    call ReviveHeroLoc(m.monsters[i].u, GetUnitLoc(playerDatum[pid].pc.u), true)
                    call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, gold - cost)
                    if GetLocalPlayer() == p then
                        call StartSound(gg_snd_Revive_2_u)
                    endif
                    call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR,  PRIEST_HEADER + " Let light restore your " + m.monsters[i].toString() + "!")
                else
                    call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, PRIEST_HEADER + " You need at least " + I2S(cost) + " gold to restore your " + m.monsters[i].toString() + ".")
                endif
            else
                call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, PRIEST_HEADER + " Your " + m.monsters[i].toString() + " is well and alive already.")
            endif
        endif
        set i = i + 1
    endloop
    call m.destroy()
    call DestroyTrigger(playerDatum[pid].npcTrig)
    set b = null
    return false
endfunction

private function introMain takes nothing returns boolean
    local button b = GetClickedButton()
    local integer pid = GetPlayerId(GetTriggerPlayer())
    local MonsterGroup m
    local trigger t
    local NPC npc = playerDatum[pid].npcs[PRIEST]
    if b == npc.twoD[INTRO * MAX_BTTNS].button[REVIVE_BTTN] then
        set m = playerDatum[pid].party
        call m.displayGroup(true, MDIALOG_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, m.mDialog)
        call TriggerAddCondition(t, Condition(function reviveMon))
        set playerDatum[pid].npcTrig = t
    endif
    set b = null
    set t = null
    //call m.destroy()
    return false
endfunction
endlibrary