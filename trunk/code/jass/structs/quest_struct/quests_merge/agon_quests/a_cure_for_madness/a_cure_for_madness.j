		//************************************
		// name: A_CURE_FOR_MADNESS
		// strname: "A Cure For Madness"
		//************************************	
		set q = Quest.create("A Cure For Madness", GREEN, i)
		call q.setDescription("I came across a sick old man who has been driven mad.  Apparently the water supplying Kalka has been tainted, turning into a vile shade of green.  Whatever is poisoning the water must be down in the sewers.\n\nUnfortunately the entrance to the sewers is locked, so I will need to find a way in.    Perhaps I should head to Cazbar, the seat of the Prince of Agon, and tell him of the suffering of Kalka.    Once inside the sewers, I will try to find the source of the green water.")
		call q.setIcon("ReplaceableTextures\\CommandButtons\\BTNDalaranReject.blp")
        call playerDatum[i].addQuest(q)
		set q.notHidden = false
		
        call q.addGoal("Speak to the ill man.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(AGON_SICK_MAN, SICK_MAN_PART1, "Are you alright old man?", false)
		set q.goals[goalNum].goalResult = eventTable[A_CURE_FOR_MADNESS_E1]
        set goalNum = goalNum + 1

        call q.addGoal("Find a way inside the sewers.", ITEM_TYPE_GET_GOAL)
        call q.goals[goalNum].setGetItemByTypeGoal(DESERT_FLOWER, 1)
		set q.goals[goalNum].goalCause = eventTable[FLOWERS_FOR_ALGERNON_E2]
		call q.goals[goalNum].goalCause.setEventLoc(i)
		set q.goals[goalNum].goalLoc = q.goals[goalNum].goalCause.getEventLoc(i)
        set goalNum = goalNum + 1
		
        set q.reward = rewardTable[FLOWERS_FOR_ALGERNON_REWARD]
		call playerDatum[i].startQuest("A Cure For Madness", false)
		set goalNum = 0





























