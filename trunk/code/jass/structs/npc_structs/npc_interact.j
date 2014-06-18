scope NPCInteract initializer init

globals
    constant real INTERACT_DISTANCE = 200.0 //the furthest a unit can be away to interact
endglobals





private function main takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local unit target = GetOrderTargetUnit()
    local integer upoi = 0
    local integer pid = GetPlayerId(GetTriggerPlayer())
    if GetIssuedOrderId() == OrderId("smart") then
        if GetOwningPlayer(target) == BOT_ALLY then
            if u == playerDatum[pid].pc.u then
                if IsUnitInRange(u, target, INTERACT_DISTANCE) then
                    set upoi = GetUnitPointValue(target)
                    if GetUnitTypeId(target) == PORTAL_ID then
                        call usePortal(pid)
                    elseif upoi >= 300 and upoi < 500 then
                        call playerDatum[pid].npcs[upoi + NPC_CONS].interact(pid)
                    elseif upoi >= 500 then
                        call playerDatum[pid].warps[upoi + WARP_CONS].warp(pid)
                    endif
                endif
            endif
        endif
    endif
    set u = null
    set target = null
    return false
endfunction


private function init takes nothing returns nothing
   local trigger t = CreateTrigger()
   call TriggerRegisterAnyUnitEventBJ(t, EVENT_PLAYER_UNIT_ISSUED_TARGET_ORDER)
   call TriggerAddCondition(t, Condition(function main))
   //set the NPC indices
   set Priest.index = GetUnitPointValueByType(PRIEST_ID) - NPC_CONS
   set Farmer.index = GetUnitPointValueByType(FARMER_ID) - NPC_CONS
   set Bank.index = GetUnitPointValueByType(BANK_ID) - NPC_CONS
   set Chaplain.index = GetUnitPointValueByType(CHAPLAIN_ID) - NPC_CONS
   //backpack doesn't really have an index, it won't be an NPC for long
   set Backpack.index = 9
   
   set t = null
endfunction

endscope