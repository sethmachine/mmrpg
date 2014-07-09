library BossTable initializer init requires BossStruct

globals
    constant integer TOTAL_BOSSES = 10
    Boss array bossTable[TOTAL_BOSSES]
    private timer t
endglobals


private function fillTable takes nothing returns nothing
    local integer i = 0
	//*****************************
	//* Rosevine/Flaaghra
	//*****************************
    set bossTable[i] = Boss.create(ROSEVINE, 20, 10, SUNCHAMBER_BOSS_RECT)
	set bossTable[i].spawnEvent = ROSEVINE_SPAWN_E
	set bossTable[i].resetEvent = ROSEVINE_RESET_E
	set bossTable[i].deathEvent = ROSEVINE_DEATH_E
    set i = i + 1    
    call DestroyTimer(t)
    set t = null
endfunction
            
private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary
