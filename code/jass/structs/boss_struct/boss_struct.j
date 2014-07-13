library BossStruct initializer init requires Util, Constants

globals
	Table bossHandleTable
	constant integer BOSS_RECRUIT_LEVEL = 0 //impossible to recruit
	constant real ATTACK_TIMER_DURATION = 5.0
endglobals

struct Boss
	integer monsterID //which monster unit?
	integer heroLvl //base level of the boss
	integer scaleLvl //additional hero levels per player
	integer rcLvl //how hard to recruit--in general bosses cannot be recruited
	integer isInvuln //if <= 0, then invuln trig won't run
	integer playerCount //number of players fighting the boss
	real scale = 1.0 //the current scaling size of the unit, default 1.0
	boolean isActive //whether the boss is already spawned
	timer attackTimer
	trigger invulnTrig //a trigger that makes the boss attackable but not take damage
	trigger deathTrig
	trigger enterTrig
	trigger leaveTrig
	rect bossRect //the arena/area where the battle takes place
	region bossRegion
	location bossLoc
	Monster bossM
	integer resetEvent //event called when boss dies or the players lose against it
	integer spawnEvent //event called when boss spawns
	integer deathEvent
	
    static method create takes integer monsterID, integer heroLvl, integer scaleLvl, rect bossRect returns thistype
        local thistype this = thistype.allocate()
		set this.monsterID = monsterID
		set this.heroLvl = heroLvl
		set this.scaleLvl = scaleLvl
		set this.rcLvl = BOSS_RECRUIT_LEVEL
		set this.bossRect = bossRect
		set bossRegion = CreateRegion()
		call RegionAddRect(bossRegion, bossRect)
		set bossLoc = GetRectCenter(this.bossRect)
		set bossHandleTable[GetHandleId(bossRegion)] = this
		call setEnter()
		call setLeave()
        return this
    endmethod
	
	method reset takes nothing returns nothing
		call DestroyTrigger(invulnTrig)
		call DestroyTrigger(deathTrig)
		call DestroyTimer(attackTimer)
		//call DestroyTrigger(enterTrig)
		//call DestroyTrigger(leaveTrig)
		set invulnTrig = null
		set deathTrig = null
		set attackTimer = null
		//set enterTrig = null
		//set leaveTrig = null
		//set bossRect = null
		set playerCount = 0
		set isInvuln = 0
		set scale = 1.0
		set isActive = false
		call RemoveUnit(bossM.u)
		call bossM.flush()
	endmethod

	static method damageMain takes nothing returns boolean
		local unit u = GetTriggerUnit()
		local Boss b = bossHandleTable[GetHandleId(u)]
		//call print("invuln: " + I2S(b.isInvuln))
		if b.isInvuln > 0 then
			//heal all damage taken
			call SetUnitState(u, UNIT_STATE_LIFE, GetUnitState(u, UNIT_STATE_LIFE) + GetEventDamage())
		endif
		set u = null
		return false
	endmethod

	static method deathMain takes nothing returns boolean
		local integer i = 0
		local unit u = GetDyingUnit()
		local Boss b = bossHandleTable[GetHandleId(u)]
		loop
			exitwhen i == TOTAL_PLAYERS
			if isUnitInRect(playerDatum[i].pc.u, b.bossRect) then
				call print("advanced the quest for player: " + I2S(i + 1))
				call eventTable[b.deathEvent].do(i)
			endif
			set i = i + 1
		endloop
		call print("doing reset event")
		call eventTable[b.resetEvent].do(0)
		set u = null
		return false
	endmethod
	
	static method enterMain takes nothing returns boolean
        local unit u = GetTriggerUnit()
        local integer pid = GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
		local Boss b = bossHandleTable[GetHandleId(GetTriggeringRegion())]
		if playerDatum[pid].pc.u == u then
			set b.playerCount = b.playerCount + 1
			//call print("player count in enter: " + I2S(b.playerCount))
		endif
		set u = null
		return false
	endmethod

	static method leaveMain takes nothing returns boolean
        local unit u = GetTriggerUnit()
        local integer pid = GetPlayerId(GetOwningPlayer(GetTriggerUnit()))
		local Boss b = bossHandleTable[GetHandleId(GetTriggeringRegion())]
		if playerDatum[pid].pc.u == u then
			set b.playerCount = b.playerCount - 1
			//call print("player count in leave: " + I2S(b.playerCount))
			if b.playerCount <= 0 then //everyone died or retreated
				call print("doing reset event")
				call eventTable[b.resetEvent].do(0)
			endif
		endif
		set u = null
		return false
	endmethod
	
	static method attackMain takes nothing returns nothing
		local Boss b = bossHandleTable[GetHandleId(GetExpiredTimer())]
		local location targetLoc = GetRandomLocInRect(b.bossRect)
		call print("boss is attacking a point now")
		call IssuePointOrderLocBJ(b.bossM.u, "patrol", targetLoc)
		call RemoveLocation(targetLoc)
		set targetLoc = null
	endmethod
		
	method setInvuln takes nothing returns nothing
		set invulnTrig = CreateTrigger()
		call TriggerAddCondition(invulnTrig, Condition(function Boss.damageMain))
		call TriggerRegisterUnitEvent(invulnTrig, bossM.u, EVENT_UNIT_DAMAGED)
	endmethod
	
	method setEnter takes nothing returns nothing
		set enterTrig = CreateTrigger()
        call TriggerAddCondition(enterTrig, Condition(function Boss.enterMain))
        call TriggerRegisterEnterRegion(enterTrig, bossRegion, null)
	endmethod

	method setLeave takes nothing returns nothing
		set leaveTrig = CreateTrigger()
        call TriggerAddCondition(leaveTrig, Condition(function Boss.leaveMain))
        call TriggerRegisterLeaveRegion(leaveTrig, bossRegion, null)
	endmethod

	method setDeath takes nothing returns nothing
		set deathTrig = CreateTrigger()
        call TriggerAddCondition(deathTrig, Condition(function Boss.deathMain))
        call TriggerRegisterUnitEvent(deathTrig, bossM.u, EVENT_UNIT_DEATH)
	endmethod
	
	method setAttack takes nothing returns nothing
		set attackTimer = CreateTimer()
		set bossHandleTable[GetHandleId(attackTimer)] = this
		call TimerStart(attackTimer, ATTACK_TIMER_DURATION, true, function Boss.attackMain)
	endmethod
		
	method spawn takes nothing returns nothing
		local integer level = heroLvl + (playerCount * scaleLvl)
		local unit u = CreateUnitAtLoc(BOT_ENEMY, monsterID, bossLoc, 0)
		call SetHeroLevel(u, level, false)
		set bossM = Monster.create(u, GetPlayerId(BOT_ENEMY))
		call bossM.levelUp(level)
		set bossHandleTable[GetHandleId(bossM.u)] = this
		set isActive = true
		set isInvuln = 0
		call setInvuln()
		call setDeath()
		call eventTable[spawnEvent].do(0)
		call print("invuln level: " + I2S(isInvuln))
	endmethod	
endstruct

private function init takes nothing returns nothing
	set bossHandleTable = Table.create()
endfunction

endlibrary