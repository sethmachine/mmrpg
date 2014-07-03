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
		set eventTable[i] = e
		set i = i + 1