library EventWait requires EventStruct

globals
endglobals

//waits x seconds before another event
struct EventWait extends Event
	
    static method create takes real duration returns thistype
        local thistype this = thistype.allocate()
		set this.wait = duration
        return this
    endmethod

	method do takes integer pid returns nothing
		//call print("doing wait event")
		call doWait(pid, this.wait)
	endmethod
endstruct
endlibrary