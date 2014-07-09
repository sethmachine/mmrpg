		//***********************
		// ROSEVINE_RESET
		//***********************
		//wait one second before resetting the boss
		set e = EventWait.create(2.5)
		//reset the boss
		call e.add(EventResetBoss.create(0))
		//now reset the state of the room (i.e. respawn the levers, remove any weather)
		//! textmacro LeverReset takes leverLetter, leverIndex
		call e.add(EventResetLever.create($leverIndex$))
		call e.add(EventRemoveWeather.create(SUNCHAMBER_MIRROR_$leverLetter$_RECT))
		//! endtextmacro
		
		//! runtextmacro LeverReset("A", "0")
		//! runtextmacro LeverReset("B", "1")
		//! runtextmacro LeverReset("C", "2")
		//! runtextmacro LeverReset("D", "3")
		set eventTable[i] = e
		set i = i + 1