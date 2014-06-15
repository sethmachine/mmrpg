library EventWaterTint requires EventStruct

globals
endglobals

//changes the water tint for a players
//uses a local player block to do this
struct EventItemCreateInRect extends Event
	rect r = null
	integer itemId = 0
	integer quant = 0
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
		
	
	method do takes integer pid returns nothing
		local integer i = 0
		local item itm = null
		local location randomLoc = getRandomReachableLocInRect(r, 500.00)
		loop
			exitwhen i == quant
            set itm = CreateItemLoc(itemId, randomLoc)
            call SetItemUserData(itm, pid + 1)
			set i = i + 1
		endloop
		call RemoveLocation(randomLoc)
		set itm = null
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setItemCreateInRectEvent takes rect whichRect, integer itemId, integer quant returns nothing
		set this.r = whichRect
		set this.itemId = itemId
		set this.quant = quant
	endmethod
endstruct
endlibrary