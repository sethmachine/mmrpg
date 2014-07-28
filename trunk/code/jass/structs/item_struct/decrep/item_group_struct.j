library ItemGroupStruct requires ItemStruct, Colors

globals
    constant integer MAX_BACKPACK_SIZE = 10 //maximum number of items in backpack
    constant integer MAX_BANK_SIZE = 10 //maximum number of items in the bank
    constant integer BACKPACK = 0
    constant integer BANK = 1
    constant string FULL_MSG = RED + "Error: This item group is full.  Max items is: "
endglobals

struct ItemGroup
    integer size //the current number of monsters in the group
    integer maxSize
    integer groupType //the kind of group, e.g. party, farm, creep, boss, etc.
    integer pid //the owner of the group
    Item array items[10]
    dialog iDialog //dialog array
    button array bttns[10] //button array
    
    static method create takes integer groupType, integer pid returns thistype
        local thistype this = thistype.allocate()
        set this.pid = pid
        set this.groupType = groupType
        set iDialog = DialogCreate()
        if groupType == BACKPACK then
            set this.maxSize = MAX_BACKPACK_SIZE
        elseif groupType == BANK then
            set this.maxSize = MAX_BANK_SIZE
        endif
        return this
    endmethod
    
    //attempts to add a monster to the group
    //returns true if it was added successfully
    //false if it failed to add (i.e. the group is full)
    method addItem takes Item itm returns boolean
        local integer i = 0 //used to loop through the available slots
        if size == maxSize then //make sure the group actually has room
            call printl("Error: This item group is full.  Max items is: " + I2S(maxSize))
            return false
        endif
        loop
            exitwhen i == maxSize
            if items[i] == 0 then //0 means the slot is empty, so we can take it
                set items[i] = itm //add in the monster
                set size = size + 1 //increment the current size
                return true
            endif
            set i = i + 1
        endloop
        //error in case somehow the loop fails to add the monster even though the group isn't full
        call printl("Error: Item group was not full, but item was not added!")
        return false
    endmethod

    method remove takes Item itm  returns boolean
        local integer i = 0 //used to loop through available monsters
		local integer j = 0
        loop
            exitwhen i == maxSize
            if itm.equals(items[i]) then
                //call printl(itm.toString() + " has been removed from the group")
                //set items[i] = 0 //free the slot
                //set size = size - 1 //decrement the size of the group
				set j =  i
				set i = maxSize
			else
				set i = i + 1
			endif
        endloop
		set i = j
		set items[i] = 0 //free the slot
		set size = size - 1
		loop
			exitwhen i == maxSize
			
			
        call printl("Error: " + itm.toString() + " does not exist in this group")
        return false
    endmethod
            
    //searches the monster group for the corresponding monster struct
    //returns true if it is in the group, false otherwise
    method itemStructInGroup takes Item itm returns boolean
        local integer i = 0
        loop
            exitwhen i == maxSize
            if items[i].equals(itm) then
                call printl("Found " + itm.toString() + " in the group")
                return true
            endif
            set i = i + 1
        endloop
        call printl("Could not find " + itm.toString() + " in the group")
        return false
    endmethod
    
    //moves an Item from group A to group B
    method moveItem takes ItemGroup targetGroup, Item targetItem returns boolean
        if this.itemStructInGroup(targetItem) then
            if targetGroup.addItem(targetItem) then
                call printl("Moved " + targetItem.toString() + " to the group")
                call this.remove(targetItem) //remove the monster from the origin group
                return true
            endif
            call printl("Error: Cannot add " + targetItem.toString() + " to the group.")
            return false
        endif
        call printl("Error: " + targetItem.toString() + " does not exist in origin group!")
        return false
    endmethod
    
    //moves the entire group to the given loc
    /*method moveGroupToLoc takes location whichLoc returns nothing
        local integer i = 0
        loop
            exitwhen i == maxSize
            call monsters[i].moveToLoc(whichLoc)
            set i = i + 1
        endloop
    endmethod*/
        
    //prints the contents of the item group
    method printGroup takes nothing returns nothing
        local integer i = 0
        loop
            exitwhen i == maxSize
            if items[i] != 0 then
                call printl(items[i].toString())
            endif
            set i = i + 1
        endloop
    endmethod
    
    method displayGroup takes string message returns nothing
        local integer i = 0
        call DialogClear(iDialog)
        call DialogSetMessage(iDialog, message)
        loop
            exitwhen i == maxSize
            if items[i] != 0 then
                set bttns[i] = DialogAddButton(iDialog, items[i].toString(), i)
            else //items[i] == 0
                set bttns[i] = null
            endif
            set i = i + 1
        endloop
        call DialogAddButton(iDialog, "Nevermind.", 0)
        call DialogDisplay(Player(pid), iDialog, true)
    endmethod

	//creates a Dialog that lists out each Monster in the party
	method toDialog takes string msg returns Dialog
		local integer i = 0
		local Dialog d = Dialog.create(msg)
		loop
			exitwhen i == maxSize
			if items[i] != 0 then
				call d.append(WHITE + items[i].toString() + " [ " + RED + I2S(i) + "|r" + WHITE + " ]", i + KEY_NUMPAD_0)
			endif
			set i = i + 1
		endloop
		return d
	endmethod
endstruct
endlibrary