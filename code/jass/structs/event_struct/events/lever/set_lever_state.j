library SetLeverState requires EventStruct

globals
endglobals

struct EventSetLeverState extends Event
	integer leverIndex
	boolean state

    static method create takes integer whichLever, boolean state returns thistype
        local thistype this = thistype.allocate()
		set leverIndex = whichLever
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		set leverTable[leverIndex].state = state
		call doNext(pid)
	endmethod
endstruct

endlibrary