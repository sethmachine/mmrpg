		//***********************
		// TUTORIAL
		//***********************
		//start the Rock the Cazbar! quest
		set e = EventWait.create(8.0)
		set e.next = EventStartQuest.create("Rock the Cazbar!")
		set eventTable[i] = e
		set i = i + 1