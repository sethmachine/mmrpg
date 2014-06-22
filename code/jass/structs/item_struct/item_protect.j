library ItemProtect initializer init requires Colors, PlayerFilters

globals
    constant integer LOOTABLE = 0 //if an item can be taken
    constant string MSG = RED + "Error:|r" + SILVER + " This item does not belong to you!"
    constant string MSG2 = RED + "Error:|r" + SILVER + " Monster Masters cannot use Monster items!"
    constant string MSG3 = RED + "Error:|r" + SILVER + " Monsters cannot use Monster Master items!"
endglobals

function isLoot takes item i, integer pid returns boolean
    return(GetItemUserData(i) == LOOTABLE or GetItemUserData(i) == pid + 1)
endfunction



private function main takes nothing returns boolean
	local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local item i = GetManipulatedItem()
    local unit u = GetManipulatingUnit()
    local integer ownerId = GetItemUserData(i)
	local integer itemType = GetItemLevel(i)
	
    if isLoot(i, pid) then //check if the item is loot: belongs to the player or is unclaimed
		if u == playerDatum[pid].pc.u then //is it a player/quest item?
			if itemType == PLAYER_ITEM or itemType == QUEST_ITEM then
				call SetItemUserData(i, pid + 1)
			else
				call UnitRemoveItem(u, i)
				call DisplayTimedTextToPlayer(p, 0, 0, 10, MSG2)
				if GetLocalPlayer() == p then
					call StartSound(gg_snd_Error)
				endif
			endif
		else //is it a monster item?
			if itemType == MONSTER_ITEM then
				call SetItemUserData(i, pid + 1)
			else
				call UnitRemoveItem(u, i)
				call DisplayTimedTextToPlayer(p, 0, 0, 10, MSG3)
				if GetLocalPlayer() == p then
					call StartSound(gg_snd_Error)
				endif
			endif
		endif
    else
        set u = GetManipulatingUnit()
        call UnitRemoveItem(u, i)
        call DisplayTimedTextToPlayer(p, 0, 0, 10, MSG)
        if GetLocalPlayer() == p then
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