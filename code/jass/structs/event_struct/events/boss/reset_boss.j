library ResetBoss requires EventStruct

globals
endglobals

struct EventResetBoss extends Event
	Boss boss

    static method create takes integer whichBoss returns thistype
        local thistype this = thistype.allocate()
		set this.boss = bossTable[whichBoss]
        return this
    endmethod

	method do takes integer pid returns nothing
		call boss.reset()
		call doNext(pid)
	endmethod
endstruct

endlibrary