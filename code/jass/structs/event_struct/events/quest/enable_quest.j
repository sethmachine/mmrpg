library EnableQuest requires EventStruct

globals
endglobals

//creates an item at a given location
struct EventEnableQuest extends Event
	string questTitle = ""
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod

	method do takes integer pid returns nothing
		call playerDatum[pid].quests[findQuestByTitle(questTitle)].fanfare()
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setEnableQuest takes string whichQuest returns nothing
		set this.questTitle = whichQuest
	endmethod
endstruct
endlibrary