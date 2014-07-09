		//***********************
		// A_CURE_FOR_MADNESS
		//***********************
		//called when the player defeats the boss
		//re-enable player's warp ability
		set e = EventSetPlayerTeleport.create(true)
		call e.add(EventWaterTint.create(50, 255, 50, 255))
		call e.add(EventWait.create(1.0))
		call e.add(EventWaterTint.create(100, 255, 100, 255))
		call e.add(EventWait.create(1.0))
		call e.add(EventWaterTint.create(150, 255, 150, 255))
		call e.add(EventWait.create(1.0))
		call e.add(EventWaterTint.create(200, 255, 200, 255))
		call e.add(EventWait.create(1.0))
		call e.add(EventWaterTint.create(255, 255, 255, 255))
		call e.add(EventWait.create(5.0))
		call e.add(EventCallWarp.create(SUNCHAMBER_EXIT))
		//allow access to sunchamber again
		call e.add(EventWait.create(3.0))
		call e.add(EventSetGlobalWarp.create(SUNCHAMBER, true))
		call e.add(EventWait.create(0.20))
		//permanently disable access to sunchamber for this player
		call e.add(EventSetWarp.create(SUNCHAMBER, false))
		call e.add(EventSetWarp.create(SUNCHAMBER_EXIT, true))
		//no more changing water tints by entering or leaving kalka
		call e.add(EventDisableWarpEvent.create(KALKA))
		call e.add(EventDisableWarpEvent.create(KALKA_EXIT))
		set eventTable[i] = e
		set i = i + 1