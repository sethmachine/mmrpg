library MagicKeyStruct

globals
    constant integer QUEST_KEY = 0 //cannot drop these
    constant integer SIDE_KEY = 1 //these can be dropped
endglobals

struct MagicKey
    string name
    integer keyType
    location targetLoc
    boolean toRemove
    
    static method create takes string name, integer keyType, location whichLoc returns thistype
        local thistype this = thistype.allocate()
        set this.name = name
        set this.keyType = keyType
        set this.targetLoc = whichLoc
        set toRemove = false
        return this
    endmethod
    
    method equals takes MagicKey key returns boolean
        if this.name == key.name then
            return true
        endif
        return false
    endmethod
    
    method toString takes nothing returns string
        return this.name
    endmethod
    
    method warp takes integer pid returns nothing
        local integer i = 0
        local unit u = playerDatum[pid].pc.u
        local MonsterGroup party = playerDatum[pid].party
        call DestroyEffect(AddSpecialEffectTarget( "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", u, "origin"))
        loop
            exitwhen i == party.maxSize
            call DestroyEffect(AddSpecialEffectTarget( "Abilities\\Spells\\Human\\MassTeleport\\MassTeleportTarget.mdl", party.monsters[i].u, "origin"))
            set i = i + 1
        endloop
        call SetUnitPositionLoc(u, targetLoc)
        call party.moveGroupToLoc(targetLoc)
		if GetLocalPlayer() == Player(pid) then
			call PanCameraToTimed(GetLocationX(targetLoc), GetLocationY(targetLoc), 0)
		endif
        set u = null
    endmethod
    
    method flush takes nothing returns nothing
        call RemoveLocation(targetLoc)
        set targetLoc = null
    endmethod

endstruct


endlibrary