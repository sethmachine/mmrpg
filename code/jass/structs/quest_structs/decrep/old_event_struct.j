library EventStruct requires Util

globals
endglobals

//a representation of an event
//an event is essentially anything that can happen
struct Event
	integer red = 255
	integer green = 255
	integer blue = 255
	integer trans = 0
	Table table
    
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
    
    //nulls and destroys all objects
    method flush takes nothing returns nothing
    endmethod
	
	//adds a rawcode for an object type to be targeted by some quantifying event 
	method addObjectType takes integer rawCode returns nothing
		local integer i = 0
		loop
			exitwhen table[i] == 0
			set i = i + 1
		endloop
		set table[i] = rawCode
	endmethod
		
	//adds a unit handle to table to be targeted by some event 
	method addUnit takes unit u returns nothing
		local integer i = 0
		loop
			exitwhen table.unit[i] == 0
			set i = i + 1
		endloop
		set table.unit[i] = u
	endmethod
	
	
	
	
	
	method setTintEvent takes integer red, integer green, integer blue, integer trans, returns nothing
		set this.red = red
		set this.blue = blue
		set this.green = green
		set this.trans = trans
	endmethod
	
	method doWaterTintEvent takes integer pid returns nothing
		if GetLocalPlayer() == players[pid] then
			call SetWaterBaseColor(red, green, blue, trans)
		endif
	endmethod
	
	method doUnitTintEvent takes integer pid returns nothing
		local integer i = 0
		if GetLocalPlayer() == players[pid] then
			loop
				exitwhen table.unit[i] == null
				call SetUnitColor(table.unit[i], red, green, blue, 0)
				set i = i + 1
			endloop
		endif
		set i = 0
	endmethod
			
			
	
	
	

endstruct
endlibrary