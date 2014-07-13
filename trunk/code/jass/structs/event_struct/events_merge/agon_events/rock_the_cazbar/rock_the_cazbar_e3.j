		//***********************
		// ROCK_THE_CAZBAR
		//***********************
		//hand over the player's units to the computer
		set e = EventSetPlayerOwner.create(BOT_ALLY)
		set e.next = EventPlaySillyMusic.create()
		//start the dance!
		set m = EventPlayerDance.create()
		set m.wait = 1.0
		set e.next.next = m
		loop
			exitwhen j == 32
			set m.next = EventPlayerDance.create()
			set m.next.wait = 1.0
			set m = m.next
			set j = j + 1
		endloop
		set j = 0
		set m.next = EventReturnPlayer.create()
		set m.next.next = EventSetNPC.create(ABU_DHABI, true) //enable Abu Dhabi, since the quest is complete!
		set m.next.next.next = EventSetNPCMsg.create(ALFONZO2, INTRO, ALFONZO_HEADER + "\nWell done hehe hehe.")
		set m.next.next.next.next = EventSetWarp.create(CASTLE_CAZBAR_EXIT, true)
		set m.next.next.next.next.next = EventSetWarp.create(CASTLE_CAZBAR, true)
		set m.next.next.next.next.next.next = EventSetPlayerTeleport.create(true)
		set eventTable[i] = e
		set i = i + 1