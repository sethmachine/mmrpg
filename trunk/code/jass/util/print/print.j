library Print

globals
endglobals

function print takes string msg returns nothing
    call DisplayTimedTextToPlayer(Player(0), 0, 0, 12, msg)
endfunction

endlibrary