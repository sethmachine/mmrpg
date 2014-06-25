library AbstractMonsterTable initializer init requires AbstractMonsterStruct, Constants

globals
  AbstractMonster array AbstractMonsterTable[TOTAL_MONSTERS]
  private timer t
endglobals

private function fillTable takes nothing returns nothing
	local AbstractMonster m
	//insert
    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary