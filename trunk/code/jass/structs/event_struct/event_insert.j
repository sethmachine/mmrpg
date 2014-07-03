library EventTable initializer init requires EventStruct

globals
	Event array eventTable
	private timer t
endglobals

private function fillTable takes nothing returns nothing
	local integer i = 0
	local integer j = 0
	local Event e
	local Event m
			//***********************
		// A_CURE_FOR_MADNESS
		//***********************
		//enable the quest
		set e = EventQuestFanfare.create("A Cure For Madness")
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// FLOWERS_FOR_ALGERNON
		//***********************
		//enable the quest
		set e = EventQuestFanfare.create("Flowers for Al-Jernan")
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
		// Kalka Enter
		//***********************
		//set water tint to greenish
		set e = EventWaterTint.create(0, 255, 0, 255)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// Kalka Leave
		//***********************
		//reset water tint
		set e = EventWaterTint.create(255, 255, 255, 255)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// ROCK_THE_CAZBAR
		//***********************
		//move the player to castle cazbar
		set e = EventCallWarp.create(CASTLE_CAZBAR)
		//disable the exit for castle cazbar
		//this makes sure the player always has 3 monsters
		set e.next = EventSetWarp.create(CASTLE_CAZBAR_EXIT, false)
		//disable player teleport, i.e. no using a warp staff!
		set e.next.next = EventSetPlayerTeleport.create(false)
		//put event inside array, increment
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// ROCK_THE_CAZBAR
		//***********************
		//hand over the player's units to the computer
		set e = EventSetPlayerOwner.create(BOT_ALLY)
		set e.next = EventPlaySillyMusic.create()
		//start the dance!
		set m = EventPlayerDance.create()
		set m.wait = 1.0
		set e.next.next = m
		loop
			exitwhen j == 35
			set m.next = EventPlayerDance.create()
			set m.next.wait = 1.0
			set m = m.next
			set j = j + 1
		endloop
		set j = 0
		set m.next = EventReturnPlayer.create()
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// TUTORIAL
		//***********************
		//activate the ferry to go to monster farm
		set e = EventSetWarp.create(FERRY_TO_FARM, true)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// TUTORIAL
		//***********************
		//start the Rock the Cazbar! quest
		set e = EventWait.create(8.0)
		set e.next = EventStartQuest.create("Rock the Cazbar!")
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
