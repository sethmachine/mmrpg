		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		//add weather - rays of light
		set e = EventRemoveWeather.create(SUNCHAMBER_MIRROR_D_RECT)
		set e.next = EventSetBossInvulnerability.create(0, SUBTRACTION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, -1.50)
		set eventTable[i] = e
		set i = i + 1