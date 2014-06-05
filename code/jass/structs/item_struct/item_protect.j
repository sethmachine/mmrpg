library ItemProtect initializer init requires Colors, PlayerFilters

globals
    constant integer LOOTABLE = 0 //if an item can be taken
    constant string MSG = RED + "Error:|r" + SILVER + " This item does not belong to you!"
endglobals

function isLoot takes item i, integer pid returns boolean
    return(GetItemUserData(i) == LOOTABLE or GetItemUserData(i) == pid + 1)
endfunction



private function main takes nothing returns boolean
    local integer pid = GetPlayerId(GetTriggerPlayer())
    local item i = GetManipulatedItem()
    local unit u
    local integer ownerId = GetItemUserData(i)
    if ownerId == LOOTABLE then
        call SetItemUserData(i, pid + 1)
    elseif ownerId == pid + 1 then
    else
        set u = GetManipulatingUnit()
        call UnitRemoveItem(u, i)
        call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, MSG)
        if GetLocalPlayer() == GetTriggerPlayer() then
            call StartSound(gg_snd_Error)
        endif
    endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_PICKUP_ITEM)
    call TriggerAddCondition(t, Condition(function main))
endfunction
endlibrary