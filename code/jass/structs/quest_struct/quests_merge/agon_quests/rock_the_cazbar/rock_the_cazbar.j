		//************************************
		// name: ROCK_THE_CAZBAR
		// strname: "Rock the Cazbar!"
		//************************************	
		set q = Quest.create("Rock the Cazbar!", YELLOW, i)
		call q.setDescription("The desert world of Agon is rumored to contain a magical artifact that might restore power to the EluDari, the magical barrier protecting the human worlds from the monsters.  Royal Chaplain Ricard has suggested that I seek out help from Abu Dhabi, the Prince of Agon, whose seat is Cazbar, the capital.\n\nIf fortune holds, Abu Dhabi will be able to point me in the direction of this magical artifact. I will then need to recover the artifact, wherever it may be.")
		call q.setIcon("BTNWaterOrb.blp")
        call playerDatum[i].addQuest(q)
		//set q.notHidden = false
		
        call q.addGoal("Seek an audience with Abu Dhabi.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ALFONZO, ALFONZO_PART1, "Can you help me get inside?", false)
        set goalNum = goalNum + 1
		
		call q.addGoal("Get three monsters to perform an act.", PARTY_SIZE_GOAL)
        call q.goals[goalNum].setPartySizeGoal(3)
        set goalNum = goalNum + 1

        call q.addGoal("Return to Alfonzo.", STORY_GOAL)
		call q.goals[goalNum].setStoryAndPartyGoal(ALFONZO, ALFONZO_PART2, "I've got three monsters.", false, 3)
		set q.goals[goalNum].goalLoc = getNPCLoc(ALFONZO_ID)
		set q.goals[goalNum].goalResult = eventTable[ROCK_THE_CAZBAR_E1]
        set goalNum = goalNum + 1

        call q.addGoal("Tell Alfonzo you are ready.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ALFONZO2, ALFONZO_PART3, "I'm ready to perform.", false)
		set q.goals[goalNum].goalLoc = getNPCLoc(ALFONZO2_ID)
		set q.goals[goalNum].goalResult = eventTable[ROCK_THE_CAZBAR_E2]
        set goalNum = goalNum + 1

        /*call q.addGoal("Speak with Abu Dhabi.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ABU_DHABI, ABU_DHABI_PART1, "I seek the magical artifact of Agon.", false)
		set q.goals[goalNum].goalLoc = getNPCLoc(ABU_DHABI_ID)
        set goalNum = goalNum + 1*/
		
        set q.reward = rewardTable[FLOWERS_FOR_ALGERNON_REWARD]
		//call playerDatum[i].startQuest("Flowers for Al-Jernan", false)
		set goalNum = 0





























