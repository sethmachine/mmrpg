library EventItemCreateAtLoc requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventItemCreateAtLoc extends Event
	location loc = null
	integer itemId = 0
	integer quant = 0
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
			
	method do takes integer pid returns nothing
		local integer i = 0
		local item itm = null
		loop
			exitwhen i == quant
            set itm = CreateItemLoc(itemId, loc)
            call SetItemUserData(itm, pid + 1)
			set i = i + 1
		endloop
		set itm = null
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setItemCreateAtLoc takes location whichLoc, integer itemId, integer quant returns nothing
		set this.loc = whichLoc
		set this.itemId = itemId
		set this.quant = quant
	endmethod
endstruct
endlibrary