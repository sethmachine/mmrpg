library QuestInit requires Constants

globals
endglobals


function questInit takes nothing returns nothing
    local integer i = 0
    local integer goalNum = 0
    local Quest q
    loop
		exitwhen i == TOTAL_PLAYERS
			//************************************
		// name: FLOWERS_FOR_ALGERNON
		// strname: "Flowers for Al-Jernan"
		//************************************	
		set q = Quest.create("Flowers for Al-Jernan", GREEN, i)
		call q.setDescription("Isaiahs husband recently passed away. Apparently he was a traveling merchant, but unfortunately for him, the caravan he traveled with was ambushed by a group of bandits.  The customs of Agon have it that widows must bury their dead husbands with bundles of desert flowers.  But, as the desert of Agon is too dangerous these days, Isaiah has asked me to find these flowers for her.\n\n  Hopefully this will end her crying and bring the peace that her husband deserves.")
		call q.setIcon("ReplaceableTextures\\CommandButtons\\BTNDryadDispelMagic.blp")
        call playerDatum[i].addQuest(q)
		set q.notHidden = false
		
        call q.addGoal("Speak to Isaiah.", STORY_GOAL)
		call q.goals[goalNum].setStoryGoal(ISAIAH, ISAIAH_PART1, "Why are you crying?", false)
		set q.goals[goalNum].goalResult = eventTable[FLOWERS_FOR_ALGERNON_E1]
        set goalNum = goalNum + 1
	
        call q.addGoal("Find a desert flower.", ITEM_TYPE_GET_GOAL)
        call q.goals[goalNum].setGetItemByTypeGoal(DESERT_FLOWER, 1)
		set q.goals[goalNum].goalCause = eventTable[FLOWERS_FOR_ALGERNON_E2]
		call q.goals[goalNum].goalCause.setEventLoc(i)
		set q.goals[goalNum].goalLoc = q.goals[goalNum].goalCause.getEventLoc(i)
        set goalNum = goalNum + 1

        call q.addGoal("Find another desert flower.", ITEM_TYPE_GET_GOAL)
        call q.goals[goalNum].setGetItemByTypeGoal(DESERT_FLOWER, 2)
		set q.goals[goalNum].goalCause = eventTable[FLOWERS_FOR_ALGERNON_E3]
		call q.goals[goalNum].goalCause.setEventLoc(i)
		set q.goals[goalNum].goalLoc = q.goals[goalNum].goalCause.getEventLoc(i)
        set goalNum = goalNum + 1

        call q.addGoal("Find a third desert flower.", ITEM_TYPE_GET_GOAL)
        call q.goals[goalNum].setGetItemByTypeGoal(DESERT_FLOWER, 3)
		set q.goals[goalNum].goalCause = eventTable[FLOWERS_FOR_ALGERNON_E4]
		call q.goals[goalNum].goalCause.setEventLoc(i)
		set q.goals[goalNum].goalLoc = q.goals[goalNum].goalCause.getEventLoc(i)
        set goalNum = goalNum + 1
		
        call q.addGoal("Return to Isaiah.", STORY_GOAL)
        call q.goals[goalNum].setStoryGoal(ISAIAH, ISAIAH_PART2, "I've got the flowers.", false)
		set q.goals[goalNum].goalLoc = getNPCLoc(ISAIAH_ID)
        set goalNum = goalNum + 1

        call q.addGoal("Place the flowers on Al-Jernan's tombstone.", ITEM_TYPE_GIVE_GOAL)
        call q.goals[goalNum].setGiveItemByTypeGoal(DESERT_FLOWER, 3, TOMBSTONE, INTRO, 1)
		set q.goals[goalNum].goalResult = eventTable[FLOWERS_FOR_ALGERNON_E5]
		set q.goals[goalNum].goalLoc = getNPCLoc(TOMBSTONE_ID)
        set goalNum = goalNum + 1
		
        set q.reward = rewardTable[FLOWERS_FOR_ALGERNON_REWARD]
		call playerDatum[i].startQuest("Flowers for Al-Jernan", false)
		set goalNum = 0






































































































































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







































































































































		set i = i + 1
    endloop
endfunction
        
endlibrary
