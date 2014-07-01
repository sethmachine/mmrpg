library InteractableUnitIdTable requires Constants initializer init
globals
	private timer t
	Table interactableUnitIdTable
endglobals

private function main takes nothing returns nothing
	set interactableUnitIdTable = Table.create()
//insert
	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.10, false, function main)
endfunction
endlibrary
