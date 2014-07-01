    //***************************
	// Commands Quest Log
	//***************************
    set q = CreateQuest()
    call QuestSetTitle(q, "|cff00ff00Interface|r")
    call QuestSetDescription(q, "To start a new character, simply type in -female or -male when the game starts.\nTo use the camera, simply type -zoom XXXX, where XXXX is the camera distance.\nThere is a single keyboard command, which is pressing the ESC key.  This will pop open a dialog with several options.\nThe final way to interact with the map objects, such as NPCs and warps, is via selecting your Monster Master hero,and then right clicking on the object you want to interact with.  The object must be owned by Player 11.")
    call QuestSetIconPath(q, "ReplaceableTextures\\CommandButtons\\BTNManual3.blp")
    call QuestSetRequired(q, false)
    call QuestSetDiscovered(q, true)
    call QuestSetCompleted(q, false)
    call QuestItemSetDescription(QuestCreateItem(q), "New player: Type in '-female' or '-male'")
    call QuestItemSetDescription(QuestCreateItem(q), "Camera: Type in '-zoom XXXX'")
    call QuestItemSetDescription(QuestCreateItem(q), "Backpack/menu: Press the 'ESC' key")
    call QuestItemSetDescription(QuestCreateItem(q), "Interaction: Select hero + right click")















































































































