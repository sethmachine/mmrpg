library NPCInit initializer init requires BankStruct

globals
    private timer t
    unit FARMER_UNIT
endglobals

private function main takes nothing returns nothing
    local integer i = 0
    local integer goalNum = 0
    local integer dialogNum = 0
    local integer bttnNum
    local Quest q
    set FARMER_UNIT = gg_unit_n004_0001
    loop
        exitwhen i == 1
        set playerDatum[i].npcs[Priest.index] = Priest.create()
        set playerDatum[i].npcs[Farmer.index] = Farmer.create()
        set playerDatum[i].npcs[Bank.index] = Bank.create()
        set playerDatum[i].npcs[Chaplain.index] = Chaplain.create()
        set playerDatum[i].npcs[Backpack.index] = Backpack.create()
    endloop
    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function main)
endfunction
        
endlibrary