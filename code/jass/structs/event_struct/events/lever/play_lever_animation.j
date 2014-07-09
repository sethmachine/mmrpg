library PlayLeverAnimation requires EventStruct

globals
endglobals

struct EventPlayLeverAnimation extends Event
	string animation
	integer leverIndex

    static method create takes integer whichLever, string whichAnimation returns thistype
        local thistype this = thistype.allocate()
		set animation = whichAnimation
		set leverIndex = whichLever
        return this
    endmethod

	method do takes integer pid returns nothing
		call SetUnitAnimation(leverTable[leverIndex].u, animation)
		call doNext(pid)
	endmethod
endstruct

endlibrary