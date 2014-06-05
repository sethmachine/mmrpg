scope BackpackInteract initializer init

globals
endglobals





private function main takes nothing returns boolean
    //local unit u = GetTriggerUnit()
    //local integer pid = GetPlayerId(GetTriggerPlayer())
    //if u == playerDatum[pid].pc.u then
        call playerDatum[0].npcs[9].interact(0)
    //endif
    //set u = null
    return false
endfunction


private function init takes nothing returns nothing
   local trigger t = CreateTrigger()
   call TriggerRegisterPlayerEvent(t, players[0], EVENT_PLAYER_END_CINEMATIC)
   call TriggerAddCondition(t, Condition(function main))
   set t = null
endfunction

endscope