scope BackpackInteract initializer init

globals
endglobals

private function main takes nothing returns boolean
    call playerDatum[0].backpackMenu.interact(0)
    return false
endfunction

private function init takes nothing returns nothing
   local trigger t = CreateTrigger()
   call TriggerRegisterPlayerEvent(t, players[0], EVENT_PLAYER_END_CINEMATIC)
   call TriggerAddCondition(t, Condition(function main))
   set t = null
endfunction

endscope