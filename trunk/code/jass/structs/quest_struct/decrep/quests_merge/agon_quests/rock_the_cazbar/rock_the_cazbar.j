		//************************************
		// name: ROCK_THE_CAZBAR
		// strname: "Rock the Cazbar!"
		//************************************	
		set q = Quest.create("Rock the Cazbar!", GREEN, i)
		call q.setDescription("The circus of Alfonzo ran into trouble on the road, and he is fresh out of performers.  If I perform an act for Alfonzo, I will be able to get access to Castle Cazbar, and finally meet with Abu Dhabi, the Prince of Agon.  I will need a party of three monsters before returning to Alfonzo.  Monsters are easier to recruit if they are fed plenty of meat before defeating them.  ")
		call q.setIcon("ReplaceableTextures\\CommandButtons\\BTNHeroDreadLord.blp")
        call playerDatum[i].addQuest(q)
		set q.notHidden = false
		
        call q.addGoal("Talk to Alfonzo.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ALFONZO, ALFONZO_PART1, "Can you help me get inside?", false)
		set q.goals[goalNum].goalResult = eventTable[ROCK_THE_CAZBAR_E1]
        set goalNum = goalNum + 1
		
		call q.addGoal("Get three monsters to perform an act.", PARTY_SIZE_GOAL)
        call q.goals[goalNum].setPartySizeGoal(3)
        set goalNum = goalNum + 1

        call q.addGoal("Return to Alfonzo.", STORY_GOAL)
		call q.goals[goalNum].setStoryAndPartyGoal(ALFONZO, ALFONZO_PART2, "I've got three monsters.", false, 3)
		set q.goals[goalNum].goalLoc = getNPCLoc(ALFONZO_ID)
		set q.goals[goalNum].goalResult = eventTable[ROCK_THE_CAZBAR_E2]
        set goalNum = goalNum + 1

        call q.addGoal("Tell Alfonzo you are ready.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ALFONZO2, ALFONZO_PART3, "I'm ready to perform.", false)
		set q.goals[goalNum].goalLoc = getNPCLoc(ALFONZO2_ID)
		set q.goals[goalNum].goalResult = eventTable[ROCK_THE_CAZBAR_E3]
        set goalNum = goalNum + 1

        call q.addGoal("Finish your performance.", PARTY_SIZE_GOAL)
        call q.goals[goalNum].setPartySizeGoal(3)
        set goalNum = goalNum + 1
		
        set q.reward = rewardTable[UNKNOWN_REWARD]
		call playerDatum[i].startQuest("Rock the Cazbar!", false)
		set goalNum = 0





































































































































































