library SetWarp requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventSetWarp extends Event
	integer warpIndex = 0
	boolean state = false
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod

	method do takes integer pid returns nothing
		set playerDatum[pid].warps[warpIndex].isActive = state
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setWarp takes integer whichWarp, boolean state returns nothing
		set this.warpIndex = whichWarp
		set this.state = state
	endmethod
endstruct
endlibrary