library SetBossUnitScale requires EventStruct

globals
endglobals

struct EventSetBossUnitScale extends Event
	Boss boss
	real scale

    static method create takes integer whichBoss, real scale returns thistype
        local thistype this = thistype.allocate()
		set this.boss = bossTable[whichBoss]
		set this.scale = scale
        return this
    endmethod

	method do takes integer pid returns nothing
		local real newScale = boss.scale + this.scale
		call SetUnitScale(boss.bossM.u, newScale, newScale, newScale)
		set boss.scale = newScale
		call doNext(pid)
	endmethod
endstruct

endlibrary