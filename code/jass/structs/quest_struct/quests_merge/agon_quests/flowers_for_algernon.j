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