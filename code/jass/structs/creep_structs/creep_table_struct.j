library CreepTableStruct requires MonsterGroupStruct

globals
    constant integer CREEPS_PER_TABLE = 20
    constant player BOT_ENEMY = Player(11)
    constant integer ABIL_WANDER = 'Awan'
endglobals

struct CreepTable
    integer array creepIds[CREEPS_PER_TABLE]
    integer minLevel = 1 //lowest level a creep can be
    integer maxLevel = 1 //highest level a creep can be
    integer size = 0 //current number of creeps in the table
    
    static method create takes integer minLevel, integer maxLevel returns thistype
        local thistype this = thistype.allocate()
        set this.minLevel = minLevel
        set this.maxLevel = maxLevel
        return this
    endmethod
    
    method add takes integer creepId returns boolean
        local integer i = 0 //counter
        loop
            exitwhen i == CREEPS_PER_TABLE
            if creepIds[i] == 0 then //the slot is empty
                set creepIds[i] = creepId
                set size = size + 1
                return true
            endif
            set i = i + 1
        endloop
        return false
    endmethod
    
    method genCreep takes location targetLoc returns Monster
        local Monster m
        local integer level = GetRandomInt(minLevel, maxLevel)
        local integer i = GetRandomInt(0, size - 1)
        local unit u = CreateUnitAtLoc(BOT_ENEMY, creepIds[i], targetLoc, 0)
        call SetHeroLevel(u, level, false)
        call UnitAddAbility(u, ABIL_WANDER)
        set m = Monster.create(u, GetPlayerId(BOT_ENEMY), 0)
        call m.newLevelUp(level)
        return m
    endmethod
    
endstruct
endlibrary