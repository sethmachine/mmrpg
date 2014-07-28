		//[[ Priest
		set npc = NPC.create(PRIEST_ID)
		//set up the intro dialog
		set d = Dialog.create(PRIEST_INTRO_MSG)
		call d.append(BTTN_REVIVE, HOTKEY_REVIVE)
		call d.append(BTTN_QUIT, HOTKEY_QUIT)
		call d.registerDialogEvent(function priestIntroMain)
		set npc.table[DIALOG_INTRO] = d
		set playerDatum[i].npcs[PRIEST] = npc