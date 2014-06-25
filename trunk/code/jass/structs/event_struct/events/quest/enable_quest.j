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
		local integer questIndex = playerDatum[pid].findQuestByTitle(questTitle)
		call playerDatum[pid].quests[questIndex].questFanfare()
		call doNext(pid)
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setEnableQuest takes string whichQuest returns nothing
		set this.questTitle = whichQuest
	endmethod
endstruct
endlibrary