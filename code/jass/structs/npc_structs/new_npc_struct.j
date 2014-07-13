library NewNPCStruct initializer init requires Util, Constants

globals
	Table npcTable
endglobals

struct NewNPC
	Table table
	integer id
	location loc
	unit u
	
    static method create takes integer id returns thistype
        local thistype this = thistype.allocate()
		set table = Table.create()
		set this.id = id
		set this.loc = getNPCLoc(id)
		set this.u = getNPCUnit(id)
        return this
    endmethod

    method interact takes integer pid returns nothing
    endmethod
    
endstruct

private function init takes nothing returns nothing
	set npcTable = Table.create()
endfunction

endlibrary