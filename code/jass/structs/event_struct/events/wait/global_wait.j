library EventGlobalWait initializer init requires EventStruct

globals
	Table timerTable
endglobals

//waits x seconds before another event
struct EventGlobalWait extends Event
	real duration
	
    static method create takes real duration returns thistype
        local thistype this = thistype.allocate()
		set this.duration = duration
        return this
    endmethod
	
	static method afterWait takes nothing returns nothing
		local timer expired = GetExpiredTimer()
		local integer index = GetHandleId(expired)
		local Event e = eventHandleTable[index]
		local integer pid = R2I(eventHandleTable.real[index])
		call DestroyTimer(expired)
		set expired = null
		//call print("finished a timer, doing next event now")
		call e.doNext(pid)
	endmethod

	method do takes integer pid returns nothing
		local timer t
		local timer globalTimer
		if timerTable.timer[this] == null then
			set timerTable.timer[this] = CreateTimer()
			set globalTimer = timerTable.timer[this]
			set eventHandleTable[GetHandleId(globalTimer)] = this
			set eventHandleTable.real[GetHandleId(globalTimer)] = pid
			//call print("started global timer")
			call TimerStart(globalTimer, duration, false, function EventGlobalWait.afterWait)
		else //someone's already started this global timer
			set t = CreateTimer()
			set eventHandleTable[GetHandleId(t)] = this
			set eventHandleTable.real[GetHandleId(t)] = pid
			//call print("started non-global timer")
			call TimerStart(t, TimerGetRemaining(timerTable.timer[this]), false, function EventGlobalWait.afterWait)
		endif
	endmethod
endstruct

private function init takes nothing returns nothing
	set timerTable = Table.create()
endfunction

endlibrary