library CreepSpawnAtPC requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventCreepSpawnAtLoc extends Event
	location loc = null
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
		local unit u = CreateUnitAtLoc(BOT_ENEMY, monsterId, loc, 0)
		local Monster creep = Monster.create(creep, GetPlayerId(BOT_ENEMY), gender)
		call SetHeroLevel(u, lvl, true)
		call creep.newLevelUp(lvl)
		set creep.rcLvl = this.rcLvl
		if hasOwner then
			set creep.owner = pid
		endif
		call RemoveLocation(loc)
		set loc = null
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setCreepSpawnAtLoc takes location whichLoc, integer monsterId, integer lvl, integer rcLvl, integer gender, boolean hasOwner returns nothing
		set this.loc = whichLoc
		set this.monsterId = monsterId
		set this.lvl = lvl
		set this.rcLvl = rcLvl
		set this.gender = gender
		set this.hasOwner = hasOwner
	endmethod
endstruct
endlibrary