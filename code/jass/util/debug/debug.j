library Debug initializer init

globals
endglobals

private function main takes nothing returns boolean
	if DEBUG then
		set DEBUG = false
	else
		set DEBUG = true
	endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t
    local integer i = 0 //counter for looping through players
    loop
        exitwhen i == 1
		set t = CreateTrigger()
		call TriggerRegisterPlayerChatEvent(t, Player(i), "-debug", false)
		call TriggerAddCondition(t, Condition(function main))
		set i = i + 1
	endloop
endfunction

endlibrary