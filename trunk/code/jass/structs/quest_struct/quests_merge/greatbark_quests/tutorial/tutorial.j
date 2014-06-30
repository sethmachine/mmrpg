		//************************************
		// name: TUTORIAL_QUEST
		// strname: "New Beginnings"
		//************************************	
		set q = Quest.create("New Beginnings", GREEN, i)
		call q.setDescription("Welcome to MMRPG II!  \n\nYou are an upcoming Monster Master, but before you leave for your journey, you will need to get a grasp on the basic mechanics of the map.\n\nOne of the most important concepts is interaction.  In order to interact with the world and the NPCS, simply select your hero and then right click on any object or NPC. This will open up a dialog to perform an action or ask a service from an NPC.  Make sure your hero is close to the NPC, about the same distance you would use if speaking to an actual person in real life.\n\nThe tutorial quest will make sure you master interaction, and then you will be off on your epic journey!")
		call q.setIcon("BTNMonsterMaster.blp")
        call playerDatum[i].addQuest(q)
		
        call q.addGoal("Speak to the Royal Chaplain.", STORY_GOAL)
        call q.goals[goalNum].setStoryGoal(ROYAL_CHAPLAIN, CHAPLAIN_PART1, "Where am I?", false)
		set q.goals[goalNum].goalResult = eventTable[TUTORIAL_E1]
		set q.goals[goalNum].goalLoc = getNPCLoc(ROYAL_CHAPLAIN_ID)
		set goalNum = goalNum + 1
		
        call q.addGoal("Pick up your first monster at the farm.", PARTY_SIZE_GOAL)
        call q.goals[goalNum].setPartySizeGoal(1)
		set q.goals[goalNum].goalLoc = getNPCLoc(MONSTER_FARMER_ID)
        set goalNum = goalNum + 1
		
        call q.addGoal("Withdraw your gold from the item vault.", GOLD_AMOUNT_GOAL)
        call q.goals[goalNum].setGoldAmountGoal(100)
		set q.goals[goalNum].goalLoc = getNPCLoc(ITEM_VAULT_ID)
        set goalNum = goalNum + 1
		
        call q.addGoal("Return to the Royal Chaplain.", STORY_GOAL)
        call q.goals[goalNum].setStoryGoal(ROYAL_CHAPLAIN, CHAPLAIN_PART2, "I've got everything.", false)
        set q.goals[goalNum].goalLoc = getNPCLoc(ROYAL_CHAPLAIN_ID)
		set goalNum = goalNum + 1
		
        set q.reward = rewardTable[TUTORIAL_REWARD]
		set goalNum = 0








































































































































