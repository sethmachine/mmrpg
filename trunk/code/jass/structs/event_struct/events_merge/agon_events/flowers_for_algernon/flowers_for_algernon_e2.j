		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//create several lich skulls around the player
		set e = EventSFXInCircleAtPC.create()
		set e.wait = 3.0
		call e.setSFXInCircleAtPC("Objects\\Spawnmodels\\Undead\\UndeadDissipate\\UndeadDissipate.mdl", 15)
		//then summon the ghost/zombie of Al-Jernan
		set e.next = EventCreepSpawnAtPC.create()
		call e.next.setCreepSpawnAtPC(DEADNITE, 5, 100, 0, true)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1