		//***********************
		// SUNCHAMBER_ENTER
		//***********************
		//disable the exit, the player cannot leave
		set e = EventSetWarp.create(SUNCHAMBER_EXIT, true)
		//disable teleporting, the player cannot warp out
		call e.add(EventSetPlayerTeleport.create(false))
		//start the global timer, to begin the boss
		call e.add(EventGlobalWait.create(3.0))
		//disable entrance for all players
		call e.add(EventSetGlobalWarp.create(SUNCHAMBER, true))
		//paralyze the player, so they are forced to watch the boss intro cinematic
		call e.add(EventSetPlayerOwner.create(BOT_ALLY))
		//create the boss now but don't activate yet
		call e.add(EventSetFogOfWar.create(SUNCHAMBER_CENTER_RECT, FOG_OF_WAR_VISIBLE, true))
		call e.add(EventWait.create(1.00))
		call e.add(EventSpawnBoss.create(0))
		call e.add(EventPanCameraToLoc.create(GetRectCenter(SUNCHAMBER_BOSS_RECT), 0.50))
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