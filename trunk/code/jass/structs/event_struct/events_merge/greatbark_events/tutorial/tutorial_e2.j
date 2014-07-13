		//***********************
		// TUTORIAL
		//***********************
		//start the Rock the Cazbar! quest
		set e = EventWait.create(5.0)
		//starting it is buggy at the moment
		//while it works out, if abu dhabi also has a dialog option for a cure for madness
		//completing either one will remove the other
		//set e.next = EventStartQuest.create("The Orb of Seas")
		set eventTable[i] = e
		set i = i + 1