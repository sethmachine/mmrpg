library NPCInit initializer init requires InnStruct, Constants, Util

globals
    private timer t
endglobals

private function main takes nothing returns nothing
    local integer i = 0
    local integer goalNum = 0
    local integer dialogNum = 0
    local integer bttnNum
    local Quest q
    loop
        exitwhen i == TOTAL_PLAYERS
        set playerDatum[i].npcs[PRIEST] = Priest.create()
        set playerDatum[i].npcs[MONSTER_FARMER] = Farmer.create()
        set playerDatum[i].npcs[ITEM_VAULT] = Bank.create()
        set playerDatum[i].npcs[ROYAL_CHAPLAIN] = Chaplain.create()
        set playerDatum[i].npcs[ISAIAH] = Isaiah.create()
        set playerDatum[i].npcs[TOMBSTONE] = Tombstone.create()
		set playerDatum[i].npcs[INN] = Inn.create()
		set playerDatum[i].backpackMenu = Backpack.create()
		set i = i + 1
    endloop
    call DestroyTimer(t)
    set t = null
endfunction

private function init takes nothing returns nothing
	set t = CreateTimer()
	call TimerStart(t, 1.0, false, function main)
endfunction
        
endlibrary