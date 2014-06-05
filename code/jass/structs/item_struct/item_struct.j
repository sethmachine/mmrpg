library ItemStruct requires AbstractItemTable

globals
endglobals

struct Item extends AbstractItem
    integer pid //the id of the owner
    integer charges //remaining uses for multiple use items
    boolean toRemove //whether the item is going to be removed...
    
    static method create takes item itm, integer pid returns thistype
        local AbstractItem i = AbstractItemTable[GetItemLevel(itm)]
        local thistype this = thistype.allocate(i.itemId, i.itemClass, i.isQuestItem)
        set this.pid = pid
        set this.charges = GetItemCharges(itm)
        call RemoveItem(itm)
        return this
    endmethod
    
    method moveToLoc takes location whichLoc returns nothing
        local item i
        if charges > 0 then
            set i = CreateItemLoc(itemId, whichLoc)
            call SetItemUserData(i, pid + 1)
            call SetItemCharges(i, charges)
        else
            set i = CreateItemLoc(itemId, whichLoc)
            call SetItemUserData(i, pid + 1)
        endif
        call UnitAddItem(playerDatum[pid].pc.u, i)
        set i = null
    endmethod
            
    method equals takes Item targetItem returns boolean
        if charges > 0 then
            if targetItem.charges == charges then
                if targetItem.itemId == itemId then
                    return true
                endif
            endif
        elseif targetItem.itemId == itemId then
            return true
        endif
        return false
    endmethod
    
    method toString takes nothing returns string
        if charges > 0 then
            return name + " (" + I2S(charges) + ")"
        endif
        return name
    endmethod
    
endstruct

endlibrary