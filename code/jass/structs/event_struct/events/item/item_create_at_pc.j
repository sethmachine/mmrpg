library ItemCreateAtPC requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventItemCreateAtPC extends Event
	integer itemId = 0
	integer quant = 0
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
			
	method do takes integer pid returns nothing
		local integer i = 0
		local item itm = null
		local location loc = GetUnitLoc(playerDatum[pid].pc.u)
		loop
			exitwhen i == quant
            set itm = CreateItemLoc(itemId, loc)
            call SetItemUserData(itm, pid + 1)
			set i = i + 1
		endloop
		call RemoveLocation(loc)
		set loc = null
		set itm = null
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setItemCreateAtPC takes integer itemId, integer quant returns nothing
		set this.itemId = itemId
		set this.quant = quant
	endmethod
endstruct
endlibrary