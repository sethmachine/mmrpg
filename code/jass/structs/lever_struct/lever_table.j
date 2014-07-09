library LeverTable initializer init requires LeverStruct

globals
    Lever array leverTable
    private timer t
endglobals


private function fillTable takes nothing returns nothing
    local integer i = 0
	set leverTable[i] = Lever.create('t001', SUNCHAMBER_LEVER_A_OFF_E, SUNCHAMBER_LEVER_A_ON_E)
	set i = i + 1
	set leverTable[i] = Lever.create('t002', SUNCHAMBER_LEVER_B_OFF_E, SUNCHAMBER_LEVER_B_ON_E)
	set i = i + 1
	set leverTable[i] = Lever.create('t003', SUNCHAMBER_LEVER_C_OFF_E, SUNCHAMBER_LEVER_C_ON_E)
	set i = i + 1
	set leverTable[i] = Lever.create('t004', SUNCHAMBER_LEVER_D_OFF_E, SUNCHAMBER_LEVER_D_ON_E)
	set i = i + 1
    call DestroyTimer(t)
    set t = null
endfunction
            
private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary
