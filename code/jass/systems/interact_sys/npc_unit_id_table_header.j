library NPCUnitIdTable initializer init requires Constants
globals
	private timer t
	Table npcUnitIdTable
endglobals

private function main takes nothing returns nothing
	set npcUnitIdTable = Table.create()
//insert
	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.10, false, function main)
endfunction
endlibrary



