library StartQuest requires EventStruct

globals
endglobals

//starts a quest
struct EventStartQuest extends Event
	string questTitle
	
    static method create takes string questTitle returns thistype
        local thistype this = thistype.allocate()
		set this.questTitle = questTitle
        return this
    endmethod

	method do takes integer pid returns nothing
		call playerDatum[pid].startQuest(questTitle, true)
		call doNext(pid)
	endmethod
endstruct
endlibrary