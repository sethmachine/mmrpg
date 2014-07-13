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
		// A_CURE_FOR_MADNESS
		//***********************
		//allow the player to enter the sewers
		set e = EventSetWarp.create(KALKA_SEWERS, true)
		set eventTable[i] = e
		set i = i + 1
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
		call e.add(EventSetWarp.create(CAZBAR_WELL_EXIT, true))
		call e.add(EventSetWarp.create(CAZBAR_WELL, true))
		//no more changing water tints by entering or leaving kalka
		call e.add(EventDisableWarpEvent.create(KALKA))
		call e.add(EventDisableWarpEvent.create(KALKA_EXIT))
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
		// Normal Water Tint
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
		//enable the quest
		set e = EventQuestFanfare.create("Rock the Cazbar!")
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
		set e.next.next.next = EventSetNPC.create(ABU_DHABI, false) //disable Abu dhabi, until quest is complete!
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
			exitwhen j == 32
			set m.next = EventPlayerDance.create()
			set m.next.wait = 1.0
			set m = m.next
			set j = j + 1
		endloop
		set j = 0
		set m.next = EventReturnPlayer.create()
		set m.next.next = EventSetNPC.create(ABU_DHABI, true) //enable Abu Dhabi, since the quest is complete!
		set m.next.next.next = EventSetNPCMsg.create(ALFONZO2, INTRO, ALFONZO_HEADER + "\nWell done hehe hehe.")
		set m.next.next.next.next = EventSetWarp.create(CASTLE_CAZBAR_EXIT, true)
		set m.next.next.next.next.next = EventSetWarp.create(CASTLE_CAZBAR, true)
		set m.next.next.next.next.next.next = EventSetPlayerTeleport.create(true)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// ROSEVINE_DEATH
		//***********************
		//set the boss invuln to 4 (make sure the levers are turned on, too!)
		set e = EventWait.create(6.0)
		call e.add(EventAdvanceQuest.create("A Cure For Madness"))
		set eventTable[i] = e
		set i = i + 1
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
		//***********************
		// ROSEVINE_SPAWN
		//***********************
		//set the boss invuln to 4 (make sure the levers are turned on, too!)
		set e = EventSetBossInvulnerability.create(0, ADDITION, 4)
		call e.add(EventWait.create(30.0))
		call e.add(EventAttackBoss.create(0))
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_ENTER
		//***********************
		//disable the exit, the player cannot leave
		set e = EventSetWarp.create(SUNCHAMBER_EXIT, false)
		//disable teleporting, the player cannot warp out
		call e.add(EventSetPlayerTeleport.create(false))
		call e.add(EventSetLeverInvulnerable.create(0, true))
		call e.add(EventSetLeverInvulnerable.create(1, true))
		call e.add(EventSetLeverInvulnerable.create(2, true))
		call e.add(EventSetLeverInvulnerable.create(3, true))
		//start the global timer, to begin the boss
		call e.add(EventGlobalWait.create(15.0))
		//disable entrance for all players
		call e.add(EventSetGlobalWarp.create(SUNCHAMBER, true))
		//paralyze the player, so they are forced to watch the boss intro cinematic
		call e.add(EventSetPlayerOwner.create(BOT_ALLY))
		//create the boss now but don't activate yet
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_CENTER_RECT, FOG_OF_WAR_VISIBLE, true))
		call e.add(EventWait.create(1.00))
		call e.add(EventSpawnBoss.create(0))
		call e.add(EventPanCameraToLoc.create(GetRectCenter(SUNCHAMBER_CENTER_RECT), 0.50))
		call e.add(EventWait.create(1.25))
		//pan to each mirror, turning it on, then pan to boss, then pan to next mirror
		//roughly takes 29 seconds in total
		//! textmacro BossIntro takes leverLetter, leverIndex
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_MIRROR_$leverLetter$_RECT, FOG_OF_WAR_VISIBLE, true))
		call e.add(EventPanCameraToLoc.create(GetRectCenter(SUNCHAMBER_MIRROR_$leverLetter$_RECT), 0.50))
		call e.add(EventWait.create(1.75))
		call e.add(EventPlayLeverAnimation.create($leverIndex$, "death"))
		call e.add(EventSetLeverState.create($leverIndex$, false))
		call e.add(EventWait.create(0.75))
		call e.add(EventAddWeather.create(SUNCHAMBER_MIRROR_$leverLetter$_RECT, 'LRaa'))
		call e.add(EventWait.create(1.75))
		call e.add(EventPanCameraToLoc.create(GetRectCenter(SUNCHAMBER_BOSS_RECT), 0.50))
		call e.add(EventWait.create(1.0))
		call e.add(EventSetBossUnitScale.create(0, 1.50))
		call e.add(EventWait.create(1.5))
		//! endtextmacro
		
		//! runtextmacro BossIntro("A", "0")
		//! runtextmacro BossIntro("B", "1")
		//! runtextmacro BossIntro("C", "2")
		//! runtextmacro BossIntro("D", "3")
		
		//unpause the player
		call e.add(EventReturnPlayer.create())
		call e.add(EventSetLeverInvulnerable.create(0, false))
		call e.add(EventSetLeverInvulnerable.create(1, false))
		call e.add(EventSetLeverInvulnerable.create(2, false))
		call e.add(EventSetLeverInvulnerable.create(3, false))
		//make the whole arena visible
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_BOSS_RECT, FOG_OF_WAR_VISIBLE, true))
		//hide the other areas now
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_CENTER_RECT, FOG_OF_WAR_MASKED, true))
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_MIRROR_A_RECT, FOG_OF_WAR_MASKED, true))
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_MIRROR_B_RECT, FOG_OF_WAR_MASKED, true))
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_MIRROR_C_RECT, FOG_OF_WAR_MASKED, true))
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_MIRROR_D_RECT, FOG_OF_WAR_MASKED, true))
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		set e = EventAddWeather.create(SUNCHAMBER_MIRROR_A_RECT, 'LRaa')
		set e.next = EventSetBossInvulnerability.create(0, ADDITION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, 1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		//add weather - rays of light
		set e = EventRemoveWeather.create(SUNCHAMBER_MIRROR_A_RECT)
		set e.next = EventSetBossInvulnerability.create(0, SUBTRACTION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, -1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		set e = EventAddWeather.create(SUNCHAMBER_MIRROR_B_RECT, 'LRaa')
		set e.next = EventSetBossInvulnerability.create(0, ADDITION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, 1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		//add weather - rays of light
		set e = EventRemoveWeather.create(SUNCHAMBER_MIRROR_B_RECT)
		set e.next = EventSetBossInvulnerability.create(0, SUBTRACTION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, -1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		set e = EventAddWeather.create(SUNCHAMBER_MIRROR_C_RECT, 'LRaa')
		set e.next = EventSetBossInvulnerability.create(0, ADDITION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, 1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		//add weather - rays of light
		set e = EventRemoveWeather.create(SUNCHAMBER_MIRROR_C_RECT)
		set e.next = EventSetBossInvulnerability.create(0, SUBTRACTION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, -1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		set e = EventAddWeather.create(SUNCHAMBER_MIRROR_D_RECT, 'LRaa')
		set e.next = EventSetBossInvulnerability.create(0, ADDITION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, 1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// SUNCHAMBER_LEVER
		//***********************
		//add weather - rays of light
		set e = EventRemoveWeather.create(SUNCHAMBER_MIRROR_D_RECT)
		set e.next = EventSetBossInvulnerability.create(0, SUBTRACTION, 1)
		set e.next.next = EventSetBossUnitScale.create(0, -1.50)
		set eventTable[i] = e
		set i = i + 1
		//***********************
		// Normal Water Tint
		//***********************
		//set water tint to greenish
		set e = EventWaterTint.create(0, 255, 0, 255)
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
		set e = EventWait.create(5.0)
		//starting it is buggy at the moment
		//while it works out, if abu dhabi also has a dialog option for a cure for madness
		//completing either one will remove the other
		//set e.next = EventStartQuest.create("The Orb of Seas")
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
