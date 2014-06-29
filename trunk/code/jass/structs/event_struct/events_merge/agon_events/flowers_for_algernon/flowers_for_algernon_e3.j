		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//create a desert flower in the Agon overworld
		//located in a random spot
		set e = EventItemCreateInRect.create(AGON_RECT, 500, DESERT_FLOWER, 1)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1