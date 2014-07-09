library CreepRegion requires MonsterGroupStruct, CreepRegionTable

globals
endglobals



struct CreepRegion
    integer creepTableId = -1 //which CreepTable in the table of CreepTables
    integer freq //chance of a creep spawning
    integer totalPlayers = 0 //how many players in the region
    integer mobSize = 0 //the average number of creeps spawned per attack
    integer mobProb = 0 //for each party member, probability of an additional creep
    integer ambushFreq = 0 //how often ambushes occur (i.e. spawn popping)
	real spawnDistance = SPAWN_DISTANCE
	real ambushDistance = AMBUSH_DISTANCE
    region r //which region must be entered to trigger the creep
    rect rRect //the actual rect/dimensions of the region
    MonsterGroup creeps //all the monsters spawned in the region
    
    static method create takes integer creepTableId, integer freq, integer mobSize, integer mobProb, integer ambushFreq, rect rRect returns thistype
        local thistype this = thistype.allocate()
        set this.creepTableId = creepTableId
        set this.freq = freq
        set this.mobSize = mobSize
        set this.mobProb = mobProb
        set this.ambushFreq = ambushFreq
        set this.rRect = rRect
        set this.r = CreateRegion()
        set this.creeps = MonsterGroup.create(CREEP, GetPlayerId(BOT_ENEMY))
        call RegionAddRect(r, this.rRect)
        call setup()
        return this
    endmethod
    
    static method leaveMain takes nothing returns boolean
        local unit u = GetTriggerUnit()
        local player p = GetOwningPlayer(GetTriggerUnit())
        local integer pid = GetPlayerId(p)
        local CreepRegion cr
        if GetTriggerUnit() == playerDatum[pid].pc.u then
            set cr = findCreepRegion(GetTriggeringRegion())
            if playerDatum[pid].creepRegion == cr.creepTableId then
                set playerDatum[pid].creepRegion = -1
                set playerDatum[pid].creepFreq = 0
            endif
            set cr.totalPlayers = cr.totalPlayers - 1
        endif
        return false
    endmethod
    
    static method enterMain takes nothing returns boolean
        local unit u = GetTriggerUnit()
        local player p = GetOwningPlayer(GetTriggerUnit())
        local integer pid = GetPlayerId(p)
        local CreepRegion cr
        if GetTriggerUnit() == playerDatum[pid].pc.u then
            set cr = findCreepRegion(GetTriggeringRegion())
            set playerDatum[pid].creepRegion = cr.creepTableId
            set playerDatum[pid].creepFreq = cr.freq
            set cr.totalPlayers = cr.totalPlayers + 1
        endif
        return false
    endmethod
    
    method setup takes nothing returns nothing
        local trigger t = CreateTrigger()
        call TriggerAddCondition(t, Condition(function CreepRegion.enterMain))
        call TriggerRegisterEnterRegion(t, this.r, null)
        set t = CreateTrigger()
        call TriggerAddCondition(t, Condition(function CreepRegion.leaveMain))
        call TriggerRegisterLeaveRegion(t, this.r, null)
        set t = null
    endmethod
endstruct
endlibrary