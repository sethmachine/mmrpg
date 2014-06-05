library WarpStruct requires PlayerDataTable

globals
endglobals



struct Warp
    integer warpIndex //index in player warp array
    boolean isActive //whether a player can use the warp
    location targetLoc //the place where the player is teleported to
    boolean fanfare //whether any special effects are used, e.g. "mass teleport"
    string name

    static method create takes string name, location targetLoc returns thistype
        local thistype this = thistype.allocate()
        set this.targetLoc = targetLoc
        set this.name = name
        set isActive = true
        set fanfare = false
        return this
    endmethod
    
    method warp takes integer pid returns nothing
        local integer i = 0
        local unit u = playerDatum[pid].pc.u
        local MonsterGroup party = playerDatum[pid].party
        if fanfare then
            call DestroyEffect(AddSpecialEffectTarget( "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", u, "origin"))
            loop
                exitwhen i == party.maxSize
                call DestroyEffect(AddSpecialEffectTarget( "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", party.monsters[i].u, "origin"))
                set i = i + 1
            endloop
        endif
        call IssueImmediateOrder(u, "stop")
        call SetUnitPositionLoc(u, targetLoc)
        call party.moveGroupToLoc(targetLoc)
        call IssueImmediateOrder(u, "stop")
        if GetLocalPlayer() == Player(pid) then
            call PanCameraToTimed(GetLocationX(targetLoc), GetLocationY(targetLoc), 0)
        endif
        set u = null
    endmethod
    
endstruct
endlibrary