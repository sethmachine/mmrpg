		//***********************
		// ROCK_THE_CAZBAR
		//***********************
		//move the player to castle cazbar
		set e = EventCallWarp.create(CASTLE_CAZBAR)
		//disable the exit for castle cazbar
		//this makes sure the player always has 3 monsters
		set e.next = EventSetWarp.create(CASTLE_CAZBAR_EXIT, false)
		//disable player teleport, i.e. no using a warp staff!
		set e.next.next = EventSetPlayerTeleport.create(false)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1