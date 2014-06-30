library EventTable initializer init requires EventStruct

globals
	Event array eventTable
	private timer t
endglobals

private function fillTable takes nothing returns nothing
	local integer i = 0
	local Event e
			//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//enable the quest
		set e = EventEnableQuest.create("Flowers for Al-Jernan")
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//create a desert flower in the Agon overworld
		//located in a random spot
		set e = EventItemCreateInRect.create(AGON_RECT, 500, DESERT_FLOWER, 1)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//create a desert flower in the Agon overworld
		//located in a random spot
		set e = EventItemCreateInRect.create(AGON_RECT, 500, DESERT_FLOWER, 1)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//create a desert flower in the Agon overworld
		//located in a random spot
		set e = EventItemCreateInRect.create(AGON_RECT, 500, DESERT_FLOWER, 1)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1
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
		set e.next.next.next = EventCreepSpawnAtPC.create(DEADNITE, 5, 100, true)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// TUTORIAL
		//***********************
		//activate the ferry to go to monster farm
		set e = EventSetWarp.create(FERRY_TO_FARM, true)
		set eventTable[i] = e
		set i = i + 1

	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary
