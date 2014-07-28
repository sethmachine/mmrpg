library Print

globals
	boolean DEBUG = true //set to false to disable all print calls
endglobals

//prints a debug message only to Player 1
//testing should only be done in singleplayer mode
function print takes string msg returns nothing
	if DEBUG then
		call DisplayTimedTextToPlayer(Player(0), 0, 0, 12, msg)
	endif
endfunction

function debugMsg takes string msg, boolean debugMode returns nothing
	local integer i
	if debugMode then
		set i = 0
		loop
			exitwhen i == 10
			call DisplayTimedTextToPlayer(Player(i), 0, 0, 12, msg)
			set i = i + 1
		endloop
	endif
endfunction

//prints a debug message to all players
//while testing should be done in singleplayer mode,
//this can be used to see debug messages in multiplayer games
//right now, however, all printl are replaced by print
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

//displays a text message to a given player based on player id
//is equivalent to this call: call DisplayTimedTextToPlayer(Player(pid), 0, 0, duration, whichStr)
function msgP takes integer pid, real duration, string whichStr returns nothing
	call DisplayTimedTextToPlayer(Player(pid), 0, 0, duration, whichStr)
endfunction
	

endlibrary