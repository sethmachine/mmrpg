		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//part 1 - enable the quest
		set e = EventEnableQuest.create()
		call e.setEnableQuest("Flowers for Al-Jernan")
		//part 2 - create three desert flowers in Agon overworld
		//each flower is located in a random spot
		set e.next = EventItemCreateInRect.create()
		call e.next.setItemCreateInRect(Rect(-15520, -3904, -1216, 8384), 'f001', 1)
		set e.next.next = EventItemCreateInRect.create()
		call e.next.next.setItemCreateInRect(Rect(-15520, -3904, -1216, 8384), 'f001', 1)
		set e.next.next.next = EventItemCreateInRect.create()
		call e.next.next.next.setItemCreateInRect(Rect(-15520, -3904, -1216, 8384), 'f001', 1)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1