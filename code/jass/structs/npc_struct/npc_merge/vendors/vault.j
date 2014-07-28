		//[[ Vault
		set npc = NPC.create(ITEM_VAULT_ID)
		//set up the intro dialog
		set d = Dialog.create(VAULT_INTRO_MSG)
		call d.append(BTTN_GOLD, HOTKEY_GOLD)
		call d.append(BTTN_ITEMS, HOTKEY_ITEMS)
		call d.append(BTTN_EXIT, HOTKEY_EXIT)
		//call d.registerDialogEvent(function vaultIntroMain)
		set npc.table[DIALOG_INTRO] = d
		//set up gold intro dialog
		set g = Dialog.create(VAULT_GOLD_MSG)
		call g.append(BTTN_WITHDRAW_GOLD, HOTKEY_WITHDRAW_GOLD)
		call g.append(BTTN_DEPOSIT_GOLD, HOTKEY_DEPOSIT_GOLD)
		call g.append(BTTN_BACK, HOTKEY_BACK)
		call g.registerDialogEvent(function vaultGoldMain)
		call g.link(BTTN_BACK, d)
		call d.link(BTTN_GOLD, g)
		//set up depositing/withdrawing gold
		//! textmacro ManageGold takes ACTION, VERB
		set l = Dialog.create(VAULT_$ACTION$_HOW_MUCH_MSG)
		call l.append(BTTN_ONE_HUNDRED, HOTKEY_ONE_HUNDRED)
		call l.append(BTTN_FIVE_HUNDRED, HOTKEY_FIVE_HUNDRED)
		call l.append(BTTN_ALL_GOLD, HOTKEY_ALL_GOLD)
		call l.linkAll(l)
		call l.append(BTTN_BACK, HOTKEY_BACK)
		call l.link(BTTN_BACK, g)
		call l.registerDialogEvent(function vault$VERB$Main)
		call g.link(BTTN_$ACTION$_GOLD, l)
		//! endtextmacro
		//! runtextmacro ManageGold("WITHDRAW", "Withdraw")
		//! runtextmacro ManageGold("DEPOSIT", "Deposit")
		//set up items dialog
		set g = Dialog.create(VAULT_ITEMS_MSG)
		call g.append(BTTN_WITHDRAW_ITEMS, HOTKEY_WITHDRAW_ITEMS)
		call g.append(BTTN_DEPOSIT_ITEMS, HOTKEY_DEPOSIT_ITEMS)
		call g.append(BTTN_REMOVE_ITEMS, HOTKEY_REMOVE_ITEMS)
		call g.append(BTTN_BACK, HOTKEY_BACK)
		call g.registerDialogEvent(function vaultItemsMain)
		call g.link(BTTN_BACK, d)
		call d.link(BTTN_ITEMS, g)
		set playerDatum[i].npcs[ITEM_VAULT] = npc