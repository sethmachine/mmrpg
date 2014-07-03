library PlayerDance requires EventStruct

globals
	constant real DANCE_DIAMETER = 200.0
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventPlayerDance extends Event

    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod

	method do takes integer pid returns nothing
		local PlayerData pd = playerDatum[pid]
		local MonsterGroup party = playerDatum[pid].party
		local Monster m
		local location loc = GetUnitLoc(pd.pc.u)
		local location targetLoc
		local integer i = 0
		loop
			exitwhen i == MAX_PARTY_SIZE
			set m = party.monsters[i]
			if m != 0 then
				set targetLoc = getRandomPointOnCircle(loc, SFX_DIAMETER)
				call IssuePointOrderLoc(m.u, "move", targetLoc)
				call SetUnitFacingToFaceUnitTimed(pd.pc.u, m.u, 0.5)
				call RemoveLocation(targetLoc)
				set targetLoc = null
			endif
			set i = i + 1
		endloop
		call doWait(pid, this.wait)
	endmethod
endstruct
endlibrary