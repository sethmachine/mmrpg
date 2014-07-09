		//***********************
		// ROSEVINE_DEATH
		//***********************
		//set the boss invuln to 4 (make sure the levers are turned on, too!)
		set e = EventWait.create(6.0)
		call e.add(EventAdvanceQuest.create("A Cure For Madness"))
		set eventTable[i] = e
		set i = i + 1