		//************************************
		// name: THE_ORB_OF_SEAS
		// strname: "The Orb of Seas"
		//************************************	
		set q = Quest.create("The Orb of Seas", BLUE, i)
		call q.setDescription("The desert world of Agon is rumored to contain a magical artifact that might restore power to the EluDari, the magical barrier protecting the human worlds from the monsters.  Royal Chaplain Ricard has suggested that I seek out help from Abu Dhabi, the Prince of Agon, whose seat is Cazbar, the capital.\n\nIf fortune holds, Abu Dhabi will be able to point me in the direction of this magical artifact. I will then need to recover the artifact, wherever it may be.")
		call q.setIcon("BTNWaterOrb.blp")
        call playerDatum[i].addQuest(q)
		//set q.notHidden = false
		
        call q.addGoal("Speak with Abu Dhabi.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ABU_DHABI, ORB_ABU_DHABI_PART1, "I seek a magical artifact.", false)
        set goalNum = goalNum + 1
		
        set q.reward = rewardTable[UNKNOWN_REWARD]
		//call playerDatum[i].startQuest("Flowers for Al-Jernan", false)
		set goalNum = 0


















































































































