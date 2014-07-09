library SpawnBoss requires EventStruct

globals
endglobals

struct EventSpawnBoss extends Event
	Boss boss

    static method create takes integer whichBoss returns thistype
        local thistype this = thistype.allocate()
		set this.boss = bossTable[whichBoss]
        return this
    endmethod

	method do takes integer pid returns nothing
		if boss.isActive == false then
			call boss.spawn()
		endif
		call doNext(pid)
	endmethod
endstruct

endlibrary