library BackpackStruct requires PlayerDataTable

globals
    constant string BACKPACK_HEADER = GOLD + "Backpack:|r" //the name of the character
    constant string BACKPACK_MSG = "Backpack"
    //MONSTERS submenu dialog constants
    private constant string MONSTERS_INFO_MSG = "Select a monster."
    private constant string ITEMS_INFO_MSG = "Do what with items?"
    private constant string KEYS_INFO_MSG = "Select a key to throw out."
    
    //ITEM submenu dialog constants
    private constant integer ITEM_DIALOG = 1
    private constant integer TAKE_BTTN = 1
    private constant integer REMOVE_BTTN = 2
    private constant string TAKE_BTTN_MSG = "Take an item."
    private constant string REMOVE_BTTN_MSG = "Throw out an item."
    private constant string IDIALOG_TAKE_MSG = "Take which item?"
    private constant string IDIALOG_REMOVE_MSG = "Throw out which item?"
    //REMOVE dialog constants
    private constant integer REMOVE_DIALOG = 2
    private constant integer REMOVE_YES_BTTN = 1
    private constant integer REMOVE_NO_BTTN = 2
    private constant string REMOVE_YES_BTTN_MSG = "Throw it out,"
    private constant string REMOVE_NO_BTTN_MSG = "No, don't throw it out."
    //REMOVE dialog constants
    private constant integer REMOVE_DIALOG2 = 3
    private constant integer REMOVE_YES_BTTN2 = 1
    private constant integer REMOVE_NO_BTTN2 = 2
    private constant string REMOVE_YES_BTTN_MSG2 = "Throw it out,"
    private constant string REMOVE_NO_BTTN_MSG2 = "No, don't throw it out."
    //INTRO dialog constants
    private constant integer MONSTERS_BTTN = 1
    private constant integer PC_BTTN = 2
    private constant integer ITEMS_BTTN = 3
    private constant integer KEYS_BTTN = 4
    private constant string MONSTERS_BTTN_MSG = "Party"
    private constant string PC_BTTN_MSG = "Player"
    private constant string ITEMS_BTTN_MSG = "Items"
    private constant string KEYS_BTTN_MSG = "Magic Keys"
endglobals


private function removeMain2 takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0
    local NPC npc = playerDatum[pid].npcs[Backpack.index]
    local MagicKeyGroup keys = playerDatum[pid].keys
    local MagicKey target
    if b == npc.twoD[REMOVE_DIALOG2 * MAX_BTTNS].button[REMOVE_YES_BTTN] then
        loop
            exitwhen i == MAX_KEYS
                if keys.keys[i].toRemove == true then //remove it
                    set target = keys.keys[i]
                    call DisplayTimedTextToPlayer(p, 0, 0, 7, BACKPACK_HEADER + " " + SILVER + target.toString() + " has been thrown out from your backpack.")
                    call keys.remove(target)
                    call target.destroy()
                endif
            set i = i + 1
        endloop
    elseif b == npc.twoD[REMOVE_DIALOG2 * MAX_BTTNS].button[REMOVE_NO_BTTN] or b == npc.twoD[REMOVE_DIALOG2 * MAX_BTTNS].button[QUIT_BTTN] then
        loop
            exitwhen i == MAX_KEYS
            if keys.keys[i].toRemove == true then //set the flag back to false, since we aren't releasing it yet
                set keys.keys[i].toRemove = false
            endif
            set i = i + 1
        endloop
    endif
    set b = null
    set p = null
    return false
endfunction


private function removeKey takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local NPC npc = playerDatum[pid].npcs[Backpack.index]
    local MagicKey target
    local MagicKeyGroup keys = playerDatum[pid].keys
    loop
        exitwhen i == MAX_KEYS
        if b == keys.bttns[i] then
            set target = keys.keys[i]
            if target.keyType == 0 then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r Quest keys cannot be removed!")
            else
                set target.toRemove = true
                call DialogSetMessage(npc.oneD.dialog[REMOVE_DIALOG2], "Remove " + target.toString() + "?\nOnce you do, it's gone forever")
                call DialogDisplay(p, npc.oneD.dialog[REMOVE_DIALOG2], true) //the release is handled by PlayerData itself
            endif
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    call DestroyTrigger(playerDatum[pid].npcTrig)
    return false
endfunction


private function removeMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //search the farm for the to be released monster
    local NPC npc = playerDatum[pid].npcs[Backpack.index]
    local ItemGroup backpack = playerDatum[pid].backpack
    local Item target
    if b == npc.twoD[REMOVE_DIALOG * MAX_BTTNS].button[REMOVE_YES_BTTN] then
        loop
            exitwhen i == MAX_BACKPACK_SIZE
                if backpack.items[i].toRemove == true then //remove it
                    set target = backpack.items[i]
                    call DisplayTimedTextToPlayer(p, 0, 0, 7, BANK_HEADER + " " + SILVER + target.toString() + " has been thrown out from your backpack.")
                    call backpack.remove(target)
                    call target.destroy()
                endif
            set i = i + 1
        endloop
    elseif b == npc.twoD[REMOVE_DIALOG * MAX_BTTNS].button[REMOVE_NO_BTTN] or b == npc.twoD[REMOVE_DIALOG * MAX_BTTNS].button[QUIT_BTTN] then
        loop
            exitwhen i == MAX_BACKPACK_SIZE
            if backpack.items[i].toRemove == true then //set the flag back to false, since we aren't releasing it yet
                set backpack.items[i].toRemove = false
            endif
            set i = i + 1
        endloop
    endif
    set b = null
    set p = null
    return false
endfunction


//a player effectively gets rid of one his monsters at the farm
private function removeItem takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local NPC npc = playerDatum[pid].npcs[Backpack.index]
    local Item target
    local ItemGroup backpack = playerDatum[pid].backpack
    loop
        exitwhen i == MAX_BACKPACK_SIZE
        if b == backpack.bttns[i] then
            set target = backpack.items[i]
            if target.isQuestItem then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r Quest items cannot be removed!")
            else
                set target.toRemove = true
                call DialogSetMessage(npc.oneD.dialog[REMOVE_DIALOG], "Remove " + target.toString() + "?\nOnce you do, it's gone forever")
                call DialogDisplay(p, npc.oneD.dialog[REMOVE_DIALOG], true) //the release is handled by PlayerData itself
            endif
        endif
        set i = i + 1
    endloop
    set b = null
    set p = null
    call DestroyTrigger(playerDatum[pid].npcTrig)
    return false
endfunction

private function takeItem takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local ItemGroup backpack = playerDatum[pid].backpack
    local Item target
    loop
        exitwhen i == MAX_BACKPACK_SIZE
        if b == backpack.bttns[i] then
            set target = backpack.items[i]
            if playerDatum[pid].backpack.remove(target) then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BACKPACK_HEADER + " Took " + target.toString() + ".")
                call target.moveToLoc(GetUnitLoc(playerDatum[pid].pc.u))
                call target.destroy()
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

private function itemMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local NPC npc = playerDatum[pid].npcs[Backpack.index]
    local trigger t
    local ItemGroup backpack = playerDatum[pid].backpack
    if b == npc.twoD[ITEM_DIALOG * MAX_BTTNS].button[TAKE_BTTN] then
        call backpack.displayGroup(IDIALOG_TAKE_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, backpack.iDialog)
        call TriggerAddCondition(t, Condition(function takeItem))
        set playerDatum[pid].npcTrig = t
    elseif b == npc.twoD[ITEM_DIALOG * MAX_BTTNS].button[REMOVE_BTTN] then
        call backpack.displayGroup(IDIALOG_REMOVE_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, backpack.iDialog)
        call TriggerAddCondition(t, Condition(function removeItem))
        set playerDatum[pid].npcTrig = t
    endif
    set b = null
    set p = null
    set t = null
    return false
endfunction


private function infoMon takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local MonsterGroup party = playerDatum[pid].party
    local Monster target
    loop
        exitwhen i == MAX_PARTY_SIZE
        if b == party.bttns[i] then
            set target = party.monsters[i]
            call target.toDialog()
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
    local NPC npc = playerDatum[pid].npcs[Backpack.index]
    local ItemGroup backpack = playerDatum[pid].backpack
    local ItemGroup bank = playerDatum[pid].bank
    local trigger t
    if b == npc.twoD[INTRO * MAX_BTTNS].button[MONSTERS_BTTN] then
        call playerDatum[pid].party.displayGroup(true, MONSTERS_INFO_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, playerDatum[pid].party.mDialog)
        call TriggerAddCondition(t, Condition(function infoMon))
        set playerDatum[pid].npcTrig = t
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[PC_BTTN] then
        call playerDatum[pid].pc.toDialog()
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[ITEMS_BTTN] then
        call DialogDisplay(p, npc.oneD.dialog[ITEM_DIALOG], true)
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[KEYS_BTTN] then
        set t = CreateTrigger()
        call playerDatum[pid].keys.displayGroup(KEYS_INFO_MSG)
        call TriggerRegisterDialogEvent(t, playerDatum[pid].keys.kDialog)
        call TriggerAddCondition(t, Condition(function removeKey))
        set playerDatum[pid].npcTrig = t
    endif
    set b = null
    set t = null
    return false
endfunction

struct Backpack extends NPC
    static integer index = 0
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        local trigger t = CreateTrigger()
        //INTRO dialog
        set oneD.string[INTRO] = BACKPACK_MSG
        call addBttnToDialog(INTRO, MONSTERS_BTTN_MSG)
        call addBttnToDialog(INTRO, PC_BTTN_MSG)
        call addBttnToDialog(INTRO, ITEMS_BTTN_MSG)
        call addBttnToDialog(INTRO, KEYS_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[INTRO])
        call TriggerAddCondition(t, Condition(function introMain))
        //ITEM dialog
        set t = CreateTrigger()
        set oneD.dialog[ITEM_DIALOG] = DialogCreate()
        set oneD.string[ITEM_DIALOG] = ITEMS_INFO_MSG
        call addBttnToDialog(ITEM_DIALOG, TAKE_BTTN_MSG)
        call addBttnToDialog(ITEM_DIALOG, REMOVE_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[ITEM_DIALOG])
        call TriggerAddCondition(t, Condition(function itemMain))
        //REMOVE dialog (for items)
        set t = CreateTrigger()
        set oneD.dialog[REMOVE_DIALOG] = DialogCreate()
        call addBttnToDialog(REMOVE_DIALOG, REMOVE_YES_BTTN_MSG)
        call addBttnToDialog(REMOVE_DIALOG, REMOVE_NO_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[REMOVE_DIALOG])
        call TriggerAddCondition(t, Condition(function removeMain))
        //REMOVE dialog (for keys)
        set t = CreateTrigger()
        set oneD.dialog[REMOVE_DIALOG2] = DialogCreate()
        call addBttnToDialog(REMOVE_DIALOG2, REMOVE_YES_BTTN_MSG2)
        call addBttnToDialog(REMOVE_DIALOG2, REMOVE_NO_BTTN_MSG2)
        call TriggerRegisterDialogEvent(t, oneD.dialog[REMOVE_DIALOG2])
        call TriggerAddCondition(t, Condition(function removeMain2))
        set t = null
        return this
    endmethod
endstruct
endlibrary