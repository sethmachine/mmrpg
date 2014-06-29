library EventItemCreateInRect requires EventStruct

globals
endglobals

//creates quant number of items
//each in a random position in a rect
struct EventItemCreateInRect extends Event
	rect r = null
	integer itemId = 0
	integer quant = 0
	real range = 0.0
	
    static method create takes rect whichRect, real range, integer itemId, integer quant returns thistype
        local thistype this = thistype.allocate()
		set this.r = whichRect
		set this.range = range
		set this.itemId = itemId
		set this.quant = quant
        return this
    endmethod
	
	method setEventLoc takes integer pid returns nothing
		set eventTable.location[pid] = getRandomReachableLocInRect(r, range)
	endmethod
	
	method do takes integer pid returns nothing
		local integer i = 0
		local item itm = null
		loop
			exitwhen i == quant
            set itm = CreateItemLoc(itemId, eventTable.location[pid])
            call SetItemUserData(itm, pid + 1)
			set i = i + 1
		endloop
		set itm = null
		call doNext(pid)
	endmethod
endstruct
endlibrary