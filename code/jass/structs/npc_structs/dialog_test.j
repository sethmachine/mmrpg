scope Test initializer init

globals
	private timer t
endglobals

private function test takes nothing returns boolean
	local button b = GetClickedButton()
	local player p = GetTriggerPlayer()
	local integer pid = GetPlayerId(p)
	local Dialog d = dialogTable[GetHandleId(GetClickedDialog())]
	if b == d.getBttn("A").b then
		call DisplayTimedTextToPlayer(p, 0, 0, 60, "Clicked button A")
	elseif b == d.getBttn("B").b then
		call DisplayTimedTextToPlayer(p, 0, 0, 60, "Clicked button B")
	elseif b == d.getBttn("C").b then
		call DisplayTimedTextToPlayer(p, 0, 0, 60, "Clicked button C")
	endif
	return false
endfunction


private function main takes nothing returns nothing
	local Dialog d = Dialog.create()
	local Dialog g = Dialog.create()
	call d.append("A", 'A')
	call d.append("B", 'B')
	call d.append("C", 'C')
	call d.registerDialogEvent(function test)
	call d.link("B", d)
	call d.link("C", g)
	call d.remove("B")
	call g.append("D", 'D')
	call g.link("D", d)
	call d.show(0, true)
endfunction
	

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 0.1, false, function main)
endfunction

endscope