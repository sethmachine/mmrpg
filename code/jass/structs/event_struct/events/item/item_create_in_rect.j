library EventItemCreateInRect requires EventStruct

globals
endglobals

//creates quant number of items
//each in a random position in a rect
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
		call doNext(pid)
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setItemCreateInRect takes rect whichRect, integer itemId, integer quant returns nothing
		set this.r = whichRect
		set this.itemId = itemId
		set this.quant = quant
	endmethod
endstruct
endlibrary