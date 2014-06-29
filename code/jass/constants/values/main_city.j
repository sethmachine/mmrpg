scope City initializer init

globals
    destructable CITY_GATE = gg_dest_DTg5_0008
endglobals

private function init takes nothing returns nothing
    call ModifyGateBJ(bj_GATEOPERATION_OPEN, gg_dest_DTg5_0008)
    //call KillDestructable(CITY_GATE)
    //call SetDestructableAnimation(CITY_GATE, "death alternate")
endfunction
endscope