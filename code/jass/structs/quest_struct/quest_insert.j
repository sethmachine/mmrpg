library QuestInit

globals
endglobals


function questInit takes nothing returns nothing
    local integer i = 0
    local integer goalNum = 0
    local Quest q
			//************************************
		// name: FLOWERS_FOR_ALGERNON
		// strname: "Flowers for Al-Jernan"
		//************************************	
		set q = Quest.create("Flowers for Al-Jernan", GREEN, i)
        call playerDatum[i].addQuest(q)
		call q.enable(false)
		
        call q.addGoal("Speak to Isaiah.", STORY_GOAL)
        //call q.goals[goalNum].setStoryGoal(ISAIAH, ISAIAH_STORY_1, "Any leads for work?", false)
        set goalNum = goalNum + 1
		
        call q.addGoal("Find three desert flowers.", ITEM_TYPE_GET_GOAL)
        //call q.goals[goalNum].setGetItemByTypeGoal(DESERT_FLOWERS, 3)
        set goalNum = goalNum + 1
		
        call q.addGoal("Return to Isaiah.", STORY_GOAL)
        //call q.goals[goalNum].setStoryGoal(ISAIAH, ISAIAH_STORY_2, "I've got the flowers.", false)
        set goalNum = goalNum + 1
		
        call q.addGoal("Bring the flowers to Al-Jernan's tombstone.", STORY_GOAL)
        //call q.goals[goalNum].setGiveItemByTypeGoal(DESERT_FLOWERS, 3, TOMBSTONE, INTRO, TAKE_BTTN)
        set goalNum = goalNum + 1
		
        //set q.reward = rewardTable[TUTORIAL_QUEST]
        set i = i + 1
		set goalNum = 0
		//************************************
		// name: TUTORIAL_QUEST
		// strname: "New Beginnings"
		//************************************	
		set q = Quest.create("New Beginnings", GREEN, i)
        call playerDatum[i].addQuest(q)
		
        call q.addGoal("Speak to the Royal Chaplain.", STORY_GOAL)
        call q.goals[goalNum].setStoryGoal(Chaplain.index, CHAPLAIN_TUTORIAL_STORY_1, "Where am I?", false)
        set goalNum = goalNum + 1
		
        call q.addGoal("Pick up your first monster at the farm.", PARTY_SIZE_GOAL)
        call q.goals[goalNum].setPartySizeGoal(1)
        set goalNum = goalNum + 1
		
        call q.addGoal("Head to the item vault and withdraw all your gold.", GOLD_AMOUNT_GOAL)
        call q.goals[goalNum].setGoldAmountGoal(100)
        set goalNum = goalNum + 1
		
        call q.addGoal("Return to the Royal Chaplain.", STORY_GOAL)
        call q.goals[goalNum].setStoryGoal(Chaplain.index, CHAPLAIN_TUTORIAL_STORY_2, "I've got everything.", false)
        set goalNum = goalNum + 1
		
        //set q.reward = rewardTable[TUTORIAL_QUEST]
        set i = i + 1
		set goalNum = 0

    loop
    endloop
endfunction
        
endlibrary
