		//***********************
		// TUTORIAL
		//***********************
		//start the Rock the Cazbar! quest
		set e = EventWait.create(5.0)
		set e.next = EventStartQuest.create("The Orb of Seas")
		set eventTable[i] = e
		set i = i + 1