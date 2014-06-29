library Print

globals
	boolean DEBUG = true //set to false to disable all print calls
endglobals

function print takes string msg returns nothing
	if DEBUG then
		call DisplayTimedTextToPlayer(Player(0), 0, 0, 12, msg)
	endif
endfunction

function printl takes string msg returns nothing
	local integer i = 0
	if DEBUG then
		loop
			exitwhen i == 10
			call DisplayTimedTextToPlayer(Player(i), 0, 0, 12, msg)
			set i = i + 1
		endloop
	endif
endfunction

endlibrary