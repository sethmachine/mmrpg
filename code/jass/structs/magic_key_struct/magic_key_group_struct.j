library MagicKeyGroupStruct requires MagicKeyStruct, Colors

globals
    constant integer MAX_KEYS = 10
    private constant string FULL_MSG = RED + "Error: This magic key group is full.  Max keys is: "
endglobals

struct MagicKeyGroup
    integer size //the current number of monsters in the group
    integer maxSize
    integer pid //the owner of the group
    MagicKey array keys[10]
    dialog kDialog //dialog array
    button array bttns[10] //button array
    
    static method create takes integer pid returns thistype
        local thistype this = thistype.allocate()
        set this.pid = pid
        set this.maxSize = MAX_KEYS
        set kDialog = DialogCreate()
        return this
    endmethod
    
    //attempts to add a monster to the group
    //returns true if it was added successfully
    //false if it failed to add (i.e. the group is full)
    method add takes MagicKey key returns boolean
        local integer i = 0 //used to loop through the available slots
        if size == maxSize then //make sure the group actually has room
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, 10, FULL_MSG + I2S(maxSize))
            return false
        endif
        loop
            exitwhen i == maxSize
            if keys[i] == 0 then //0 means the slot is empty, so we can take it
                set keys[i] = key //add in the monster
                set size = size + 1 //increment the current size
                return true
            endif
            set i = i + 1
        endloop
        //error in case somehow the loop fails to add the monster even though the group isn't full
        call DisplayTimedTextToPlayer(Player(pid), 0, 0, 10, "Error: Key group was not full, but key was not added!")
        return false
    endmethod

    method remove takes MagicKey key returns boolean
        local integer i = 0 //used to loop through available monsters
        loop
            exitwhen i == maxSize
            if key.equals(keys[i]) then
                call DisplayTimedTextToPlayer(Player(pid), 0, 0, 10, key.toString() + " has been removed from the group")
                set keys[i] = 0 //free the slot
                set size = size - 1 //decrement the size of the group
                return true
            endif
            set i = i + 1
        endloop
        call DisplayTimedTextToPlayer(Player(pid), 0, 0, 10, "Error: " + key.toString() + " does not exist in this group")
        return false
    endmethod
                
    //prints the contents of the item group
    method printGroup takes nothing returns nothing
        local integer i = 0
        loop
            exitwhen i == maxSize
            if keys[i] != 0 then
                call DisplayTimedTextToPlayer(Player(pid), 0, 0, 11, keys[i].toString())
            endif
            set i = i + 1
        endloop
    endmethod
    
    method displayGroup takes string message returns nothing
        local integer i = 0
        call DialogClear(kDialog)
        call DialogSetMessage(kDialog, message)
        loop
            exitwhen i == maxSize
            if keys[i] != 0 then
                set bttns[i] = DialogAddButton(kDialog, keys[i].toString(), i)
            else //items[i] == 0
                set bttns[i] = null
            endif
            set i = i + 1
        endloop
        call DialogAddButton(kDialog, "Nevermind.", 0)
        call DialogDisplay(Player(pid), kDialog, true)
    endmethod
endstruct
endlibrary