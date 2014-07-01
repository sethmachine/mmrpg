library WarpInit initializer init requires WarpStruct, Constants

globals
    private timer t
endglobals

private function main takes nothing returns nothing
    local integer i = 0
	local location loc
    local Warp w
    loop
        exitwhen i == TOTAL_PLAYERS
		//insert
        set i = i + 1        
    endloop
    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function main)
endfunction
        
endlibrary