		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//create several lich skulls around the player
		set e = EventSFXInCircleAtPC.create("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", 15)
		set e.wait = 3.0
		set e.next = EventSFXInCircleAtPC.create("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", 15)
		set e.next.wait = 3.0
		set e.next.next = EventSFXInCircleAtPC.create("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", 15)
		set e.next.next.wait = 4.0
		//then summon the ghost/zombie of Al-Jernan
		set e.next.next.next = EventCreepSpawnAtPC.create(DEADNITE, 5, 100, 0, true)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1