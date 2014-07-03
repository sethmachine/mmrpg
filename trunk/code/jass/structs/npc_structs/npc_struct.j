library NPCStruct requires Util

globals
    constant integer DSPLY_TXT_DUR = 7 //how long a display text message from the NPC should last
    constant player BOT_ALLY = Player(10)
    constant integer QUIT_BTTN = 0 //the position where the quit button is in any dialogue
    constant string QUIT_MSG = "Nevermind." //the button title for the option to exit a conversation
    constant integer INTRO = 0 //the intro dialog is always the first in the array
    constant integer HOTKEY = 0 //generic hotkey, won't be using yet
    constant integer MAX_DIALOGS = 20
    constant integer MAX_BTTNS = 10
    //constant to be subtraced from NPCs point values
    constant integer NPC_CONS = 300
    constant integer WARP_CONS = 500
endglobals

struct NPC
    //a TableArray for all the one dimensional arrays
    //integer array: dialog total buttons
    //dialog array: dialogs
    //string array: titles of each dialog
    Table oneD
    //dialog buttons: [dialog * MAX_BTTNS][bttn number]
    //dialog button names: [dialog * MAX_BTTNS][bttn number]
    TableArray twoD

    //string introMsg //what the NPC always says at first interaction, specific to each NPC type
    integer gold = 100
	
	//the rawcode of the npc
	integer id

    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD = Table.create()
        set twoD = TableArray[0x2000]
        set oneD.dialog[INTRO] = DialogCreate()
        set twoD[INTRO * MAX_DIALOGS].button[QUIT_BTTN] = DialogAddButton(oneD.dialog[INTRO], QUIT_MSG, HOTKEY)
        set twoD[INTRO * MAX_DIALOGS].string[QUIT_BTTN] = QUIT_MSG
        return this
    endmethod
    
        
    //adds a button to the given dialog number
    //the button is placed below the last button, but above the QUIT_BTTN
    //returns the index of where the button is placed, -1 if no room
    method addBttnToDialog takes integer dialogNum, string name returns integer
        local integer i = QUIT_BTTN + 1 //we re-add the QUIT_BTTN last
        local integer index = -1
        call DialogClear(oneD.dialog[dialogNum]) //reset the dialogue because the QUIT_BTTN is always last
        loop
            exitwhen i > oneD[dialogNum] + 1
            if i <= oneD[dialogNum] then //and twoD[dialogNum * MAX_BTTNS].string[i] != "" then
                set twoD[dialogNum * MAX_BTTNS].button[i] = DialogAddButton(oneD.dialog[dialogNum], twoD[dialogNum * MAX_BTTNS].string[i], HOTKEY)
            else //i == dialogTotalBttns[dialogNum], it's the new button being added
                set twoD[dialogNum * MAX_BTTNS].string[i] = name
                set twoD[dialogNum * MAX_BTTNS].button[i] = DialogAddButton(oneD.dialog[dialogNum], name, HOTKEY)
                set index = i
            endif
            set i = i + 1
        endloop
        set twoD[dialogNum * MAX_BTTNS].button[QUIT_BTTN] = DialogAddButton(oneD.dialog[dialogNum], QUIT_MSG, HOTKEY) //add back in the quit bttn
        set oneD[dialogNum] = oneD[dialogNum] + 1 //increment the total buttons now
        call DialogSetMessage(oneD.dialog[dialogNum], oneD.string[dialogNum])
        return index
    endmethod

    
    //removes a button from the given dialog number
    //the button which matches the string is removed
    //the order of the rest of the buttons is unchanged
    //returns the index of where the removed button was placed, -1 if it does not exist
    method removeBttnFromDialog takes integer dialogNum, string name returns integer
        local integer i = QUIT_BTTN + 1 //we re-add the QUIT_BTTN last
        local integer index = -1
        call DialogClear(oneD.dialog[dialogNum]) //reset the dialog because the QUIT_BTTN is always last
        loop
            exitwhen i > oneD[dialogNum] + 0
            if name != twoD[dialogNum * MAX_BTTNS].string[i] then //it's not the button being removed
                set twoD[dialogNum * MAX_BTTNS].button[i] = DialogAddButton(oneD.dialog[dialogNum], twoD[dialogNum * MAX_BTTNS].string[i], HOTKEY)
            else //we found the removed button, this might leave a 'hole' in the button arrays?
                set twoD[dialogNum * MAX_BTTNS].button[i] = null //deallocate the button
                set twoD[dialogNum * MAX_BTTNS].string[i] = "" //deallocate the string
                set oneD[dialogNum] = oneD[dialogNum] - 2 //decrement the total buttons
                set index = i
            endif
            set i = i + 1
        endloop
        set twoD[dialogNum * MAX_BTTNS].button[QUIT_BTTN] = DialogAddButton(oneD.dialog[dialogNum], QUIT_MSG, HOTKEY) //add back in the quit bttn
        set oneD[dialogNum] = oneD[dialogNum] + 1 //increment the total buttons now
        call DialogSetMessage(oneD.dialog[dialogNum], oneD.string[dialogNum])
        return index
    endmethod

    method interact takes integer pid returns nothing
        call DialogSetMessage(oneD.dialog[INTRO], oneD.string[INTRO])
        call DialogDisplay(Player(pid), oneD.dialog[INTRO], true)
    endmethod
    
endstruct
endlibrary