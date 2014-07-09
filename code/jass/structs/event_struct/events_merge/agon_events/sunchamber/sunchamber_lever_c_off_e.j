		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		set e = EventAddWeather.create(SUNCHAMBER_MIRROR_C_RECT, 'LRaa')
		set e.next = EventSetBossInvulnerability.create(0, ADDITION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, 1.50)
		set eventTable[i] = e
		set i = i + 1