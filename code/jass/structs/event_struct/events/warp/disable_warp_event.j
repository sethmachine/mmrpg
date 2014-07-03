library DisableWarpEvent requires EventStruct

globals
endglobals

//turns off the event for a warp
struct EventDisableWarpEvent extends Event
	integer warpIndex = 0
	boolean state = false
	
    static method create takes integer warpIndex returns thistype
        local thistype this = thistype.allocate()
		set this.warpIndex = warpIndex
        return this
    endmethod

	method do takes integer pid returns nothing
		set playerDatum[pid].warps[warpIndex].warpEvent = 0
		call doNext(pid)
	endmethod
endstruct
endlibrary