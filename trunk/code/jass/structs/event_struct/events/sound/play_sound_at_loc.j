library PlaySoundAtLoc requires EventStruct

globals
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventPlaySoundAtLoc extends Event
	sound threeDSound
	location loc

    static method create takes sound whichSound, location whichLoc returns thistype
        local thistype this = thistype.allocate()
		set this.threeDSound = whichSound
		set this.loc = whichLoc
        return this
    endmethod

	method do takes integer pid returns nothing
		call PlaySoundAtPointBJ(threeDSound, 100.0, loc, 0.0)
		call doNext(pid)
	endmethod
endstruct
endlibrary