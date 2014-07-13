library SetLeverInvulnerable requires EventStruct

globals
endglobals

struct EventSetLeverInvulnerable extends Event
	integer leverIndex
	boolean state

    static method create takes integer whichLever, boolean state returns thistype
        local thistype this = thistype.allocate()
		set leverIndex = whichLever
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		call SetUnitInvulnerable(leverTable[leverIndex].u, state)
		call doNext(pid)
	endmethod
endstruct

endlibrary