library AdvanceQuest requires EventStruct

globals
endglobals

//starts a quest
struct EventAdvanceQuest extends Event
	string questTitle
	
    static method create takes string questTitle returns thistype
        local thistype this = thistype.allocate()
		set this.questTitle = questTitle
        return this
    endmethod

	method do takes integer pid returns nothing
		local Quest q = playerDatum[pid].quests[playerDatum[pid].findQuestByTitle(questTitle)]
		call q.advance()
		call doNext(pid)
	endmethod
endstruct
endlibrary