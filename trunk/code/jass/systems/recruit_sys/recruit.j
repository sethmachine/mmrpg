library RecruitTrig requires CreepRegionTable

globals
endglobals

private function recruitMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local Monster creep = playerDatum[pid].recruit
    local CreepRegion cr
    local button b = GetClickedButton()
    if b == playerDatum[pid].recruitYes then
        set cr = getCreepRegionByCreep(creep)
        if playerDatum[pid].party.addMonster(creep) then
            call cr.creeps.removeMonster(creep)
            set creep.pid = pid
            call SetUnitOwner(creep.u, p, true)
            call ReviveHeroLoc(creep.u, GetUnitLoc(playerDatum[pid].pc.u), false)
            call UnitRemoveAbility(creep.u, ABIL_WANDER)
            call DisplayTimedTextToPlayer(p, 0, 0, 10, RED + "MONSTER JOIN:|r " + GOLD + GetHeroProperName(creep.u) + "|r has joined your party!")
        elseif playerDatum[pid].farm.addMonster(creep) then
            call cr.creeps.removeMonster(creep)
            set creep.pid = pid
            call SetUnitOwner(creep.u, players[pid], true)
            call SetUnitOwner(creep.u, BOT_ALLY, false)
            call ReviveHeroLoc(creep.u, GetUnitLoc(playerDatum[pid].pc.u), false)
            call DisplayTimedTextToPlayer(p, 0, 0, 10, RED + "MONSTER JOIN:|r " + GOLD + GetHeroProperName(creep.u) + "|r has been sent to the farm!")
            call SetUnitPositionLoc(creep.u, GetUnitLoc(FARMER_UNIT))
            call UnitAddAbility(creep.u, ABIL_WANDER)
        else //no room in party or farm
            call DisplayTimedTextToPlayer(p, 0, 0, 10, RED + "MONSTER JOIN:|r " + GOLD + GetHeroProperName(creep.u) + "|r has been turned away--both your party and farm are full.")
        endif
    elseif b == playerDatum[pid].recruitNo then
        call DisplayTimedTextToPlayer(p, 0, 0, 10, RED + "MONSTER JOIN:|r " + GOLD + GetHeroProperName(creep.u) + "|r sadly turned away...")
    endif
    set playerDatum[pid].recruit = 0
    set b = null
    set p = null
    call DestroyTrigger(GetTriggeringTrigger())
    return false
endfunction

function recruitExec takes player p, integer pid, Monster creep returns nothing
    local trigger t
    if creep != 0 then
        if creep.rcLvl > 0 then
            if creep.rcLvl >= GetRandomInt(0, 100) then
                set t = CreateTrigger()
                call TriggerRegisterDialogEvent(t, playerDatum[pid].recruitDialog)
                call TriggerAddCondition(t, Condition(function recruitMain))
                set playerDatum[pid].recruit = creep
                call DialogSetMessage(playerDatum[pid].recruitDialog, GetHeroProperName(creep.u) + " got up hopefully.\nAccept this monster?")
                call DialogDisplay(p, playerDatum[pid].recruitDialog, true)
                if GetLocalPlayer() == p then
                    call StartSound(gg_snd_Capture)
                endif
            endif
        endif
    endif
endfunction

endlibrary