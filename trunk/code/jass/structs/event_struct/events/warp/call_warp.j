library CallWarp requires EventStruct

globals
endglobals

//forces a player to use a warp
struct EventCallWarp extends Event
	integer warpIndex = 0
    static method create takes integer warpIndex returns thistype
        local thistype this = thistype.allocate()
		set this.warpIndex = warpIndex
        return this
    endmethod

	method do takes integer pid returns nothing
		local Warp w = playerDatum[pid].warps[warpIndex]
		if w.isActive == false then
			set w.isActive = true
		endif
		call w.warp(pid)
		set w.isActive = false
		call doNext(pid)
	endmethod
endstruct
endlibrary