library GoalStruct requires PlayerFilters, Colors, ItemProtect, PlayerDataTable, StoryTable

globals
    //types of goals
    constant integer MAX_ITEMS = 6
    constant integer ITEM_TYPE_GET_GOAL = 0 //a player needs to pick up a specific item, or type of item
    constant integer ITEM_TYPE_GIVE_GOAL = 1 //a player needs to give up a specific item, or type of item
    
    constant integer NPC_KILL_GOAL = 0 //a player needs to kill a certain NPC or monster, e.g. boss
    constant integer BTTN_CLICK_GOAL  = 2 //a player selects a specific dialogue button
    
    constant integer REGION_ENTER_GOAL = 3 //a player needs to find a certain place (city, dungeon, etc.)
    
    constant integer STRING_ENTER_GOAL = 4 //a player needs to type in a string
    
    constant integer PARTY_SIZE_GOAL = 5 //a player needs X amount of monsters in the party
    
    constant integer GOLD_AMOUNT_GOAL = 6 //a player needs X amount of gold
    
    constant integer STORY_GOAL = 7 //a player needs to read through a series of dialogs, and click the last button.  
    constant integer STORY_AND_PARTY_GOAL = 8 //a player needs to read through a series of dialogs, and click the last button.     
    constant integer MONSTER_GIVE_GOAL  = 0//a player needs to give up a certain monster
endglobals

function stringEnterMain takes nothing returns boolean
    local integer pid = GetPlayerId(GetTriggerPlayer())
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(STRING_ENTER_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            if StringCase(GetEventPlayerChatString(), false) == playerDatum[pid].quests[currQuest].goals[currQuestStage].goalString then
                call playerDatum[pid].quests[currQuest].advance()
                call DestroyTrigger(GetTriggeringTrigger())
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    return false
endfunction


function goldAmountMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(GOLD_AMOUNT_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            if GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD) >= playerDatum[pid].quests[currQuest].goals[currQuestStage].quant then
                call playerDatum[pid].quests[currQuest].advance()
                call DestroyTrigger(GetTriggeringTrigger())
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    return false
endfunction

function partySizeMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
	if GetOwningPlayer(GetTriggerUnit()) == p then
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(PARTY_SIZE_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            if playerDatum[pid].party.size == playerDatum[pid].quests[currQuest].goals[currQuestStage].quant then
                call playerDatum[pid].quests[currQuest].advance()
                call DestroyTrigger(GetTriggeringTrigger())
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
	endif
    return false
endfunction
    
function regionEnterMain takes nothing returns boolean
    local unit u = GetTriggerUnit()
    local player p = GetOwningPlayer(u)
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(REGION_ENTER_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            if GetTriggeringRegion() == playerDatum[pid].quests[currQuest].goals[currQuestStage].goalRegion then
                call playerDatum[pid].quests[currQuest].advance()
                call DestroyTrigger(GetTriggeringTrigger())
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    set p = null
    set u = null
    return false
endfunction

function askBttnMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    local integer askBttn = 0
    local integer goalNpc = 0
    local integer goalDialog = 0
    local integer goalStory = 0
	local PlayerData pd = playerDatum[pid]
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = pd.findQuestByGoalType(STORY_GOAL, questRange)
        set currQuestStage = pd.quests[currQuest].stage
        if currQuest >= 0 then
            set askBttn = pd.quests[currQuest].goals[currQuestStage].askBttn
            set goalNpc = pd.quests[currQuest].goals[currQuestStage].goalNpc
            set goalDialog = pd.quests[currQuest].goals[currQuestStage].goalDialog
            set goalStory = pd.quests[currQuest].goals[currQuestStage].goalStory
            if GetClickedButton() == pd.npcs[goalNpc].twoD[INTRO * MAX_DIALOGS].button[askBttn] then
				call bigStoryTable[goalStory].setStoryMsg(bigStoryTable[goalStory].title)
                call DialogDisplay(p, bigStoryTable[goalStory].d, true)
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    set p = null
    return false
endfunction

function storyMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    local integer goalStory
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(STORY_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            set goalStory = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalStory
            if GetClickedButton() == bigStoryTable[goalStory].getFinalStory().next then
                call playerDatum[pid].quests[currQuest].goals[currQuestStage].disableStoryGoal()
                call playerDatum[pid].quests[currQuest].advance()
                call DestroyTrigger(GetTriggeringTrigger())
                call DestroyTrigger(playerDatum[pid].quests[currQuest].goals[currQuestStage].askTrig)
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    set p = null
    return false
endfunction

function storyAndPartyMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    local integer goalStory
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(STORY_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            set goalStory = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalStory
            if GetClickedButton() == bigStoryTable[goalStory].getFinalStory().next then
				if playerDatum[pid].party.size == playerDatum[pid].quests[currQuest].goals[currQuestStage].quant then
					call playerDatum[pid].quests[currQuest].goals[currQuestStage].disableStoryGoal()
					call playerDatum[pid].quests[currQuest].advance()
					call DestroyTrigger(GetTriggeringTrigger())
					call DestroyTrigger(playerDatum[pid].quests[currQuest].goals[currQuestStage].askTrig)
					set questRange = TOTAL_QUESTS
				else
				set questRange = currQuest + 1
				endif
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    set p = null
    return false
endfunction


function buttonClickMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    local integer goalBttn = 0
    local integer goalNpc = 0
    local integer goalDialog = 0
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(BTTN_CLICK_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            set goalBttn = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalBttn
            set goalNpc = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalNpc
            set goalDialog = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalDialog
            if GetClickedButton() == playerDatum[pid].npcs[goalNpc].twoD[goalDialog * MAX_DIALOGS].button[goalBttn] then
                call playerDatum[pid].quests[currQuest].advance()
                call DestroyTrigger(GetTriggeringTrigger())
                call DestroyTrigger(playerDatum[pid].quests[currQuest].goals[currQuestStage].askTrig)
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    set p = null
    return false
endfunction


function itemGiveByTypeMain takes nothing returns boolean
    local player p = players[0]
    local integer pid = 0
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
    local integer goalBttn = 0
    local integer goalNpc = 0
    local integer goalDialog = 0
    local integer i = 0
    local integer count = 0 //how many items of the type the player has
    loop
        exitwhen questRange == TOTAL_QUESTS
        set currQuest = playerDatum[pid].findQuestByGoalType(ITEM_TYPE_GIVE_GOAL, questRange)
        set currQuestStage = playerDatum[pid].quests[currQuest].stage
        if currQuest >= 0 then
            set goalBttn = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalBttn
            set goalNpc = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalNpc
            set goalDialog = playerDatum[pid].quests[currQuest].goals[currQuestStage].goalDialog
            if GetClickedButton() == playerDatum[pid].npcs[goalNpc].twoD[goalDialog * MAX_DIALOGS].button[goalBttn] then
				loop
                    exitwhen i == MAX_ITEMS
                    if GetItemTypeId(UnitItemInSlot(playerDatum[pid].pc.u, i)) == playerDatum[pid].quests[currQuest].goals[currQuestStage].goalItemType then
                        if playerDatum[pid].quests[currQuest].goals[currQuestStage].quant > 0 then
                            set count = count + 1
                            call RemoveItem(UnitItemInSlot(playerDatum[pid].pc.u, i))
                            set playerDatum[pid].quests[currQuest].goals[currQuestStage].quant = playerDatum[pid].quests[currQuest].goals[currQuestStage].quant - 1
                        endif
                    endif
                    set i = i + 1
                endloop
                if playerDatum[pid].quests[currQuest].goals[currQuestStage].quant == 0 then
                    call playerDatum[pid].quests[currQuest].advance()
                    call DestroyTrigger(GetTriggeringTrigger())
                endif
                set questRange = TOTAL_QUESTS
            else
                set questRange = currQuest + 1 //advance the quest counter, in case another quest has a button click goal
            endif
        else //currQuest == -1, there are no enabled quests with an item obtain goal
            set questRange = TOTAL_QUESTS
        endif
    endloop
    set p = null
    return false
endfunction

function itemGetByTypeMain takes nothing returns boolean
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local unit u = GetTriggerUnit()
    local item i = GetManipulatedItem()
	local integer itemId = GetItemTypeId(i)
    local integer currQuest = 0
    local integer currQuestStage = 0
    local integer questRange = 0
	local integer j = 0 //loop through inventory + backpack
	local integer total = 0 //total of the item type
    if not isLoot(i, pid) then
    elseif GetTriggerUnit() == playerDatum[pid].pc.u then
        loop
            exitwhen questRange == TOTAL_QUESTS
            set currQuest = playerDatum[pid].findQuestByGoalType(ITEM_TYPE_GET_GOAL, questRange)
            set currQuestStage = playerDatum[pid].quests[currQuest].stage
            if currQuest >= 0 then
                if itemId == playerDatum[pid].quests[currQuest].goals[currQuestStage].goalItemType then
					loop
						exitwhen j == MAX_ITEMS
						if itemId == GetItemTypeId(UnitItemInSlot(playerDatum[pid].pc.u, j)) then
							set total = total + 1
						endif
						set j = j + 1
					endloop
					set j = 0
					loop
						exitwhen j == MAX_BACKPACK_SIZE
						if itemId == playerDatum[pid].backpack.items[j].itemId then
							set total = total + 1
						endif
						set j = j + 1
					endloop
					if total >= playerDatum[pid].quests[currQuest].goals[currQuestStage].quant then
						call playerDatum[pid].quests[currQuest].advance()
						call DestroyTrigger(GetTriggeringTrigger())
						set questRange = TOTAL_QUESTS
					endif
					/*if playerDatum[pid].quests[currQuest].goals[currQuestStage].quant != 0 then
						set playerDatum[pid].quests[currQuest].goals[currQuestStage].quant = playerDatum[pid].quests[currQuest].goals[currQuestStage].quant - 1
						set questRange = TOTAL_QUESTS
					endif
					call print("quant : " + I2S(playerDatum[pid].quests[currQuest].goals[currQuestStage].quant))
                    if playerDatum[pid].quests[currQuest].goals[currQuestStage].quant == 0 then
						call playerDatum[pid].quests[currQuest].advance()
						call DestroyTrigger(GetTriggeringTrigger())
						set questRange = TOTAL_QUESTS
					endif*/
                else
                    set questRange = currQuest + 1 //advance the quest counter, in case another quest has item obtain goal
                endif
            else //currQuest == -1, there are no enabled quests with an item obtain goal
                set questRange = TOTAL_QUESTS
            endif
        endloop
    endif
    set p = null
    set u = null
    set i = null
    return false
endfunction


//a representation of a subgoal of some quest
//quests are a linear chain of Goals
struct Goal
    integer quant = 0 //how many of a type a player needs to get, e.g. 3 flowers
    integer goalItemType
    integer goalUnitType
    region goalRegion
    integer goalStory
    integer goalDialog
    integer goalBttn
    integer goalNpc
    integer goalType //what kind of goal, e.g. enter a region or find an item
    integer pid //which player the goal is for
    trigger goalTrig //the trig which the goal is running, disabled initially
    trigger askTrig //the trig which does the asking
    string goalString
    string askBttnMsg
    integer askBttn
	Event goalCause //event that runs when the goal is just started
	Event goalResult //event that runs when the goal is just finished
	location goalLoc //the location that gets pinged, if any
	effect goalEffect //the "!" above an NPC's head
    
    static method create takes integer goalType, integer pid returns thistype
        local thistype this = thistype.allocate()
        set this.goalType = goalType
        set this.pid = pid
        return this
    endmethod
    
    //nulls and destroys all objects in the goal
    method flush takes nothing returns nothing
        set goalRegion = null
		if goalLoc != null then
			call RemoveLocation(goalLoc)
		endif
		set goalLoc = null
    endmethod
    
    method setGetItemByTypeGoal takes integer goalItemType, integer quant returns nothing
        local trigger t = CreateTrigger()
		set this.quant = quant
        set this.goalItemType = goalItemType
        call TriggerRegisterPlayerUnitEventSimple(t, players[pid], EVENT_PLAYER_UNIT_PICKUP_ITEM)
        call TriggerAddCondition(t, Condition(function itemGetByTypeMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod
    
    method setGiveItemByTypeGoal takes integer goalItemType, integer quant, integer goalNpc, integer goalDialog, integer goalBttn returns nothing
        local trigger t = CreateTrigger()
        set this.goalItemType = goalItemType
        set this.quant = quant
        set this.goalDialog = goalDialog
        set this.goalBttn = goalBttn
        set this.goalNpc = goalNpc
        call TriggerRegisterDialogEvent(t, playerDatum[pid].npcs[goalNpc].oneD.dialog[goalDialog])
        call TriggerAddCondition(t, Condition(function itemGiveByTypeMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod
    
    method setClickBttnGoal takes integer goalNpc, integer goalDialog, integer goalBttn, string askBttnMsg returns nothing
        local trigger t = CreateTrigger()
        set this.goalNpc = goalNpc
        set this.goalDialog = goalDialog
        set this.goalBttn = goalBttn
        set this.askBttnMsg = askBttnMsg
        call TriggerRegisterDialogEvent(t, playerDatum[pid].npcs[goalNpc].oneD.dialog[goalDialog])
        call print(I2S(goalDialog))
        call print(I2S(goalBttn))
        call TriggerAddCondition(t, Condition(function buttonClickMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod
    

    method setStoryGoal takes integer goalNpc, integer goalStory, string askBttnMsg, boolean isActive returns nothing
        local trigger t = CreateTrigger()
        set this.goalNpc = goalNpc
        set this.goalStory = goalStory
        set this.askBttnMsg = askBttnMsg
        call TriggerRegisterDialogEvent(t, bigStoryTable[goalStory].getFinalStory().d)
        call TriggerAddCondition(t, Condition(function storyMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
        if isActive then
            call enableStoryGoal()
        endif
    endmethod

    method setStoryAndPartyGoal takes integer goalNpc, integer goalStory, string askBttnMsg, boolean isActive, integer quant returns nothing
        local trigger t = CreateTrigger()
        set this.goalNpc = goalNpc
        set this.goalStory = goalStory
        set this.askBttnMsg = askBttnMsg
		set this.quant = quant
        call TriggerRegisterDialogEvent(t, bigStoryTable[goalStory].getFinalStory().d)
        call TriggerAddCondition(t, Condition(function storyAndPartyMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
        if isActive then
            call enableStoryGoal()
        endif
    endmethod
    
    method setEnterRegionGoal takes region goalRegion returns nothing
        local trigger t = CreateTrigger()
        set this.goalRegion = goalRegion
        call TriggerRegisterEnterRegion(t, goalRegion, playerRegionFilters[pid])
        call TriggerAddCondition(t, Condition(function regionEnterMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod

    method setPartySizeGoal takes integer quant returns nothing
        local trigger t = CreateTrigger()
        set this.quant = quant
        call TriggerRegisterPlayerUnitEvent(t, players[pid], EVENT_PLAYER_UNIT_SELECTED, null)
        call TriggerAddCondition(t, Condition(function partySizeMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod
    
    method setGoldAmountGoal takes integer quant returns nothing
        local trigger t = CreateTrigger()
        set this.quant = quant
        call TriggerRegisterPlayerStateEvent(t, players[pid], PLAYER_STATE_RESOURCE_GOLD, GREATER_THAN_OR_EQUAL, quant)
        call TriggerAddCondition(t, Condition(function goldAmountMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod
    
    method setEnterStringGoal takes string goalString returns nothing
        local trigger t = CreateTrigger()
        set this.goalString = goalString
        call TriggerRegisterPlayerChatEvent(t, players[pid], goalString, true)
        call TriggerAddCondition(t, Condition(function stringEnterMain))
        set goalTrig = t
        call DisableTrigger(goalTrig)
        set t = null
    endmethod
    
    //adds a button which allows a player to reach the goalDialog
    //by default the button is added to the INTRO dialog of a given NPC
    //the goal dialog must exist before hand!
    method enableStoryGoal takes nothing returns nothing
        local trigger t = CreateTrigger()
		local unit u = getNPCUnit(playerDatum[pid].npcs[goalNpc].id)
		local string s = "Abilities\\Spells\\Other\\TalkToMe\\TalkToMe.mdl"
        set askBttn = playerDatum[pid].npcs[goalNpc].addBttnToDialog(INTRO, askBttnMsg)
        //now we need to link the askBttn to the goal dialog...
        call TriggerRegisterDialogEvent(t, playerDatum[pid].npcs[goalNpc].oneD.dialog[INTRO])
        call TriggerAddCondition(t, Condition(function askBttnMain))
		if GetLocalPlayer() != players[pid] then
			set s = ""
		endif
		set goalEffect = AddSpecialEffectTarget(s, u, "head")
		set t = null
		set u = null
    endmethod
    
    //removes the button which allowed a player to reach the goalDialog
    //by default the button is added to the INTRO dialog of the goal NPC
    //enableStoryGoal must have been called before calling this!
    method disableStoryGoal takes nothing returns nothing
        call playerDatum[pid].npcs[goalNpc].removeBttnFromDialog(INTRO, askBttnMsg)
		call DestroyEffect(goalEffect)
		set goalEffect = null
    endmethod
        
        
    
endstruct
endlibrary