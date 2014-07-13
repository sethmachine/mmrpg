library RectConstants initializer init

globals
	private timer t
	rect AGON_RECT
	rect PLAY_RECT
	rect SUNCHAMBER_BOSS_RECT
	rect SUNCHAMBER_CENTER_RECT
	rect SUNCHAMBER_MIRROR_A_RECT
	rect SUNCHAMBER_MIRROR_B_RECT
	rect SUNCHAMBER_MIRROR_C_RECT
	rect SUNCHAMBER_MIRROR_D_RECT
endglobals

private function main takes nothing returns nothing
	set AGON_RECT = Rect(-4784, -3712, -1664, 7392)
	//set AGON_RECT = Rect(-13440, 9184, -11744, 10688)
	set PLAY_RECT = Rect(-13440, 9184, -11744, 10688)
	set SUNCHAMBER_MIRROR_A_RECT = Rect(10400, 11552, 10784, 11904)
	set SUNCHAMBER_MIRROR_B_RECT = Rect(12320, 11584, 12672, 11904)
	set SUNCHAMBER_MIRROR_C_RECT = Rect(10464, 10240, 10816, 10528)
	set SUNCHAMBER_MIRROR_D_RECT = Rect(12256, 10304, 12608, 10656)
	set SUNCHAMBER_BOSS_RECT = Rect(10272, 10080, 12800, 11904)
	set SUNCHAMBER_CENTER_RECT = Rect(11232, 10848, 11904, 11264)
	call DestroyTimer(t)
	set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 0.50, false, function main)
endfunction

endlibrary