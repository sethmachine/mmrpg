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

	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary
