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