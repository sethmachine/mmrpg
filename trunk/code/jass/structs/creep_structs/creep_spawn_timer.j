library CreepSpawnTimer initializer init requires Util

globals
    constant integer SPAWN_PERIOD = 20 //how often the timer checks
    constant real SPAWN_DISTANCE = 900.0 //how far away a creep spawns
    constant real AMBUSH_DISTANCE = 800.0
	constant real TREE_DISTANCE = 400.0
endglobals

//! textmacro CreepTimerMain takes pid
private function main_$pid$ takes nothing returns nothing
    local location playerLoc
    local location targetLoc
    local real targetLocX
    local real targetLocY
    local integer mobSize
    local integer mobProb
    local integer i = 0
    local Monster creep
    local PlayerData pd = playerDatum[$pid$]
    local CreepRegion cr
    //call printl("Starting creep spawn main")
    if pd.creepRegion >= 0 then
		//call printl("You are in CreepRegion: " + I2S(pd.creepRegion))
        if pd.creepFreq >= GetRandomInt(0, 100) then
            set cr = creepRegionTable[pd.creepRegion]
            set mobSize = cr.mobSize
            if pd.party.size > 1 then
                set mobProb = cr.mobProb
                loop
                    exitwhen i == pd.party.size - 1
                    if mobProb >= GetRandomInt(0, 100) then
                        set mobSize = mobSize + 1
                    endif
                    set i = i + 1
                endloop
            endif
            set i = 0
            set playerLoc = GetUnitLoc(pd.pc.u)
            loop
                exitwhen i == mobSize
                if cr.creeps.size < cr.creeps.maxSize then
                    if cr.ambushFreq >= GetRandomInt(0, 100) then //ambush time
                        set targetLoc = getRandomReachableLoc(playerLoc, AMBUSH_DISTANCE, TREE_DISTANCE)
                        set creep = creepTables[pd.creepRegion].genCreep(targetLoc)
                        call cr.creeps.addMonster(creep)
                        call IssuePointOrderLoc(creep.u, "attack", playerLoc)
                        call DisplayTimedTextToPlayer(players[$pid$], 0, 0, 7, RED + "MONSTER AMBUSH: |r" + GOLD + creep.toString() + RED + " suddenly attacked!")
                        if GetLocalPlayer() == players[$pid$] then
                            call StartSound(gg_snd_EnemyAppears)
                        endif
                    else
                        set targetLoc = getRandomReachableLoc(playerLoc, SPAWN_DISTANCE, TREE_DISTANCE)
                        set creep = creepTables[pd.creepRegion].genCreep(targetLoc)
                        call cr.creeps.addMonster(creep)
                    endif
                    call RemoveLocation(targetLoc)
                else
                    //call printl("Creepgroup is full at " + I2S(cr.creeps.size) + " creeps.")
                endif
                set i = i + 1
            endloop
            set pd.creepFreq = creepRegionTable[pd.creepRegion].freq
        else
            //call printl("Failed to spawn a creep this time")
            set pd.creepFreq = pd.creepFreq + 20
        endif
    else
        //call DisplayTimedTextToPlayer(players[$pid$], 0, 0, 10, "Not in a creep region")
    endif
    call RemoveLocation(playerLoc)
    call RemoveLocation(targetLoc)
    set playerLoc = null
    set targetLoc = null
endfunction
//! endtextmacro

//! runtextmacro CreepTimerMain("0")
//! runtextmacro CreepTimerMain("1")
//! runtextmacro CreepTimerMain("2")
//! runtextmacro CreepTimerMain("3")
//! runtextmacro CreepTimerMain("4")
//! runtextmacro CreepTimerMain("5")
//! runtextmacro CreepTimerMain("6")
//! runtextmacro CreepTimerMain("7")
//! runtextmacro CreepTimerMain("8")
//! runtextmacro CreepTimerMain("9")

private function init takes nothing returns nothing
    local timer t
    //! textmacro CreepTimer takes pid
    set t = CreateTimer()
    call TimerStart(t, SPAWN_PERIOD, true, function main_$pid$)
    //! endtextmacro
    
    //! runtextmacro CreepTimer("0")
    //! runtextmacro CreepTimer("1")
    //! runtextmacro CreepTimer("2")
    //! runtextmacro CreepTimer("3")
    //! runtextmacro CreepTimer("4")
    //! runtextmacro CreepTimer("5")
    //! runtextmacro CreepTimer("6")
    //! runtextmacro CreepTimer("7")
    //! runtextmacro CreepTimer("8")
    //! runtextmacro CreepTimer("9")
endfunction

endlibrary