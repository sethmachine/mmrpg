library EnableQuestFanfare requires EventStruct

globals
endglobals

//starts a quest
struct EventQuestFanfare extends Event
	string questTitle
	
    static method create takes string questTitle returns thistype
        local thistype this = thistype.allocate()
		set this.questTitle = questTitle
        return this
    endmethod

	method do takes integer pid returns nothing
		local integer questIndex = playerDatum[pid].findQuestByTitle(questTitle)
		call playerDatum[pid].quests[questIndex].questFanfare()
		call doNext(pid)
	endmethod
endstruct
endlibrary