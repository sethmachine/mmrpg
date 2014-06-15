library PlayerDataStruct requires MonsterGroupStruct, NPCStruct

globals
endglobals


struct PlayerData
    integer pid = 0 //the player's unique id
    integer creepRegion = -1 //the player's current creep region
    integer creepFreq = 0//how often creeps spawn
    PC pc //the player's monster master
    Monster recruit = 0 //a potential recruit
    MonsterGroup party //the player's party monsters
    MonsterGroup farm //the player's farm monsters
    ItemGroup backpack //the player's virtual inventory
    ItemGroup bank //the player's inventory at home
    MagicKeyGroup keys //the player's magic keys
    dialog recruitDialog
    button recruitYes
    button recruitNo
    NPC array npcs[20] //the list of all the interactable NPCs for this player
    Warp array warps[100] //all useable warps in the game
    Quest array quests[TOTAL_QUESTS] //the list of all the quests, not all may be activated however
    trigger npcTrig //the current npc trig, destroyed everytime a convo finishes
    unit u //the monster master handle

    static method create takes integer pid returns thistype
        local thistype this = thistype.allocate()
        local trigger t = CreateTrigger()
        set this.pid = pid
        set this.party = MonsterGroup.create(PARTY, pid) //initialize the party
        set this.farm = MonsterGroup.create(FARM, pid) //initialze the farm
        set this.backpack = ItemGroup.create(BACKPACK, pid)
        set this.bank = ItemGroup.create(BANK, pid)
        set this.keys = MagicKeyGroup.create(pid)
        set recruitDialog = DialogCreate()
        set recruitYes = DialogAddButton(recruitDialog, "Yes.", 0)
        set recruitNo = DialogAddButton(recruitDialog, "No.", 0)
        set t = null
        return this
    endmethod

    method moveToLoc takes location targetLoc returns nothing
        //wait 1.5 seconds
        call party.moveGroupToLoc(targetLoc)
    endmethod
        
    method startQuest takes string questTitle, boolean fanfare returns boolean
        local integer i = 0
        loop
            exitwhen i == TOTAL_QUESTS
            if quests[i].colorlessTitle == questTitle then //found a free slot
                call quests[i].enable(fanfare)
                return true //found room in the quests array, added it
            endif
            set i = i + 1
        endloop
        return false //no room in the quests array
    endmethod
    
    method addQuest takes Quest q returns boolean
        local integer i = 0
        loop
            exitwhen i == TOTAL_QUESTS
            if quests[i] == 0 then //found a free slot
                set quests[i] = q
                return true //found room in the quests array, added it
            endif
            set i = i + 1
        endloop
        return false //no room in the quests array
    endmethod

//searches through the quests array by the title of a quest
//returns the index of where that quest is in the array
//returns -1 if no such quest exists
    method findQuestByTitle takes string title returns integer
        local integer i = 0
        loop
            exitwhen i == TOTAL_QUESTS
            if quests[i].title == title then //found the quest
                return i
            endif
            set i = i + 1
        endloop
        return -1 //didn't find the quest for the given title
    endmethod

//searches through the quests array by the goalType of an active quest's current stage
//returns the index of where that quest is in the array
//returns -1 if no such quest exists
    method findQuestByGoalType takes integer goalType, integer start returns integer
        local integer i = start //where we start looking
        loop
            exitwhen i == TOTAL_QUESTS
            if quests[i].isActive then
                if quests[i].goals[quests[i].stage].goalType == goalType then
                    return i
                endif
            endif
            set i = i + 1
        endloop
        return -1 //no such quest
    endmethod

endstruct
endlibrary