library ReturnPlayer requires EventStruct

globals
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventReturnPlayer extends Event

    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod

	method do takes integer pid returns nothing
		local PlayerData pd = playerDatum[pid]
		local MonsterGroup party = playerDatum[pid].party
		local Monster m
		local integer i = 0
		call SetUnitOwner(pd.pc.u, players[pid], true)
		loop
			exitwhen i == MAX_PARTY_SIZE
			set m = party.monsters[i]
			if m != 0 then
				call SetUnitOwner(m.u, players[pid], true)
			endif
			set i = i + 1
		endloop
		call doNext(pid)
	endmethod
endstruct
endlibrary