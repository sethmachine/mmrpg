library SetNPCMsg requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventSetNPCMsg extends Event
	integer npcIndex
	integer dialogNum = INTRO
	string msg
	
    static method create takes integer npcIndex, integer dialogNum, string msg returns thistype
        local thistype this = thistype.allocate()
		set this.npcIndex = npcIndex
		set this.dialogNum = dialogNum
		set this.msg = msg
        return this
    endmethod

	method do takes integer pid returns nothing
		//set playerDatum[pid].npcs[npcIndex].oneD.string[dialogNum] = msg
		call doNext(pid)
	endmethod
endstruct
endlibrary