library QuestInit requires Constants

globals
endglobals


function questInit takes nothing returns nothing
    local integer i = 0
    local integer goalNum = 0
    local Quest q
    loop
		exitwhen i == TOTAL_PLAYERS
	
		set i = i + 1
    endloop
endfunction
        
endlibrary
