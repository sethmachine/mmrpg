library SetGlobalWarp requires EventStruct

globals
endglobals

//disables or enables a warp for all players
struct EventSetGlobalWarp extends Event
	integer warpIndex = 0
	boolean state = false
	
    static method create takes integer warpIndex, boolean state returns thistype
        local thistype this = thistype.allocate()
		set this.warpIndex = warpIndex
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		local integer i = 0
		loop
			exitwhen i == TOTAL_PLAYERS
			set playerDatum[i].warps[warpIndex].isActive = state
			set i = i + 1
		endloop
		call doNext(pid)
	endmethod
endstruct
endlibrary