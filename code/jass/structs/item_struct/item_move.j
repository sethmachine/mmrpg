scope ItemMove initializer init

globals
    private constant integer ITEM_MOVE = 'Amve'
endglobals


private function main takes nothing returns boolean
    local integer pid = GetPlayerId(GetTriggerPlayer())
    local item i = GetSpellTargetItem()
    local integer ownerId = GetItemUserData(i)
    local integer spellId = GetSpellAbilityId()
    local Item target
	local ItemGroup items = playerDatum[pid].backpack
    if spellId == ITEM_MOVE then
        if ownerId == LOOTABLE or ownerId == pid + 1 then
            if items.maxSize < MAX_BACKPACK_SIZE then
                set target = Item.create(i, pid)
                call items.add(target)
            else
                call DisplayTimedTextToPlayer(Player(pid), 0, 0, DSPLY_TXT_DUR, GOLD + "Backpack:|r" + " Your backpack is full with " + I2S(items.currSize) + " items.")
            endif
        else
            call DisplayTimedTextToPlayer(GetTriggerPlayer(), 0, 0, 10, MSG)
            if GetLocalPlayer() == GetTriggerPlayer() then
                call StartSound(gg_snd_Error)
            endif
        endif
    endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_SPELL_CAST)
    call TriggerAddCondition(t, Condition(function main))
endfunction
endscope