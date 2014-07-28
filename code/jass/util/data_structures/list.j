library List requires Table

globals
	private constant boolean LIST_DEBUG = true //set to false to avoid debug messages
endglobals

struct List
	Table table
	integer currSize
	integer maxSize
	
	static method create takes integer maxSize returns thistype
		local thistype this = thistype.allocate()
		set this.table = Table.create()
		set this.maxSize = maxSize
		set this.currSize = 0
		return this
	endmethod
	
	method has takes integer whichStruct returns boolean
		local integer i = 0
		loop
			exitwhen i == maxSize
			if table[i] == whichStruct then
				call debugMsg("found element " + I2S(whichStruct) + " inside list #" + I2S(this) + ".", LIST_DEBUG)
				return i
			endif
			set i = i + 1
		endloop
		call debugMsg("Error: did not find element " + I2S(whichStruct) + " inside list #" + I2S(this) + ".", LIST_DEBUG)
		return -1
	endmethod
	
	//adds a struct or integer to the table
	//returns true if the struct was added
	//returns false if the struct was not added
	method add takes integer whichStruct returns boolean
		local integer i = 0
		loop
			exitwhen i == maxSize
			if table[i] == 0 then
				set table[i] = whichStruct
				set currSize = currSize + 1
				call debugMsg("added an element to list #" + I2S(this) + " at index: " + I2S(i) + ". list size is now: " + I2S(currSize) + ".", LIST_DEBUG)
				return true
			endif
			set i = i + 1
		endloop
		call debugMsg("Error: could not add element to list #" + I2S(this) + ". list size is " + I2S(currSize) + " with " + I2S(maxSize) + " max elements.", LIST_DEBUG)
		return false
	endmethod
	
	//removes a struct/integer from the table
	//after removal, it fills the hole by shifting all entries by 1
	//returns true if the struct was removed
	//returns false if the struct doesn't exist
	method remove takes integer whichStruct returns boolean
		local integer i = has(whichStruct)
		if i != -1 then
			set table[i] = 0 //free the removed element's slot.  
			//now starting from the hole, shift everything after it down by 1
			loop
				exitwhen i == maxSize
				set table[i] = table[i + 1]
				set i = i + 1
			endloop
			set currSize = currSize - 1
			return true
		endif
		return false
	endmethod
	
	method move takes integer whichStruct, List targetList returns boolean
		local integer i = has(whichStruct)
		if has != - 1 then //make sure we actually have the target
			if targetList.add(whichStruct) then //make sure there's room in the target list
				call remove(whichStruct)
				call debugMsg("Moved element #" + I2S(whichStruct) + " from list #" + I2S(this) + " to list # " + I2S(targetList) + ".", LIST_DEBUG)
				return true
			endif
			call debugMsg("Error: Could not move element #" + I2S(whichStruct) + " from list #" + I2S(this) + " to list # " + I2S(targetList) + ", because the target list is full.", LIST_DEBUG)
			return false
		endif
		call debugMsg("Error: Could not move element #" + I2S(whichStruct) + " from list #" + I2S(this) + ", because the element doesn't exist in this list.", LIST_DEBUG)
		return false
	endmethod			
endstruct
endlibrary