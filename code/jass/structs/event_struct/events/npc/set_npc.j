library SetNPC requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventSetNPC extends Event
	integer npcIndex = 0
	boolean state = false
	
    static method create takes integer npcIndex, boolean state returns thistype
        local thistype this = thistype.allocate()
		set this.npcIndex = npcIndex
		set this.state = state
        return this
    endmethod

	method do takes integer pid returns nothing
		set playerDatum[pid].npcs[npcIndex].isActive = state
		call doNext(pid)
	endmethod
endstruct
endlibrary