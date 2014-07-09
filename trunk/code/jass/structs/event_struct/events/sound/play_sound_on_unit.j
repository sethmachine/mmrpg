library PlaySoundOnUnit requires EventStruct

globals
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventPlaySoundOnUnit extends Event
	sound threeDSound
	unit u

    static method create takes sound whichSound, unit whichUnit returns thistype
        local thistype this = thistype.allocate()
		set this.threeDSound = whichSound
		set this.u = u
        return this
    endmethod

	method do takes integer pid returns nothing
		call PlaySoundOnUnitBJ(threeDSound, 100.00, u)
		call doNext(pid)
	endmethod
endstruct

endlibrary