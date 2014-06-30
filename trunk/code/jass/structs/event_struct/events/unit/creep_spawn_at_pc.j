library CreepSpawnAtPC requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventCreepSpawnAtPC extends Event
	integer monsterId = 0
	integer lvl = 0
	integer rcLvl = 0
	boolean hasOwner = false
	
    static method create takes integer monsterId, integer lvl, integer rcLvl, boolean hasOwner returns thistype
        local thistype this = thistype.allocate()
		set this.monsterId = monsterId
		set this.lvl = lvl
		set this.rcLvl = rcLvl
		set this.hasOwner = hasOwner
        return this
    endmethod
			
	method do takes integer pid returns nothing
		local PlayerData pd = playerDatum[pid]
		local location loc = GetUnitLoc(pd.pc.u)
		local unit u = CreateUnitAtLoc(BOT_ENEMY, monsterId, loc, 0)
		local Monster m = Monster.create(u, GetPlayerId(BOT_ENEMY))
		set m.eventMonster = true
		call SetHeroLevel(u, lvl, false)
		call m.levelUp(lvl)
		set m.rcLvl = this.rcLvl
		if hasOwner then
			set m.owner = pid
		endif
		call pd.eventMonsters.addMonster(m)
		call doNext(pid)
	endmethod
endstruct
endlibrary