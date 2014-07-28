library NPCStruct initializer init requires Util, Constants

globals
	constant real NPC_TEXT_DURATION = 8.0
	constant string BTTN_QUIT = WHITE + "Nevermind. [ " + RED + "N|r" + WHITE + " ]"
	constant integer HOTKEY_QUIT = 'N'
	constant string BTTN_EXIT = WHITE + "Exit. [ " + RED + "E|r" + WHITE + " ]"
	constant integer HOTKEY_EXIT = 'E'
	constant string BTTN_BACK = WHITE + "Back. [ " + RED + "B|r" + WHITE + " ]"
	constant integer HOTKEY_BACK = 'B'
	constant integer DIALOG_INTRO = 0
	Table npcTable
endglobals

struct NPC
	Table table
	integer id
	boolean isActive
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
		local Dialog d = table[0]
		if d != 0 then
			call d.setMsg(d.msg)
			call d.show(pid, true)
		endif
    endmethod
    
endstruct

private function init takes nothing returns nothing
	set npcTable = Table.create()
endfunction

endlibrary