library BossRosevineStruct requires BossStruct

globals
endglobals

struct BossRosevine extends Boss

    static method create takes integer monsterID, integer heroLvl, integer scaleLvl, rect bossRect returns thistype
		local thistype this = thistype.allocate(monsterID, heroLvl, scaleLvl, bossRect)
        return this
    endmethod
endstruct

endlibrary