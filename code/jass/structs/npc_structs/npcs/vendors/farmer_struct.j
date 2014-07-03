library FarmerStruct requires PlayerDataTable

globals
    constant string FARMER_HEADER = "|cffff8000Monster Keeper|r:" //the name of the character
    constant string FARMER_MSG = "\nPicking up or dropping off?"
    constant integer RELEASE_DIALOG = 1
    constant integer RELEASE_YES_BTTN = 1
    constant integer RELEASE_NO_BTTN = 2
    constant string RELEASE_YES_BTTN_MSG = "Yes, release this monster."
    constant string RELEASE_NO_BTTN_MSG = "No, don't release it!"
    constant integer TAKE_BTTN = 1
    constant integer DROPOFF_BTTN = 2
    constant integer SWAP_BTTN = 3
    constant integer RELEASE_BTTN = 4
    constant string TAKE_BTTN_MSG = "Pick up a monster"
    constant string MDIALOG_TAKE_MSG = "Which monster will you be taking?"
    constant string DROPOFF_BTTN_MSG = "Drop off a monster"
    constant string MDIALOG_DROPOFF_MSG = "Which monster will you be dropping off?"
    constant string SWAP_BTTN_MSG = "Swap monsters"
    constant string MDIALOG_SWAP_MSG = "Which monster will you swap from your party?"
    constant string RELEASE_BTTN_MSG = "Release a monster"
    constant string MDIALOG_RELEASE_MSG = "Which monster will be released?\nOnce it's released into the wild,\n it's gone forever."
endglobals



private function releaseMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //search the farm for the to be released monster
    local Monster target
    local MonsterGroup farm
    local NPC npc = playerDatum[pid].npcs[MONSTER_FARMER]
    if b == npc.twoD[RELEASE_DIALOG * MAX_BTTNS].button[RELEASE_YES_BTTN] then
        set farm = playerDatum[pid].farm
        loop
            exitwhen i == MAX_FARM_SIZE
                if farm.monsters[i].toRelease == true then //remove it
                    set target = farm.monsters[i]
                    call DisplayTimedTextToPlayer(p, 0, 0, 7, "|cffff8000Monster Keeper|r: Say goodbye to your " + target.toString() + "; it's been released back into the wild.")
                    call farm.removeMonster(target)
                    call RemoveUnit(target.u)
                    set target.u = null
                    call target.destroy()
                endif
            set i = i + 1
        endloop
    elseif b == npc.twoD[RELEASE_DIALOG * MAX_BTTNS].button[RELEASE_NO_BTTN] or b == npc.twoD[RELEASE_DIALOG * MAX_BTTNS].button[QUIT_BTTN] then
        loop
            exitwhen i == MAX_FARM_SIZE
            if farm.monsters[i].toRelease == true then //set the flag back to false, since we aren't releasing it yet
                set farm.monsters[i].toRelease = false
            endif
            set i = i + 1
        endloop
    endif
    set b = null
    set p = null
    return false
endfunction


//a player effectively gets rid of one his monsters at the farm
private function releaseMon takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local MonsterGroup farm
    local Monster target
    local NPC npc = playerDatum[pid].npcs[MONSTER_FARMER]
    set farm = playerDatum[pid].farm
    loop
        exitwhen i == MAX_FARM_SIZE
        if b == farm.bttns[i] then
            set target = farm.monsters[i]
            set target.toRelease = true
            call DialogSetMessage(npc.oneD.dialog[RELEASE_DIALOG], "Release your " + target.toString() + "?\nOnce you do, it's gone forever")
            call DialogDisplay(p, npc.oneD.dialog[RELEASE_DIALOG], true) //the release is handled by PlayerData itself   
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    call DestroyTrigger(playerDatum[pid].npcTrig)
    return false
endfunction

//swap a monster from the party and the farm
private function swapMon2 takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local integer j = 0 //a second loop counter for going through the player's party
    local MonsterGroup party = playerDatum[pid].party
    local MonsterGroup farm = playerDatum[pid].farm
    local Monster temp
    loop
        exitwhen i == MAX_FARM_SIZE
        if b == farm.bttns[i] then
            loop
                exitwhen j == MAX_PARTY_SIZE
                if party.monsters[j].toSwap == true then
                    set party.monsters[j].toSwap = false
                    set temp = party.monsters[j]
                    set party.monsters[j] = farm.monsters[i]
                    set farm.monsters[i] = temp
                    call SetUnitOwner(party.monsters[j].u, p, true)
                    call SetUnitOwner(farm.monsters[i].u, BOT_ALLY, false)
                    call SetUnitPositionLoc(party.monsters[j].u, GetUnitLoc(playerDatum[pid].pc.u))
                    call UnitRemoveAbility(party.monsters[j].u, ABIL_WANDER)
                    call SetUnitPositionLoc(farm.monsters[i].u, GetUnitLoc(playerDatum[pid].pc.u))
                    call UnitAddAbility(farm.monsters[i].u, ABIL_WANDER)
                    call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " Swapped out " + farm.monsters[i].toString() + " for " + party.monsters[j].toString())
                endif
                set j = j + 1
            endloop
        endif
        set i = i + 1
    endloop
    loop
        exitwhen i == 0
        if party.monsters[i].toSwap == true then
            set party.monsters[i].toSwap = false
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    call DestroyTrigger(playerDatum[pid].npcTrig)
    return false
endfunction


//swap a monster from the party and the farm
private function swapMon takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local trigger t //a second trigger
    local trigger d //a reference to the old NPC trig
    local MonsterGroup party = playerDatum[pid].party
    local Monster target
    set d = playerDatum[pid].npcTrig
    loop
        exitwhen i == MAX_PARTY_SIZE
        if b == party.bttns[i] then
            set target = party.monsters[i]
            set target.toSwap = true //set the monster's swap flag to true, we're swapping it!
            call playerDatum[pid].farm.displayGroup(true, "Which monster will be taking?")
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, playerDatum[pid].farm.mDialog)
            call TriggerAddCondition(t, Condition(function swapMon2))
            set playerDatum[pid].npcTrig = t
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    set t = null
    call DestroyTrigger(d)
    set d = null
    return false
endfunction


private function takeMon takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local MonsterGroup party = playerDatum[pid].party
    local MonsterGroup farm = playerDatum[pid].farm
    local Monster target
    loop
        exitwhen i == MAX_FARM_SIZE
        if b == farm.bttns[i] then
            set target = farm.monsters[i]
            if farm.moveMonster(party, target) then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " Your " + target.toString() + " is happy to join you.  It really missed you!")
                call SetUnitOwner(target.u, p, true) //get back the player's monster
                call SetUnitPositionLoc(target.u, GetUnitLoc(playerDatum[pid].pc.u))
                call UnitRemoveAbility(target.u, ABIL_WANDER)
            else //somehow we failed when we shouldn't have
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, "Error: Could not move " + target.toString() + " when we should be able to.")
            endif   
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    call DestroyTrigger(playerDatum[pid].npcTrig)
    return false
endfunction

private function dropoffMon takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local MonsterGroup party = playerDatum[pid].party
    local MonsterGroup farm = playerDatum[pid].farm
    local Monster target
    loop
        exitwhen i == MAX_PARTY_SIZE
        if b == party.bttns[i] then
            set target = party.monsters[i]
            if party.moveMonster(farm, target) then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " Your " + target.toString() + " is now at the farm.")
                call SetUnitOwner(target.u, BOT_ALLY, false) //change the ownership for now
                call UnitAddAbility(target.u, ABIL_WANDER)
                call SetUnitPositionLoc(target.u, GetUnitLoc(playerDatum[pid].pc.u))
            else //somehow we failed when we shouldn't have
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, "Error: Could not move " + target.toString() + " when we should be able to.")
            endif   
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    call DestroyTrigger(playerDatum[pid].npcTrig)
    return false
endfunction

private function introMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local MonsterGroup party = playerDatum[pid].party
    local MonsterGroup farm = playerDatum[pid].farm
    local trigger t
    local NPC npc = playerDatum[pid].npcs[MONSTER_FARMER]
    if b == npc.twoD[INTRO * MAX_BTTNS].button[TAKE_BTTN] then //first check to see if the player has enough party room
        if party.size == MAX_PARTY_SIZE then //party is full, end the dialog
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " Your party is already full with " + I2S(party.size) + " monsters in it.  Drop off a monster first.")
        else //the player's party isn't full, so we need to list his farm monsters
            call farm.displayGroup(true, MDIALOG_TAKE_MSG)
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, farm.mDialog)
            call TriggerAddCondition(t, Condition(function takeMon))
            set playerDatum[pid].npcTrig = t
        endif
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[DROPOFF_BTTN] then
        if party.size == MIN_PARTY_SIZE then //party cannot go below one monsters
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " You can't go around without any monsters!  Take another monster first.")
        elseif farm.size == MAX_FARM_SIZE then //the farm is full, player cannot store more monsters there
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " The farm is full with " + I2S(farm.size) + " monsters.  Switch monsters or release one.")
        else //the player's party has at least 2 monsters, so we need to list his party monsters
            call party.displayGroup(true, MDIALOG_DROPOFF_MSG)
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, party.mDialog)
            call TriggerAddCondition(t, Condition(function dropoffMon))
            set playerDatum[pid].npcTrig = t
        endif
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[SWAP_BTTN] then
        if farm.size == 0 then //the farm is empty, no swapping allowed!
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, FARMER_HEADER + " You can't swap monsters--the farm is empty!")
        else //else we begin the swapping dialogs...
            call party.displayGroup(true, MDIALOG_SWAP_MSG)
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, party.mDialog)
            call TriggerAddCondition(t, Condition(function swapMon))
            set playerDatum[pid].npcTrig = t
        endif
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[RELEASE_BTTN] then
        call farm.displayGroup(true, MDIALOG_RELEASE_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, farm.mDialog)
        call TriggerAddCondition(t, Condition(function releaseMon))
        set playerDatum[pid].npcTrig = t
    endif
    set b = null
    set t = null
    return false
endfunction

struct Farmer extends NPC    
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        local trigger t = CreateTrigger()
        //INTRO dialog
        set oneD.string[INTRO] = FARMER_HEADER + FARMER_MSG
        call addBttnToDialog(INTRO, TAKE_BTTN_MSG)
        call addBttnToDialog(INTRO, DROPOFF_BTTN_MSG)
        call addBttnToDialog(INTRO, SWAP_BTTN_MSG)
        call addBttnToDialog(INTRO, RELEASE_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[INTRO])
        call TriggerAddCondition(t, Condition(function introMain))
        //RELEASE dialog
        set t = CreateTrigger()
        set oneD.dialog[RELEASE_DIALOG] = DialogCreate()
        call addBttnToDialog(RELEASE_DIALOG, RELEASE_YES_BTTN_MSG)
        call addBttnToDialog(RELEASE_DIALOG, RELEASE_NO_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[RELEASE_DIALOG])
        call TriggerAddCondition(t, Condition(function releaseMain))
        set t = null
        return this
    endmethod
endstruct
endlibrary