library LeverStruct initializer init requires Util

globals
	private timer t
	private Table handleTable
endglobals

struct Lever
	unit u
	integer leverID
	boolean state = true
	trigger leverTrig
	integer onEvent
	integer offEvent
    
    static method create takes integer leverID, integer whichOnEvent, integer whichOffEvent returns thistype
        local thistype this = thistype.allocate()
		set this.leverID = leverID
		set this.u = getNPCUnit(leverID)
		set this.onEvent = whichOnEvent
		set this.offEvent = whichOffEvent
		call setup()
		set handleTable[GetHandleId(u)] = this
        return this
    endmethod
	
	static method deathMain takes nothing returns boolean
		local unit u = GetTriggerUnit()
		local Lever l = handleTable[GetHandleId(u)]
		local integer pid = GetPlayerId(GetOwningPlayer(GetEventDamageSource()))
		if (GetUnitState(u, UNIT_STATE_LIFE) - GetEventDamage()) < 0.405 then
			call SetUnitLifePercentBJ(u, 100.0)
			if l.state == true then //on event
				call SetUnitAnimation(u, "death")
				set l.state = false
				if l.onEvent != 0 then
					call eventTable[l.onEvent].do(pid)
				endif
			else //off event
				call SetUnitAnimation(u, "stand")
				set l.state = true
				if l.offEvent != 0 then
					call print("called leverOff event in: " + I2S(l))
					call eventTable[l.offEvent].do(pid)
				endif
				call PlaySoundOnUnitBJ(gg_snd_Lever, 100.0, u)
			endif
		endif
		set u = null
		return false
	endmethod
	
	method setup takes nothing returns nothing
		set leverTrig = CreateTrigger()
		call TriggerAddCondition(leverTrig, Condition(function Lever.deathMain))
		call TriggerRegisterUnitEvent(leverTrig, u, EVENT_UNIT_DAMAGED)
	endmethod
	
	method reset takes nothing returns nothing
		call SetUnitAnimation(u, "stand")
		call SetUnitLifePercentBJ(u, 100.0)
		set state = true
	endmethod
endstruct

/*private function main takes nothing returns nothing
	set handleTable = Table.create()
	call DestroyTimer(t)
	set t = null
endfunction*/
	
private function init takes nothing returns nothing
	set handleTable = Table.create()
	/*set t = CreateTimer()
	call TimerStart(t, 0.25, false, function main)*/
endfunction

endlibrary