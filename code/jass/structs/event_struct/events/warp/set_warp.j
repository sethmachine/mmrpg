library SetWarp requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventSetWarp extends Event
	integer warpIndex = 0
	boolean state = false
	
    static method create takes integer warpIndex, boolean state returns thistype
        local thistype this = thistype.allocate()
		set this.warpIndex = warpIndex
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		set playerDatum[pid].warps[warpIndex].isActive = state
	endmethod
endstruct
endlibrary