    //***************************
	// Alpha Version Quest Log
	//***************************
	set q = CreateQuest()
    call QuestSetTitle(q, "|cff00ff00Alpha Test|r")
    call QuestSetDescription(q, "Welcome to the very first Monster Master RPG II alpha test!  \nThe alpha version is a prototype of the basic mechanics and features of the map.  Thus you may notice things such as incomplete areas, objects which do not work, or even possibly game breaking glitches.  The terrain is also quite lacking, something that will be sure to improve over time.  \nAs an alpha tester, try to be as critical as possible, but also keep note of the features that you like.  The feedback you give will be invaluable, as it will ultimately influence the development of the MMRPG II project.\nPlease read the other Optional Quests if you are lost!  For feedback, etc. visit the project thread by googling:\nMonster Master RPG 2")
    call QuestSetIconPath(q, "ReplaceableTextures\\CommandButtons\\BTNManual3.blp")
    call QuestSetRequired(q, false)
    call QuestSetDiscovered(q, true)
    call QuestSetCompleted(q, false)
    call QuestItemSetDescription(QuestCreateItem(q), "developer: |cfffb0000sethmachine|r")
	call QuestItemSetDescription(QuestCreateItem(q), "email: |cfffb0000sethmachine01@gmail.com|r")
	call QuestItemSetDescription(QuestCreateItem(q), "google search: |cfffb0000Monster Master RPG 2|r")













































































