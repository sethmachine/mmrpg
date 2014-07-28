library QuestStruct requires GoalStruct, RewardStruct

globals
    constant integer QUEST_TXT_DURATION = 10
    constant integer TOTAL_QUESTS = 100 //how many unique quests there are in the entire game
    constant integer MAX_GOALS = 15 //the most stages/goals a quest can have
    constant string QUEST_ENABLED = GOLD + "NEW QUEST ACQUIRED:|r "
    constant string QUEST_GOAL_FINISH = GOLD + "QUEST UPDATE:|r " + SILVER + "Completed:|r "
    constant string QUEST_UPDATE = GOLD + "QUEST UPDATE:|r " + SILVER + "New objective:|r "
    constant string QUEST_COMPLETE = GOLD + "CONGRATULATIONS:|r " + SILVER + "You completed|r "
endglobals

//a representation of a quest
struct Quest
    boolean isActive = false //whether the quest is currently enabled/active
	boolean notHidden = true
    integer pid = 0 //the player the quest belongs to
    integer stage = 0 //how far into the quest the player is
    integer stageCount = 0 //the number of stages in the quest
    quest q //the actual quest object to appear in F9 log
    string title //the title of the quest
    string colorlessTitle
    string description //the description of the quest, i.e. main body paragraph
    string icon //the path to the BTN which is this quest's icon
    Reward reward
    questitem array stageItems[MAX_GOALS] //each subquest goal
    string array stageStrings[MAX_GOALS] //the description of each subquest goal
    //Goal array goals[MAX_GOALS]
    
    static method create takes string title, string colorCode, integer pid returns thistype
        local thistype this = thistype.allocate()
        set this.colorlessTitle = title
        set this.title = colorCode + title
        set this.pid = pid
        set q = CreateQuest()
        call QuestSetTitle(q, title)
        call QuestSetEnabled(q, false) //all quests start out disabled initially
        return this
    endmethod
    /*
    method setIcon takes string icon returns nothing
        set this.icon = icon
        call QuestSetIconPath(q, icon)
    endmethod
    
    method setDescription takes string description returns nothing
        set this.description = description
        call QuestSetDescription(q, description)
    endmethod
    
    method enable takes boolean fanfare returns nothing
		if fanfare then
			call questFanfare()
		endif
        call EnableTrigger(goals[stage].goalTrig) //enable the first goal
        if goals[stage].goalType == STORY_GOAL then
            call goals[stage].enableStoryGoal()
        endif
        set isActive = true
    endmethod
    
	method questFanfare takes nothing returns nothing
        if GetLocalPlayer() == players[pid] then
            call StartSound(gg_snd_QuestNew)
            call QuestSetEnabled(q, true)
            call FlashQuestDialogButton()
        endif
		call DisplayTimedTextToPlayer(players[pid], 0, 0, QUEST_TXT_DURATION, QUEST_ENABLED + title)
		if stage > 0 or notHidden then
			call DisplayTimedTextToPlayer(Player(pid), 0, 0, QUEST_TXT_DURATION, QUEST_UPDATE + stageStrings[stage])
		endif
	endmethod
    
    method addGoal takes string goalName, integer goalType returns integer
        local integer i = 0
        loop
            exitwhen i == MAX_GOALS
            if goals[i] == 0 then //we found a free slot
                set stageStrings[i] = GOLD + goalName
				if i > 0 or notHidden then
					set stageItems[i] = QuestCreateItem(q)
				endif
                set stageCount = stageCount + 1
                if i == 0 and notHidden then
                    call QuestItemSetDescription(stageItems[i], GOLD + goalName)
                    //call DisplayTimedTextToPlayer(Player(pid), 0, 0, QUEST_TXT_DURATION, QUEST_UPDATE + stageStrings[stage])
                endif
                set goals[i] = Goal.create(goalType, pid)
                return i
            endif
            set i = i + 1
        endloop
        return -1
    endmethod
	
	method ping takes nothing returns nothing
		if goals[stage].goalLoc != null then //check to see if the goal has an actual loc
		endif
	endmethod
			
	    
    method advance takes nothing returns nothing
		if stage > 0 or notHidden then
			call QuestItemSetCompleted(stageItems[stage], true) //complete the goal
		endif
		if goals[stage].goalResult != 0 then
			call goals[stage].goalResult.do(pid)
		endif
        call goals[stage].flush() //flush the goal
        call goals[stage].destroy() //destroy the goal
		if stage > 0 or notHidden then
			call DisplayTimedTextToPlayer(Player(pid), 0, 0, QUEST_TXT_DURATION, QUEST_GOAL_FINISH + stageStrings[stage])
			if GetLocalPlayer() == players[pid] then
				call StartSound(gg_snd_QuestLog)
				call FlashQuestDialogButtonBJ()
			endif
		endif
        set stage = stage + 1
        if stage >= stageCount then
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, QUEST_TXT_DURATION, QUEST_COMPLETE + title)
            call QuestSetCompleted(q, true)
            if GetLocalPlayer() == players[pid] then
                call StartSound(gg_snd_QuestCompleted)
            endif
            call reward.award(pid) //give the quest's reward(s)
        else //more goals to do
            call DisplayTimedTextToPlayer(Player(pid), 0, 0, QUEST_TXT_DURATION, QUEST_UPDATE + stageStrings[stage])
            call QuestItemSetDescription(stageItems[stage], stageStrings[stage])
            call EnableTrigger(goals[stage].goalTrig)
            if goals[stage].goalType == STORY_GOAL or goals[stage].goalType == STORY_AND_PARTY_GOAL then
                call goals[stage].enableStoryGoal()
            endif
			if goals[stage].goalCause != 0 then
				call goals[stage].goalCause.do(pid)
			endif
        endif
    endmethod*/
endstruct

endlibrary