library ResetLever requires EventStruct

globals
endglobals

struct EventResetLever extends Event
	integer leverIndex

    static method create takes integer whichLever returns thistype
        local thistype this = thistype.allocate()
		set leverIndex = whichLever
        return this
    endmethod

	method do takes integer pid returns nothing
		call leverTable[leverIndex].reset()
		call doNext(pid)
	endmethod
endstruct

endlibrary