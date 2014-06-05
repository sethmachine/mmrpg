library BankStruct requires PlayerDataTable

globals
    constant string BANK_HEADER = GOLD + "Vault:|r" //the name of the character
    constant string BANK_MSG = "Vault Management"
    //GOLD dialog constants
    constant integer GOLD_DIALOG = 2
    constant integer HUNDRED_BTTN = 1
    constant integer FIVE_HUNDRED_BTTN = 2
    constant integer THOUSAND_BTTN = 3
    constant integer ALL_BTTN = 4
    constant string HUNDRED_BTTN_MSG = "100"
    constant string FIVE_HUNDRED_BTTN_MSG = "500"
    constant string THOUSAND_BTTN_MSG = "1000"
    constant string ALL_BTTN_MSG = "All of it."
    constant integer HUNDRED = 100
    constant integer FIVE_HUNDRED = 500
    constant integer THOUSAND = 1000
    constant string ERR_PUT = RED + "Error:|r You don't have any gold to deposit!"
    constant string ERR_TAKE = RED + "Error:|r Your vault is currently empty!"
    //REMOVE dialog constants
    constant integer REMOVE_DIALOG = 1
    constant integer REMOVE_YES_BTTN = 1
    constant integer REMOVE_NO_BTTN = 2
    constant string REMOVE_YES_BTTN_MSG = "Throw it out."
    constant string REMOVE_NO_BTTN_MSG = "No, don't throw it out."
    //INTRO dialog constants
    private constant integer TAKE_BTTN = 1
    constant integer PUT_BTTN = 2
    constant integer REMOVE_BTTN = 3
    constant integer TAKE_GOLD_BTTN = 4
    constant integer PUT_GOLD_BTTN = 5
    private constant string TAKE_BTTN_MSG = "Withdraw an item"
    constant string IDIALOG_TAKE_MSG = "Withdraw which item?"
    constant string PUT_BTTN_MSG = "Deposit an item"
    constant string IDIALOG_PUT_MSG = "Deposit which item?"
    constant string REMOVE_BTTN_MSG = "Remove an item"
    constant string IDIALOG_REMOVE_MSG = "Throw out which item?"
    constant string TAKE_GOLD_BTTN_MSG = "Withdraw gold"
    constant string PUT_GOLD_BTTN_MSG = "Deposit gold"
endglobals


private function putGold takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local button b =  GetClickedButton()
    local integer pid = GetPlayerId(p)
    local integer gold
    local integer amount
    local integer pGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
    local NPC npc = playerDatum[pid].npcs[Bank.index]
    if GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[HUNDRED_BTTN] then
        if pGold < HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r You only have " + GOLD + I2S(pGold) + " gold!")
        else
            set amount = HUNDRED
            set gold = npc.gold
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold - amount)
            set npc.gold = npc.gold + amount
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Deposited " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold + amount) + " gold|r now in your vault.")
        endif
    elseif GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[FIVE_HUNDRED_BTTN] then
        if pGold < FIVE_HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r You only have " + GOLD + I2S(pGold) + " gold!")
        else
            set amount = FIVE_HUNDRED
            set gold = npc.gold
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold - amount)
            set npc.gold = npc.gold + amount
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Deposited " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold + amount) + " gold|r now in your vault.")
        endif
    elseif GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[THOUSAND_BTTN] then
        if pGold < THOUSAND then
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r You only have " + GOLD + I2S(pGold) + " gold!")
        else
            set amount = THOUSAND
            set gold = npc.gold
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold - amount)
            set npc.gold = npc.gold + amount
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Deposited " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold + amount) + " gold|r now in your vault.")
        endif
    elseif GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[ALL_BTTN] then
        set amount = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
        set gold = npc.gold
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold - amount)
        set npc.gold = npc.gold + amount
        call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Deposited " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold + amount) + " gold|r now in your vault.")
    endif
    call DestroyTrigger(GetTriggeringTrigger())
    return false
endfunction

private function takeGold takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local button b =  GetClickedButton()
    local integer pid = GetPlayerId(p)
    local integer amount
    local integer pGold
    local NPC npc = playerDatum[pid].npcs[Bank.index]
    local integer gold = npc.gold
    if GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[HUNDRED_BTTN] then
        if gold < HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r There is only " + GOLD + I2S(gold) + " gold|r in your vault.")
        else
            set amount = HUNDRED
            set pGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
            set npc.gold = gold - amount
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold + amount)
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Withdrew " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold - amount) + " gold|r remaining in your vault.")
        endif
    elseif GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[FIVE_HUNDRED_BTTN] then
        if gold < FIVE_HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r There is only " + GOLD + I2S(gold) + " gold|r in your vault.")
        else
            set amount = FIVE_HUNDRED
            set pGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
            set npc.gold = gold - amount
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold + amount)
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Withdrew " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold - amount) + " gold|r remaining in your vault.")
        endif
    elseif GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[THOUSAND_BTTN] then
        if gold < THOUSAND then
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, RED + "Error:|r There is only " + GOLD + I2S(gold) + " gold|r in your vault.")
        else
            set amount = THOUSAND
            set pGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
            set npc.gold = gold - amount
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold + amount)
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Withdrew " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold - amount) + " gold|r remaining in your vault.")
        endif
    elseif GetClickedButton() == npc.twoD[GOLD_DIALOG * MAX_BTTNS].button[ALL_BTTN] then
        set amount = playerDatum[pid].npcs[Bank.index].gold
        set pGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
        set npc.gold = gold - amount
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, pGold + amount)
        call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Withdrew " + GOLD + I2S(amount) + " gold|r, with " + GOLD + I2S(gold - amount) + " gold|r remaining in your vault.")
    endif
    call DestroyTrigger(GetTriggeringTrigger())
    return false
endfunction


private function removeMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //search the farm for the to be released monster
    local Item target
    local ItemGroup bank = playerDatum[pid].bank
    local NPC npc = playerDatum[pid].npcs[Bank.index]
    if b == npc.twoD[REMOVE_DIALOG * MAX_BTTNS].button[REMOVE_YES_BTTN] then
        loop
            exitwhen i == MAX_BANK_SIZE
                if bank.items[i].toRemove == true then //remove it
                    set target = bank.items[i]
                    call DisplayTimedTextToPlayer(p, 0, 0, 7, BANK_HEADER + " " + SILVER + target.toString() + " has been removed from your vault.")
                    call bank.remove(target)
                    call target.destroy()
                endif
            set i = i + 1
        endloop
    elseif b == npc.twoD[REMOVE_DIALOG * MAX_BTTNS].button[REMOVE_NO_BTTN] or b == npc.twoD[REMOVE_DIALOG * MAX_BTTNS].button[QUIT_BTTN] then
        loop
            exitwhen i == MAX_BACKPACK_SIZE
            if bank.items[i].toRemove == true then //set the flag back to false, since we aren't releasing it yet
                set bank.items[i].toRemove = false
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
    local Item target
    local ItemGroup bank = playerDatum[pid].bank
    local NPC npc = playerDatum[pid].npcs[Bank.index]
    loop
        exitwhen i == MAX_BANK_SIZE
        if b == bank.bttns[i] then
            set target = bank.items[i]
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
    local Item target
    loop
        exitwhen i == MAX_BANK_SIZE
        if b == playerDatum[pid].bank.bttns[i] then
            set target = playerDatum[pid].bank.items[i]
            if playerDatum[pid].bank.remove(target) then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Withdrew " + target.toString() + ".")
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

private function putItem takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //counter
    local Item target
    loop
        exitwhen i == MAX_BACKPACK_SIZE
        if b == playerDatum[pid].backpack.bttns[i] then
            set target = playerDatum[pid].backpack.items[i]
            if playerDatum[pid].backpack.moveItem(playerDatum[pid].bank, target) then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Deposited " + target.toString() + " in your vault.")
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
    local trigger t
    local ItemGroup backpack = playerDatum[pid].backpack
    local ItemGroup bank = playerDatum[pid].bank
    local NPC npc = playerDatum[pid].npcs[Bank.index]
    if b == npc.twoD[INTRO * MAX_BTTNS].button[TAKE_BTTN] then
        call bank.displayGroup(IDIALOG_TAKE_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, bank.iDialog)
        call TriggerAddCondition(t, Condition(function takeItem))
        set playerDatum[pid].npcTrig = t
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[PUT_BTTN] then
        if bank.size == bank.maxSize then //the bank is full, player cannot store more items there
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, BANK_HEADER + " Your vault is full with " + I2S(bank.size) + " items.")
        else //the player's party has at least 2 monsters, so we need to list his party monsters
            call backpack.displayGroup(IDIALOG_PUT_MSG)
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, backpack.iDialog)
            call TriggerAddCondition(t, Condition(function putItem))
            set playerDatum[pid].npcTrig = t
        endif
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[REMOVE_BTTN] then
        call bank.displayGroup(IDIALOG_REMOVE_MSG)
        set t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, bank.iDialog)
        call TriggerAddCondition(t, Condition(function removeItem))
        set playerDatum[pid].npcTrig = t
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[TAKE_GOLD_BTTN] then
        if playerDatum[pid].npcs[Bank.index].gold == 0 then //no gold inside the bank
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, ERR_TAKE)
        else
            call DialogSetMessage(npc.oneD.dialog[GOLD_DIALOG], "Withdraw how much?\nAvailable: " + I2S(npc.gold))
            call DialogDisplay(p, npc.oneD.dialog[GOLD_DIALOG], true)
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, npc.oneD.dialog[GOLD_DIALOG])
            call TriggerAddCondition(t, Condition(function takeGold))
        endif
    elseif b == npc.twoD[INTRO * MAX_BTTNS].button[PUT_GOLD_BTTN] then
        if GetPlayerState(Player(pid), PLAYER_STATE_RESOURCE_GOLD) == 0 then //no gold inside the bank
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, ERR_PUT)
        else
            call DialogSetMessage(npc.oneD.dialog[GOLD_DIALOG], "Deposit how much?\nAvailable: " + I2S(npc.gold))
            call DialogDisplay(p, npc.oneD.dialog[GOLD_DIALOG], true)
            set t = CreateTrigger()
            call TriggerRegisterDialogEvent(t, npc.oneD.dialog[GOLD_DIALOG])
            call TriggerAddCondition(t, Condition(function putGold))
        endif
    endif
    set b = null
    set t = null
    return false
endfunction

struct Bank extends NPC
    static integer index = 0
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        local trigger t = CreateTrigger()
        //INTRO dialog
        set oneD.string[INTRO] = BANK_MSG
        call addBttnToDialog(INTRO, TAKE_BTTN_MSG)
        call addBttnToDialog(INTRO, PUT_BTTN_MSG)
        call addBttnToDialog(INTRO, REMOVE_BTTN_MSG)
        call addBttnToDialog(INTRO, TAKE_GOLD_BTTN_MSG)
        call addBttnToDialog(INTRO, PUT_GOLD_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[INTRO])
        call TriggerAddCondition(t, Condition(function introMain))
        //REMOVE dialog
        set t = CreateTrigger()
        set oneD.dialog[REMOVE_DIALOG] = DialogCreate()
        call addBttnToDialog(REMOVE_DIALOG, REMOVE_YES_BTTN_MSG)
        call addBttnToDialog(REMOVE_DIALOG, REMOVE_NO_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[REMOVE_DIALOG])
        call TriggerAddCondition(t, Condition(function removeMain))
        //GOLD dialog
        set oneD.dialog[GOLD_DIALOG] = DialogCreate()
        call addBttnToDialog(GOLD_DIALOG, HUNDRED_BTTN_MSG)
        call addBttnToDialog(GOLD_DIALOG, FIVE_HUNDRED_BTTN_MSG)
        call addBttnToDialog(GOLD_DIALOG, THOUSAND_BTTN_MSG)
        call addBttnToDialog(GOLD_DIALOG, ALL_BTTN_MSG)
        set t = null
        return this
    endmethod
endstruct
endlibrary