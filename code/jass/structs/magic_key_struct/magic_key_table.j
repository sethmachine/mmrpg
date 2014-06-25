library MagicKeyTable initializer init requires MagicKeyStruct

globals
    constant integer TOTAL_KEYS = 10
    MagicKey array keyTable[TOTAL_KEYS]
    private timer t
    constant integer HOME = 0
    constant integer AGON = 1
endglobals


private function fillTable takes nothing returns nothing
    local integer i = 0
    //*********************************************
    //***** GreatBark  ****************************
    //*********************************************
    set keyTable[i] = MagicKey.create("GreatBark", 0, Location(-12797.8, 11826.5))
    set i = i + 1
    //*********************************************
    //***** Agon  *********************************
    //*********************************************
    set keyTable[i] = MagicKey.create("Agon", 0, Location(-14212.8, 7547.1))
    set i = i + 1
    
    
    call DestroyTimer(t)
    set t = null
endfunction
            
private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction

endlibrary
