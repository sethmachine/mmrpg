library NPCInit initializer init requires NPCStruct, PriestData

globals
    private timer t
	constant string ALFONZO_HEADER = "fccc"
endglobals

private function main takes nothing returns nothing
    local integer i = 0
	local NPC npc
	local Dialog d
	local Dialog g
	local Dialog l
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