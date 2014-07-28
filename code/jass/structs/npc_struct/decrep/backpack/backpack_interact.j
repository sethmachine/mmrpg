scope BackpackInteract initializer init

globals
endglobals

//! textmacro main takes pid
private function main$pid$ takes nothing returns boolean
	call playerDatum[$pid$].backpackMenu.interact($pid$)
    return false
endfunction
//! endtextmacro

//! runtextmacro main("0")
//! runtextmacro main("1")
//! runtextmacro main("2")
//! runtextmacro main("3")
//! runtextmacro main("4")
//! runtextmacro main("5")
//! runtextmacro main("6")
//! runtextmacro main("7")
//! runtextmacro main("8")
//! runtextmacro main("9")

private function init takes nothing returns nothing
	local trigger t
	//! textmacro trig takes pid
	set t = CreateTrigger()
	call TriggerRegisterPlayerEvent(t, players[$pid$], EVENT_PLAYER_END_CINEMATIC)
	call TriggerAddCondition(t, Condition(function main$pid$))
	//! endtextmacro
	//! runtextmacro trig("0")
	//! runtextmacro trig("1")
	//! runtextmacro trig("2")
	//! runtextmacro trig("3")
	//! runtextmacro trig("4")
	//! runtextmacro trig("5")
	//! runtextmacro trig("6")
	//! runtextmacro trig("7")
	//! runtextmacro trig("8")
	//! runtextmacro trig("9")
   set t = null
endfunction

endscope