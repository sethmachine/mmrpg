library ChaplainStruct requires PlayerDataTable

globals
    constant string CHAPLAIN_HEADER = PURPLE + "Royal Chaplain Ricard|r:" //the name of the character
    constant string CHAPLAIN_MSG = "\nGreetings, young master."
    constant integer HEAL_BTTN = 1 //used to revive all dead party monsters + heal the team and hero
    constant string HEAL_BTTN_MSG = "Heal party."
endglobals


private function introMain takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0
    local MonsterGroup party
    local Monster m
    local trigger t
    local PlayerData playerData = playerDatum[pid]
    local unit u = playerData.pc.u
    local NPC npc = playerData.npcs[ROYAL_CHAPLAIN]
    if b == npc.twoD[INTRO * MAX_BTTNS].button[HEAL_BTTN] then
        call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR,  CHAPLAIN_HEADER + " Let light restore you and your party!")
        set party = playerData.party
        loop
            exitwhen i == MAX_PARTY_SIZE
            set m = party.monsters[i]
            if m.isDead() then
                call ReviveHeroLoc(m.u, GetUnitLoc(u), true)
            elseif m != 0 then
				call SetUnitLifePercentBJ(m.u, 100.0)
				call SetUnitManaPercentBJ(m.u, 100.0)
            endif
            set i = i + 1
        endloop
		call SetUnitLifePercentBJ(u, 100.0)
		call SetUnitManaPercentBJ(u, 100.0)
        if p == GetLocalPlayer() then
            call StartSound(gg_snd_RestorationPotion)
        endif
    endif
    set b = null
    set t = null
    set u = null
    return false
endfunction

struct Chaplain extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        local trigger t = CreateTrigger()
        set oneD.string[INTRO] = CHAPLAIN_HEADER + CHAPLAIN_MSG
        call addBttnToDialog(INTRO, HEAL_BTTN_MSG)
        call TriggerRegisterDialogEvent(t, oneD.dialog[INTRO])
        call TriggerAddCondition(t, Condition(function introMain))
        set t = null
        return this
    endmethod
endstruct

endlibrary