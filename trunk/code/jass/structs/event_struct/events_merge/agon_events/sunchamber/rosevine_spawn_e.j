		//***********************
		// ROSEVINE_SPAWN
		//***********************
		//set the boss invuln to 4 (make sure the levers are turned on, too!)
		set e = EventSetBossInvulnerability.create(0, ADDITION, 4)
		call e.add(EventWait(35.0))
		call e.add(EventAttackBoss(0))
		set eventTable[i] = e
		set i = i + 1