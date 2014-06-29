scope FeedTrig initializer init

globals
    constant integer FEED_ABIL = 'AF01' //3% increase
    constant integer PORKCHOP_ABIL = 'AF02'//6% increase
    constant integer RIB_ABIL = 'AF03' //10% increase
    constant integer SIRLOIN_ABIL = 'AF04'//14 % increase
    //percent gains
    constant integer FEED_GAIN = 3
    constant integer PORKCHOP_GAIN = 6
    constant integer RIB_GAIN = 10
    constant integer SIRLOIN_GAIN = 14
endglobals

private function main takes nothing returns boolean
    local player p = GetOwningPlayer(GetTriggerUnit())
    local integer pid = GetPlayerId(p)
    local integer foodType = GetSpellAbilityId()
    local Monster creep
    if foodType >= FEED_ABIL and foodType <= SIRLOIN_ABIL then
        set creep = getCreepFromCreepRegionTable(GetSpellTargetUnit())
        if creep != 0 then
            if creep.rcLvl > 0 then
                call DisplayTimedTextToPlayer(p, 0, 0, 10, "Fed meat to " + GetHeroProperName(creep.u))
                if foodType == FEED_ABIL then
                    set creep.rcLvl = creep.rcLvl + FEED_GAIN
                elseif foodType == PORKCHOP_ABIL then
                    set creep.rcLvl = creep.rcLvl + PORKCHOP_GAIN
                elseif foodType == RIB_ABIL then
                    set creep.rcLvl = creep.rcLvl + RIB_GAIN
                elseif foodType == SIRLOIN_ABIL then
                    set creep.rcLvl = creep.rcLvl + SIRLOIN_GAIN
                endif
				call DestroyEffect(AddSpecialEffectTarget("Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl", creep.u, "origin"))
                //call DisplayTimedTextToPlayer(p, 0, 0, 10, "RC level is now " + I2S(creep.rcLvl))
            else
                call DisplayTimedTextToPlayer(p, 0, 0, 10, GetHeroProperName(creep.u) + " cast aside the meat!  You can't recruit this monster!")
            endif
        else
            call DisplayTimedTextToPlayer(p, 0, 0, 10, "Only give meat to wild monsters!")
        endif
    endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(t, Condition(function main))
endfunction

endscope