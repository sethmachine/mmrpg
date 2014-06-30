library CreepSpawnAtLoc requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventCreepSpawnAtLoc extends Event
	location loc = null
	integer monsterId = 0
	integer lvl = 0
	integer rcLvl = 0
	boolean hasOwner = false
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
			
	method do takes integer pid returns nothing
		local unit u = CreateUnitAtLoc(BOT_ENEMY, monsterId, loc, 0)
		local Monster m = Monster.create(u, GetPlayerId(BOT_ENEMY))
		call SetHeroLevel(u, lvl, true)
		call m.levelUp(lvl)
		set m.rcLvl = this.rcLvl
		if hasOwner then
			set m.owner = pid
		endif
		call RemoveLocation(loc)
		set loc = null
	endmethod
endstruct
endlibrary