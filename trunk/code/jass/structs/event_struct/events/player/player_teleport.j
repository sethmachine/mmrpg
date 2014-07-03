library SetPlayerTeleport requires EventStruct

globals
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventSetPlayerTeleport extends Event
	boolean state
	
    static method create takes boolean state returns thistype
        local thistype this = thistype.allocate()
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		set playerDatum[pid].canTeleport = state
	endmethod
endstruct
endlibrary