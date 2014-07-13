library MessagePlayer requires EventStruct

globals
endglobals

//displays a timed text message to a player
struct EventMessagePlayer extends Event
	string msg
	real duration
	
    static method create takes real duration, string whichStr returns thistype
        local thistype this = thistype.allocate()
		set this.msg = whichStr
		set this.duration = duration
        return this
    endmethod

	method do takes integer pid returns nothing
		call msgP(pid, duration, msg)
		call doNext(pid)
	endmethod
endstruct
endlibrary