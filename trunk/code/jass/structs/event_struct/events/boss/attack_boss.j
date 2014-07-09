library AttackBoss requires EventStruct

globals
endglobals

//causes the boss to begin attacking
struct EventAttackBoss extends Event
	Boss boss

    static method create takes integer whichBoss returns thistype
        local thistype this = thistype.allocate()
		set this.boss = bossTable[whichBoss]
        return this
    endmethod

	method do takes integer pid returns nothing
		call boss.setAttack()
		call doNext(pid)
	endmethod
endstruct

endlibrary