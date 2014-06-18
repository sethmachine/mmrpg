library EventStruct requires Util

globals
	Event array eventTable[JASS_MAX_ARRAY_SIZE]
endglobals

//a representation of an event
//an event is essentially anything that can happen
struct Event
	Event next //the next event to be called
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
	
	//calls another event from the eventTable 
	//forces it to call its do() method
	method doNext takes integer pid returns nothing
		if next != 0 then
			call next.do(pid)
		endif
	endmethod
	
	static method join takes integer pid, integer eventIndex returns nothing
		call eventTable[eventIndex].do(pid)
	endmethod
	
    //nulls and destroys all objects
    stub method flush takes nothing returns nothing
    endmethod
	
	stub method do takes integer pid returns nothing
		call print("WARNING: stub method not implemented ")
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	stub method setWaterTint takes integer red, integer green, integer blue, integer alpha returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod
	
	stub method setItemCreateInRect takes rect whichRect, integer itemId, integer quant returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod

	stub method setItemCreateAtLoc takes location whichLoc, integer itemId, integer quant returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod

	stub method setItemCreateAtPC takes integer itemId, integer quant returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod

	stub method setCreepSpawnAtLoc takes location whichLoc, integer monsterId, integer lvl, integer rcLvl, integer gender, boolean hasOwner returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod

	stub method setCreepSpawnAtPC takes integer monsterId, integer lvl, integer rcLvl, integer gender, boolean hasOwner returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod
	
	stub method setEnableQuest takes string whichQuest returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod
	
	
endstruct
endlibrary