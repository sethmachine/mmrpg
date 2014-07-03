library EventStruct initializer init requires Util, Constants

globals
	Table timerTable
endglobals

private function afterWait takes nothing returns nothing
	local timer expired = GetExpiredTimer()
	local integer index = GetHandleId(expired)
	local Event e = timerTable[index]
	local integer pid = R2I(timerTable.real[index])
	call e.doNext(pid)
	call DestroyTimer(expired)
endfunction

//a representation of an event
//an event is essentially anything that can happen
struct Event
	Table eventTable
	location eventLoc //the location where the event is, not valid for all events
	real wait = 0.1 //duration to wait between calling next event
	Event next //the next event to be called
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
		set this.eventTable = Table.create()
        return this
    endmethod
	
	//calls another event from the eventTable 
	//forces it to call its do() method
	method doNext takes integer pid returns nothing
		if next != 0 then
			call next.do(pid)
		endif
	endmethod
	
	method doWait takes integer pid, real wait returns nothing
		local timer t = CreateTimer()
		set timerTable[GetHandleId(t)] = this
		set timerTable.real[GetHandleId(t)] = pid
		call TimerStart(t, wait, false, function afterWait)
		set t = null
	endmethod
	
	//gives a value to EventLoc, child specific
	stub method setEventLoc takes integer pid returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod
	
	//the eventLoc should not be null if this is called
	method getEventLoc takes integer pid returns location
		return eventTable.location[pid]
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
	stub method setItemCreateAtLoc takes location whichLoc, integer itemId, integer quant returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod

	stub method setItemCreateAtPC takes integer itemId, integer quant returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod

	stub method setCreepSpawnAtLoc takes location whichLoc, integer monsterId, integer lvl, integer rcLvl, integer gender, boolean hasOwner returns nothing
		call print("WARNING: stub method not implemented.")
	endmethod
endstruct

private function init takes nothing returns nothing
	set timerTable = Table.create()
endfunction
endlibrary