library MonsterGroupStruct requires MonsterStruct

globals
    constant integer MAX_PARTY_SIZE = 3 //maximum number of monsters in party
    constant integer MAX_FARM_SIZE = 10 //maximum number of monsters in the farm
    constant integer MIN_PARTY_SIZE = 1 //minimum number of monsters in party, player can't go below this
    //constant integer MAX_MONSTERS = MAX_PARTY_SIZE + MAX_FARM_SIZE //maximum number of monsters total (only for human players)
    constant integer PARTY = 0
    constant integer FARM = 1
    constant integer CREEP = 2
    constant integer MONSTER_PER_DIALOG = 5 //the number of monsters to display per each dialog
endglobals

struct MonsterGroup
    integer size = 0 //the current number of monsters in the group
    integer maxSize = 50 //the maximum number of monsters allowed in the group
    integer groupType = 0 //the kind of group, e.g. party, farm, creep, boss, etc.
    integer pid = 0 //the owner of the group
    Monster array monsters[50] //the array of MonsterStructs
    dialog mDialog //dialog array
    button array bttns[10] //button array
    
    //constructs the MonsterGroup--note it only requires the groupType and player id
    //monsters need to be added manually, one at a time
    static method create takes integer groupType, integer pid returns thistype
        local thistype this = thistype.allocate()
        set this.pid = pid
        set this.groupType = groupType
        if groupType == PARTY then
            set this.maxSize = MAX_PARTY_SIZE
        elseif groupType == FARM then
            set this.maxSize = MAX_FARM_SIZE
        endif
        return this
    endmethod
    
    //attempts to add a monster to the group
    //returns true if it was added successfully
    //false if it failed to add (i.e. the group is full)
    method addMonster takes Monster monster returns boolean
        local integer i = 0 //used to loop through the available slots
        if size == maxSize then //make sure the group actually has room
            call printl("Error: This monster group is full.  Max monsters is: " + I2S(maxSize))
            return false
        endif
        loop
            exitwhen i == maxSize
            if monsters[i] == 0 then //0 means the slot is empty, so we can take it
                set monsters[i] = monster //add in the monster
                set size = size + 1 //increment the current size
                return true
            endif
            set i = i + 1
        endloop
        //error in case somehow the loop fails to add the monster even though the group isn't full
        call printl("Error: Monster group was not full, but monster was not added!")
        return false
    endmethod
    
    //removes a monster from the group, but does not destroy it
    //should only be called when swapping monsters between groups, or releasing them
    method removeMonster takes Monster monster returns boolean
        local integer i = 0 //used to loop through available monsters
        if groupType == PARTY then //only parties cannot go to 0 monsters
            if size == MIN_PARTY_SIZE then //a party must always have at least one monster
                call printl("Error: You must have at least 1 monster in your party.")
                return false
            endif
        endif
        loop
            exitwhen i == maxSize
            if monster.equals(monsters[i]) then
                call printl(monster.toString() + " has been removed from the group")
                set monsters[i] = 0 //free the slot
                set size = size - 1 //decrement the size of the group
                return true
            endif
            set i = i + 1
        endloop
        call printl("Error: " + monster.toString() + " does not exist in this group")
        return false
    endmethod
    
    //searches the monster group in order and returns the first monster it finds
    method getFirstMonster takes nothing returns Monster
        local integer i = 0
        loop
            exitwhen i == maxSize
            if monsters[i] != 0 then
                return monsters[i]
            endif
            set i = i + 1
        endloop
        return -1 //no monsters at all--the group is empty
    endmethod
    
    //searches the monster group for the corresponding monster struct
    //returns true if it is in the group, false otherwise
    method monsterStructInGroup takes Monster m returns boolean
        local integer i = 0
        loop
            exitwhen i == maxSize
            if monsters[i].equals(m) then
                call printl("Found " + m.toString() + " in the group")
                return true
            endif
            set i = i + 1
        endloop
        call printl("Could not find " + m.toString() + " in the group")
        return false
    endmethod

    //searches the monster group for the corresponding unit handle
    //returns true if it is in the group, false otherwise
    method unitInGroup takes unit u returns boolean
        local integer i = 0
        loop
            exitwhen i == maxSize
            if monsters[i].u == u then
                call printl("Found " + GetHeroProperName(u) + " in the group")
                return true
            endif
            set i = i + 1
        endloop
        //call DisplayTimedTextToPlayer(Player(pid), 0, 0, 10, "Could not find " + GetHeroProperName(u) + " in the group")
        return false
    endmethod

    //searches the monster group for the corresponding monster struct
    //and returns it--guaranteed to find it
    method getMonsterByStruct takes Monster m returns Monster
        local integer i = 0
        loop
            exitwhen i == maxSize
            if monsters[i].equals(m) then
                call printl("Found " + m.toString() + " in the group")
                return monsters[i]
            endif
            set i = i + 1
        endloop
        call printl("Could not find " + m.toString() + " in the group")
        return 0
    endmethod

    //searches the monster group for the corresponding monster struct
    //and returns it--guaranteed to find it
    method getMonsterByUnit takes unit u returns Monster
        local integer i = 0
        loop
            exitwhen i == maxSize
            if monsters[i].u == u then
                call printl("Found " + GetHeroProperName(u) + " in the group")
                return monsters[i]
            endif
            set i = i + 1
        endloop
        call printl("Could not find " + GetHeroProperName(u) + " in the group")
        return 0
    endmethod
    
    //searches the monster group for a monster struct based on the Monster struct
    //returns true if it is in the group, false otherwise
    //moves a monster from group A to group B
    method moveMonster takes MonsterGroup targetGroup, Monster targetMonster returns boolean
        if this.monsterStructInGroup(targetMonster) then
            if targetGroup.addMonster(targetMonster) then
                call printl("Moved " + targetMonster.toString() + " to the group")
                call this.removeMonster(targetMonster) //remove the monster from the origin group
                return true
            endif
            call printl("Error: Cannot add " + targetMonster.toString() + " to the group.")
            return false
        endif
        call printl("Error: " + targetMonster.toString() + " does not exist in origin group!")
        return false
    endmethod
    
    //moves the entire group to the given loc
    method moveGroupToLoc takes location whichLoc returns nothing
        local integer i = 0
        loop
            exitwhen i == maxSize
            call monsters[i].moveToLoc(whichLoc)
            set i = i + 1
        endloop
    endmethod
        
    //prints the contents of the monster group
    method printGroup takes nothing returns nothing
        local integer i = 0
        loop
            exitwhen i == maxSize
            if monsters[i] != 0 then
                call printl(monsters[i].toString())
            endif
            set i = i + 1
        endloop
    endmethod
    

    method displayGroup takes boolean display, string message returns nothing
        local integer i = 0
        if mDialog != null then
			call DialogDestroy(mDialog)
        endif
        set mDialog = DialogCreate()
        call DialogSetMessage(mDialog, message)
        loop
            exitwhen i == maxSize
            if monsters[i] != 0 then
                set bttns[i] = DialogAddButton(mDialog, monsters[i].toString(), i)
            else //monsters[i] == 0
                set bttns[i] = null
            endif
            set i = i + 1
        endloop
        call DialogAddButton(mDialog, "Nevermind.", 0)
        if display then
            call DialogDisplay(players[pid], mDialog, true)
        endif
    endmethod
	
endstruct
endlibrary