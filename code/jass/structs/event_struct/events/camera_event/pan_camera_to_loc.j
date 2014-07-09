library PanCameraToLoc requires EventStruct

globals
	//fog states
	//FOG_OF_WAR_VISIBLE
	//FOG_OF_WAR_MASKED
endglobals

struct EventPanCameraToLoc extends Event
	location loc
	real duration
	
    static method create takes location whichLoc, real duration returns thistype
        local thistype this = thistype.allocate()
		set this.loc = whichLoc
		set this.duration = duration
        return this
    endmethod

	method do takes integer pid returns nothing
		if GetLocalPlayer() == players[pid] then
			call PanCameraToTimed(GetLocationX(loc), GetLocationY(loc), duration)
		endif
		call doNext(pid)
	endmethod
endstruct

endlibrary