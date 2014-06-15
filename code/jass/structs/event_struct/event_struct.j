library EventStruct requires Util

globals
	Event array eventTable[JASS_MAX_ARRAY_SIZE]
endglobals

//a representation of an event
//an event is essentially anything that can happen
struct Event
	integer next = 0 //the index of the next event to be called
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
	
	//calls another event from the eventTable 
	//forces it to call its do() method
	method doNext takes integer pid returns nothing
		if next != 0 then
			call eventTable[eventIndex].do(pid)
		endif
	endmethod
	
	static method join takes integer pid, integer eventIndex returns nothing
		call eventTable[eventIndex].do(pid)
	endmethod
	
    //nulls and destroys all objects
    stub method flush takes nothing returns nothing
    endmethod
	
	stub method do takes integer pid returns nothing
		call DisplayTimedTextToPlayer(Player(0), 0, 0, 7, "WARNING: This stub method for Event Struct is not implemented!")
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	stub method setWaterTintEvent takes integer red, integer green, integer blue, integer alpha returns nothing
		call DisplayTimedTextToPlayer(Player(0), 0, 0, 7, "WARNING: This stub method for Event Struct is not implemented!")
	endmethod
	
	stub method setItemCreateInRectEvent takes rect whichRect, integer itemId, integer quant returns nothing
		call DisplayTimedTextToPlayer(Player(0), 0, 0, 7, "WARNING: This stub method for Event Struct is not implemented!")
	endmethod

	stub method setCreepSpawnAtPlayerEvent takes integer monsterId, integer lvl returns nothing
		call DisplayTimedTextToPlayer(Player(0), 0, 0, 7, "WARNING: This stub method for Event Struct is not implemented!")
	endmethod
	
	
endstruct
endlibrary