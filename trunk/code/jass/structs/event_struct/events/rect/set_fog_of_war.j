library SetFogOfWar requires EventStruct

globals
	//fog states
	//FOG_OF_WAR_VISIBLE
	//FOG_OF_WAR_MASKED
endglobals

//allows whether a player can teleport, i.e. use warp staff
struct EventSetFogOfWar extends Event
	rect r
	fogstate fogState
	boolean state
	fogmodifier fogMod

    static method create takes rect whichRect, fogstate fogState, boolean state returns thistype
        local thistype this = thistype.allocate()
		set r = whichRect
		set this.fogState = fogState
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		if state then
			set fogMod = CreateFogModifierRect(players[pid], fogState, r, true, false)
			call FogModifierStart(fogMod)
		elseif fogMod != null then
			call DestroyFogModifier(fogMod)
			set fogMod = null
		endif
		call doNext(pid)
	endmethod
endstruct
endlibrary