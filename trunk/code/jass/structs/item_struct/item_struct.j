library ItemStruct

globals
    constant integer MONSTER_ITEM = 0 //the item is for a monster
    constant integer PLAYER_ITEM = 1 //the item is for a player
	constant integer QUEST_ITEM = 2
endglobals

struct Item
	integer pid //the id of the owner
	integer charges //remaining uses for multiple use items
	integer itemId
	integer itemType //monster, player, or quest item
	string name
	boolean toRemove //whether the item is going to be removed...
    
    static method create takes item itm, integer pid returns thistype
		local thistype this = thistype.allocate()
		set this.itemType = GetItemLevel(itm)
		set this.itemId = GetItemTypeId(itm)
        set this.charges = GetItemCharges(itm)
		set this.name = GetItemName(itm)
        set this.pid = pid
        call RemoveItem(itm)
		set itm = null
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