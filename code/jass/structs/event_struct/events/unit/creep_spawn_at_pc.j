library CreepSpawnAtPC requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventCreepSpawnAtPC extends Event
	integer monsterId = 0
	integer lvl = 0
	integer rcLvl = 0
	integer gender = 0
	boolean hasOwner = false
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
			
	method do takes integer pid returns nothing
		local location loc = GetUnitLoc(playerDatum[pid].pc.u)
		local unit u = CreateUnitAtLoc(BOT_ENEMY, monsterId, loc, 0)
		local Monster m = Monster.create(u, GetPlayerId(BOT_ENEMY), gender)
		call SetHeroLevel(u, lvl, true)
		call m.newLevelUp(lvl)
		set m.rcLvl = this.rcLvl
		if hasOwner then
			set m.owner = pid
		endif
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setCreepSpawnAtPC takes integer monsterId, integer lvl, integer rcLvl, integer gender, boolean hasOwner returns nothing
		set this.monsterId = monsterId
		set this.lvl = lvl
		set this.rcLvl = rcLvl
		set this.gender = gender
		set this.hasOwner = hasOwner
	endmethod
endstruct
endlibrary