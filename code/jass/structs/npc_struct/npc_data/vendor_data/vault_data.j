library BankStruct requires PlayerDataTable, NPCStruct

globals
    constant string VAULT_HEADER = GOLD + "Vault|r:" //the name of the character
    constant string VAULT_INTRO_MSG = VAULT_HEADER + "\nManage gold or items?"
    constant string BTTN_GOLD = WHITE + "Gold. [ " + RED + "G|r" + WHITE + " ]"
	constant integer HOTKEY_GOLD = 'G'
    constant string BTTN_ITEMS = WHITE + "Items. [ " + RED + "I|r" + WHITE + " ]"
	constant integer HOTKEY_ITEMS = 'I'
	//gold intro dialog buttons
	constant string VAULT_GOLD_MSG = VAULT_HEADER + "\nWithdraw or deposit gold?"
	constant string BTTN_WITHDRAW_GOLD = WHITE + "Withdraw. [ " + RED + "W|r" + WHITE + " ]"
	constant integer HOTKEY_WITHDRAW_GOLD = 'W'
	constant string BTTN_DEPOSIT_GOLD = WHITE + "Deposit. [ " + RED + "D|r" + WHITE + " ]"
	constant integer HOTKEY_DEPOSIT_GOLD = 'D'
	//gold amounts
	constant integer ONE_HUNDRED = 100
	constant integer FIVE_HUNDRED = 500
	//gold withdraw/deposit buttons
	constant string VAULT_WITHDRAW_MSG = "\nWithdraw how much gold?"
	constant string VAULT_DEPOSIT_MSG = "\nDeposit how much gold?"
	constant string VAULT_WITHDRAW_HOW_MUCH_MSG = VAULT_HEADER + VAULT_WITHDRAW_MSG + "\nAvailable: "
	constant string VAULT_DEPOSIT_HOW_MUCH_MSG = VAULT_HEADER + VAULT_DEPOSIT_MSG + "\nAvailable: "
	constant string BTTN_ONE_HUNDRED = WHITE + "100. [ " + RED + "1|r" + WHITE + " ]"
	constant integer HOTKEY_ONE_HUNDRED = KEY_NUMPAD_1
	constant string BTTN_FIVE_HUNDRED = WHITE + "500. [ " + RED + "5|r" + WHITE + " ]"
	constant integer HOTKEY_FIVE_HUNDRED = KEY_NUMPAD_1 + 4 //key numpad 5
	constant string BTTN_ALL_GOLD = WHITE + "All. [ " + RED + "A|r" + WHITE + " ]"
	constant integer HOTKEY_ALL_GOLD = 'A'
	//items intro dialog buttons
	constant string VAULT_ITEMS_MSG = VAULT_HEADER + "\nWithdraw, deposit, or remove an item?"
	constant string BTTN_WITHDRAW_ITEMS = WHITE + "Withdraw. [ " + RED + "W|r" + WHITE + " ]"
	constant integer HOTKEY_WITHDRAW_ITEMS = 'W'
	constant string BTTN_DEPOSIT_ITEMS = WHITE + "Deposit. [ " + RED + "D|r" + WHITE + " ]"
	constant integer HOTKEY_DEPOSIT_ITEMS = 'D'
	constant string BTTN_REMOVE_ITEMS = WHITE + "Remove. [ " + RED + "R|r" + WHITE + " ]"
	constant integer HOTKEY_REMOVE_ITEMS = 'R'
endglobals

function vaultWithdrawItemsMain takes nothing returns nothing
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
	local integer i = 0
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local Dialog itemsDialog
	local Dialog backDialog
	local PlayerData pd = playerDatum[pid]
	local ItemGroup bank = pd.bank
	local Item target
	loop
		exitwhen i == bank.size
		if b == d.getButtonInt(i) then
			set target = bank.items[i]
            if bank.remove(target) then
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, VAULT_HEADER + " Withdrew " + target.toString() + ".")
                call target.moveToLoc(GetUnitLoc(pd.pc.u))
                call target.destroy()
				call d.flush()
				set itemsDialog = playerDatum[pid].bank.toDialog("")
				call itemsDialog.append(BTTN_BACK, HOTKEY_BACK)
				set backDialog = d.backDialog
				call itemsDialog.link(BTTN_BACK, backDialog)
				set itemsDialog.backDialog = backDialog
				call itemsDialog.registerDialogEvent(function vaultWithdrawItemsMain)
				call itemsDialog.show(pid, true)
			endif
		endif
		set i = i + 1
	endloop
	if b == d.getButton(BTTN_BACK) then
		call d.flush()
	endif
	set b = null
	set p = null
endfunction
	

function vaultItemsMain takes nothing returns nothing
	local button b = GetClickedButton()
	local player p = GetTriggerPlayer()
	local integer pid = GetPlayerId(p)
	local integer i = 0
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local Dialog itemsDialog
	if b == d.getButton(BTTN_WITHDRAW_ITEMS) then
		call print("clicked withdraw items button")
		set itemsDialog = playerDatum[pid].bank.toDialog("")
		/*loop
			exitwhen i == MAX_BANK_SIZE
			call itemsDialog.linkInt(i, itemsDialog)
			set i = i + 1
		endloop*/
		call itemsDialog.append(BTTN_BACK, HOTKEY_BACK)
		call itemsDialog.link(BTTN_BACK, d)
		set itemsDialog.backDialog = d
		call itemsDialog.registerDialogEvent(function vaultWithdrawItemsMain)
		call itemsDialog.show(pid, true)
	endif
	set p = null
	set b = null
endfunction

function vaultDepositMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local PlayerData pd = playerDatum[pid]
	local integer playerGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
	local integer vaultGold = pd.vaultGold
	call d.setMsg(VAULT_DEPOSIT_HOW_MUCH_MSG + GOLD + I2S(vaultGold))
	if b == d.getButton(BTTN_ONE_HUNDRED) then
		if playerGold >= ONE_HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, VAULT_HEADER + " Deposited " + GOLD + I2S(ONE_HUNDRED) + " gold|r, with " + GOLD + I2S(vaultGold + ONE_HUNDRED) + " gold|r now in your vault.")
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, playerGold - ONE_HUNDRED)
			set pd.vaultGold = pd.vaultGold + ONE_HUNDRED
			call d.setMsg(VAULT_DEPOSIT_HOW_MUCH_MSG + GOLD + I2S(pd.vaultGold))
		endif
	elseif b == d.getButton(BTTN_FIVE_HUNDRED) then
		if playerGold >= FIVE_HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, VAULT_HEADER + " Deposited " + GOLD + I2S(FIVE_HUNDRED) + " gold|r, with " + GOLD + I2S(vaultGold + FIVE_HUNDRED) + " gold|r now in your vault.")
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, playerGold - FIVE_HUNDRED)
			set pd.vaultGold = pd.vaultGold + FIVE_HUNDRED
			call d.setMsg(VAULT_DEPOSIT_HOW_MUCH_MSG + GOLD + I2S(pd.vaultGold))
		endif
	elseif b == d.getButton(BTTN_ALL_GOLD) then
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, playerGold - playerGold)
		set pd.vaultGold = vaultGold + playerGold
		call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, VAULT_HEADER + " Deposited " + GOLD + I2S(playerGold) + " gold|r, with " + GOLD + I2S(vaultGold + playerGold) + " gold|r now in your vault.")
		call d.setMsg(VAULT_DEPOSIT_HOW_MUCH_MSG + GOLD + I2S(pd.vaultGold))
	endif
	set b = null
	set p = null
	return false
endfunction

function vaultWithdrawMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local PlayerData pd = playerDatum[pid]
	local integer playerGold = GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD)
	local integer vaultGold = pd.vaultGold
	call d.setMsg(VAULT_WITHDRAW_HOW_MUCH_MSG + GOLD + I2S(vaultGold))
	if b == d.getButton(BTTN_ONE_HUNDRED) then
		if vaultGold >= ONE_HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, VAULT_HEADER + " Withdrew " + GOLD + I2S(ONE_HUNDRED) + " gold|r, with " + GOLD + I2S(vaultGold - ONE_HUNDRED) + " gold|r now in your vault.")
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, playerGold + ONE_HUNDRED)
			set pd.vaultGold = pd.vaultGold - ONE_HUNDRED
			call d.setMsg(VAULT_WITHDRAW_HOW_MUCH_MSG + GOLD + I2S(pd.vaultGold))
		endif
	elseif b == d.getButton(BTTN_FIVE_HUNDRED) then
		if vaultGold >= FIVE_HUNDRED then
            call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, VAULT_HEADER + " Withdrew " + GOLD + I2S(FIVE_HUNDRED) + " gold|r, with " + GOLD + I2S(vaultGold - FIVE_HUNDRED) + " gold|r now in your vault.")
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, playerGold + FIVE_HUNDRED)
			set pd.vaultGold = pd.vaultGold - FIVE_HUNDRED
			call d.setMsg(VAULT_WITHDRAW_HOW_MUCH_MSG + GOLD + I2S(pd.vaultGold))
		endif
	elseif b == d.getButton(BTTN_ALL_GOLD) then
        call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, playerGold + vaultGold)
		set pd.vaultGold = 0
		call DisplayTimedTextToPlayer(p, 0, 0, NPC_TEXT_DURATION, VAULT_HEADER + " Withdrew " + GOLD + I2S(vaultGold) + " gold|r, with " + GOLD + I2S(0) + " gold|r now in your vault.")
		call d.setMsg(VAULT_WITHDRAW_HOW_MUCH_MSG + GOLD + I2S(pd.vaultGold))
	endif
	set b = null
	set p = null
	return false
endfunction

function vaultGoldMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	local Dialog target
	local Button bttn
	if b == d.getButton(BTTN_WITHDRAW_GOLD) then
		set bttn = d.getBttn(BTTN_WITHDRAW_GOLD)
		set target = bttn.target
		call target.setMsg(VAULT_WITHDRAW_HOW_MUCH_MSG + GOLD + I2S(playerDatum[pid].vaultGold))
	elseif b == d.getButton(BTTN_DEPOSIT_GOLD) then
		set bttn = d.getBttn(BTTN_DEPOSIT_GOLD)
		set target = bttn.target
		call target.setMsg(VAULT_DEPOSIT_HOW_MUCH_MSG + GOLD + I2S(playerDatum[pid].vaultGold))
	endif
	return false
endfunction

function vaultIntroMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
    //local ItemGroup backpack = playerDatum[pid].backpack
    //local ItemGroup bank = playerDatum[pid].bank
	if b == d.getButton(BTTN_GOLD) then
		call print("clicked gold button")
	elseif b == d.getButton(BTTN_ITEMS) then
		call print("clicked items button")
	endif
    return false
endfunction
endlibrary