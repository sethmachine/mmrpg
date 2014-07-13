scope Interact initializer init

globals
    constant real INTERACT_DISTANCE = 200.0 //the furthest a unit can be away to interact
endglobals

private function main takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local unit target = GetOrderTargetUnit()
    local integer pid = GetPlayerId(GetTriggerPlayer())
	local integer upoi
    if GetIssuedOrderId() == OrderId("smart") then
        if GetOwningPlayer(target) == BOT_ALLY then
            if u == playerDatum[pid].pc.u then
                if IsUnitInRange(u, target, INTERACT_DISTANCE) then
                    set upoi = GetUnitPointValue(target)
                    if GetUnitTypeId(target) == MAGIC_DOOR_SHRINE_ID then
                        call usePortal(pid)
                    elseif upoi >= 300 and upoi < 500 then
						if playerDatum[pid].npcs[npcUnitIdTable[GetUnitTypeId(target)]].isActive then
							call SetUnitFacingToFaceUnitTimed(target, u, 0.5)
							call playerDatum[pid].npcs[npcUnitIdTable[GetUnitTypeId(target)]].interact(pid)
						endif
						//call playerDatum[pid].getNPCById(GetUnitTypeId(target)).interact(pid)
                        //call playerDatum[pid].npcs[upoi - NPC_CONS].interact(pid)
                    elseif upoi >= 500 and upoi < 2000 then
						call playerDatum[pid].warps[npcUnitIdTable[GetUnitTypeId(target)]].warp(pid)
                        //call playerDatum[pid].warps[upoi - WARP_CONS].warp(pid)
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
   set t = null
endfunction

endscope