library RectConstants initializer init

globals
	private timer t
	rect AGON_RECT
	rect PLAY_RECT
endglobals

private function main takes nothing returns nothing
	set AGON_RECT = Rect(-4784, -3712, -1664, 7392)
	//set AGON_RECT = Rect(-13440, 9184, -11744, 10688)
	set PLAY_RECT = Rect(-13440, 9184, -11744, 10688)
	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 0.50, false, function main)
endfunction

endlibrary