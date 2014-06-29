library CreepRemoveTimer initializer init requires CreepRegionTable

globals
    constant integer DESPAWN_PERIOD = 20 //how often the timer checks
endglobals

private function main takes nothing returns nothing
    local integer i = 0
    local integer sum = getCreepRegionTableSize()
    local MonsterGroup creeps
    local Monster victim
    //call printl("Starting creep remove main")
    loop
        exitwhen i == sum
        if creepRegionTable[i].totalPlayers == 0 then //the region is empty, despawn stuff
            //call printl("Found an empty region")
            if creepRegionTable[i].creeps.size > 0 then //make sure the region still has creeps in it
                //call printl("Removing a creep from empty region")
                set creeps = creepRegionTable[i].creeps
                set victim = creeps.getFirstMonster() //take the monster which has been out the longest
                call creeps.removeMonster(victim) //remove the monster from the group
                call RemoveUnit(victim.u) //remove the victim unit
                set victim.u = null
                call victim.destroy() //destroy the victim struct to free up a space
            endif
        endif
        set i = i + 1
    endloop
endfunction


private function init takes nothing returns nothing
    local timer t = CreateTimer()
    call TimerStart(t, DESPAWN_PERIOD, true, function main)
endfunction

endlibrary