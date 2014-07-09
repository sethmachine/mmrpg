library PlaySillyMusic requires EventStruct

globals
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventPlaySillyMusic extends Event

    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod

	method do takes integer pid returns nothing
		if GetLocalPlayer() == players[pid] then
			call StartSound(gg_snd_strange_world_short)
		endif
		call doNext(pid)
	endmethod
endstruct
endlibrary