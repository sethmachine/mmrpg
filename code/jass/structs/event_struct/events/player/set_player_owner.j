library SetPlayerOwner requires EventStruct

globals
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventSetPlayerOwner extends Event
	player owner

    static method create takes player owner returns thistype
        local thistype this = thistype.allocate()
		set this.owner = owner
        return this
    endmethod

	method do takes integer pid returns nothing
		local PlayerData pd = playerDatum[pid]
		local MonsterGroup party = playerDatum[pid].party
		local Monster m
		local integer i = 0
		call SetUnitOwner(pd.pc.u, owner, false)
		loop
			exitwhen i == MAX_PARTY_SIZE
			set m = party.monsters[i]
			if m != 0 then
				call SetUnitOwner(m.u, owner, false)
			endif
			set i = i + 1
		endloop
		call doNext(pid)
	endmethod
endstruct
endlibrary