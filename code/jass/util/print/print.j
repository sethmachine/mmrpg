library Print

globals
endglobals

function print takes string msg returns nothing
    call DisplayTimedTextToPlayer(Player(0), 0, 0, 12, msg)
endfunction

function printl takes string msg returns nothing
	local integer i = 0
	loop
		exitwhen i == 10
		call DisplayTimedTextToPlayer(Player(i), 0, 0, 12, msg)
		set i = i + 1
	endloop
endfunction

endlibrary