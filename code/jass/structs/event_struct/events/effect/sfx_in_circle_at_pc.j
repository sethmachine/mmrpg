library SFXInCircleAtPC requires EventStruct, Util

globals
	constant real SFX_DIAMETER = 500.0
endglobals

struct EventSFXInCircleAtPC extends Event
	string sfx
	integer quant
	
    static method create takes string whichSFX, integer quant returns thistype
        local thistype this = thistype.allocate()
		set this.sfx = whichSFX
		set this.quant = quant
        return this
    endmethod
				
	method do takes integer pid returns nothing
		local location loc = GetUnitLoc(playerDatum[pid].pc.u)
		local integer i = 0
		loop
			exitwhen i == quant
			call DestroyEffect(AddSpecialEffectLoc(sfx, getRandomPointOnCircle(loc, SFX_DIAMETER)))
			set i = i + 1
		endloop
		call doWait(pid, this.wait)
	endmethod
endstruct
endlibrary