scope F9Log initializer init

globals
endglobals

private function init takes nothing returns nothing
	local quest q
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



























































































































































































    //***************************
	// Credits
	//***************************
    set q = CreateQuest()
    call QuestSetTitle(q, "|cff00ff00Credits|r")
    call QuestSetDescription(q, "Credits to everyone listed below for the models and icons they generously provided on the Hiveworkshop!  Many thanks to all of these talented artists!  \n\nIf you see a resource in the map that I did not give credit to,please alert me via e-mail so I may update the bibliography and give the author due credit.\n\nemail: sethmachine01@gmail.com ")
    call QuestSetIconPath(q, "ReplaceableTextures\\CommandButtons\\BTNChestOfGold.blp")
    call QuestSetRequired(q, false)
    call QuestSetDiscovered(q, true)
    call QuestSetCompleted(q, false)
																																																																																																																																																																																											call QuestItemSetDescription(QuestCreateItem(q), "War_Golum (BlightwalkerAura)")
	call QuestItemSetDescription(QuestCreateItem(q), "Palaslayer (BTNCombat)")
	call QuestItemSetDescription(QuestCreateItem(q), "Sellenisko (BTNDarkElfAura)")
	call QuestItemSetDescription(QuestCreateItem(q), "Marcos DAB (BTNDuneCrawler)")
	call QuestItemSetDescription(QuestCreateItem(q), "JollyD (BTNHorrorSoul)")
	call QuestItemSetDescription(QuestCreateItem(q), "bigapple90 (BTNIceField)")
	call QuestItemSetDescription(QuestCreateItem(q), "Marenko (BTNMagicShield1Small)")
	call QuestItemSetDescription(QuestCreateItem(q), "The_Silent (BTNMetalPlatingLevel1)")
	call QuestItemSetDescription(QuestCreateItem(q), "HappyCockroach (BTNPath)")
	call QuestItemSetDescription(QuestCreateItem(q), "bananaHUNT (BTNPhoenix)")
	call QuestItemSetDescription(QuestCreateItem(q), "dansaDisco (BTNReflect)")
	call QuestItemSetDescription(QuestCreateItem(q), "Sellenisko (DarkElfAura)")
	call QuestItemSetDescription(QuestCreateItem(q), "xyzier_24 (VoidSkullAura_v2)")
	call QuestItemSetDescription(QuestCreateItem(q), "Daelin (Glaciar Aura)")
	call QuestItemSetDescription(QuestCreateItem(q), "Pyritie (Mist Aura)")
	call QuestItemSetDescription(QuestCreateItem(q), "s4nji (Night Elf Aura)")
	call QuestItemSetDescription(QuestCreateItem(q), "the model. (VoodooAura)")
	call QuestItemSetDescription(QuestCreateItem(q), "Matarael (Elven Boots)")
	call QuestItemSetDescription(QuestCreateItem(q), "Matarael (Red Boots)")
	call QuestItemSetDescription(QuestCreateItem(q), "Darkfang (BTNWaterOrb)")
	call QuestItemSetDescription(QuestCreateItem(q), "Apathetic (BTNPotions)")
	call QuestItemSetDescription(QuestCreateItem(q), "D.O.G. (Meat)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Big Mana Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Big Greeny Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Big Purple Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Large Blue Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Large Green Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Large Purple Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Small Blue Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Small Green Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Small Purple Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Tiny Blue Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Tiny Green Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "Frankster (Tiny Purple Potion)")
	call QuestItemSetDescription(QuestCreateItem(q), "FrIkY (Silver Coin)")
	call QuestItemSetDescription(QuestCreateItem(q), "Matarael (Staff)")
	call QuestItemSetDescription(QuestCreateItem(q), "D.O.G. (Meat)")
	call QuestItemSetDescription(QuestCreateItem(q), "UgoUgo (OrbOfSeas)")
	call QuestItemSetDescription(QuestCreateItem(q), "JesusHipster (Water Orb Attach)")
	call QuestItemSetDescription(QuestCreateItem(q), "Tirlititi (ClearItems)")
	call QuestItemSetDescription(QuestCreateItem(q), "Bribe (Table)")
	call QuestItemSetDescription(QuestCreateItem(q), "Nestharus (WorldBounds)")
	call QuestItemSetDescription(QuestCreateItem(q), "CreatorD3292 (ArchnathidMachine)")
	call QuestItemSetDescription(QuestCreateItem(q), "HappyCockroach (Avatar of Storms)")
	call QuestItemSetDescription(QuestCreateItem(q), "Kimberly (BTNRaptorLoyalty)")
	call QuestItemSetDescription(QuestCreateItem(q), "Callahan (Gnaraya)")
	call QuestItemSetDescription(QuestCreateItem(q), "Marcos DAB (BTNDuneCrawler)")
	call QuestItemSetDescription(QuestCreateItem(q), "Marcos DAB (BTNWaterElemental)")
	call QuestItemSetDescription(QuestCreateItem(q), "Misha (Varsaigen the Stormlord)")
	call QuestItemSetDescription(QuestCreateItem(q), "Ampharos_222 (Dune Flyer)")
	call QuestItemSetDescription(QuestCreateItem(q), "General Frank (EagleWarrior)")
	call QuestItemSetDescription(QuestCreateItem(q), "NightWolf (Mammoth)")
	call QuestItemSetDescription(QuestCreateItem(q), "NightWolf (Tauren)")
	call QuestItemSetDescription(QuestCreateItem(q), "Sephiroth_VII (GiantSandWorm)")
	call QuestItemSetDescription(QuestCreateItem(q), "Callahan (BTNSharkPirate)")
	call QuestItemSetDescription(QuestCreateItem(q), "Callahan (Pirate Shark)")
	call QuestItemSetDescription(QuestCreateItem(q), "Ampharos_222 (Gryphon Hero)")
	call QuestItemSetDescription(QuestCreateItem(q), "Kenntaur (Blood Beetle)")
	call QuestItemSetDescription(QuestCreateItem(q), "Alpain (Holy Rune Golem)")
	call QuestItemSetDescription(QuestCreateItem(q), "Wraithling (Kraken)")
	call QuestItemSetDescription(QuestCreateItem(q), "Ket (LeprekonHerbalist)")
	call QuestItemSetDescription(QuestCreateItem(q), "Ampharos_222 (Lizardman)")
	call QuestItemSetDescription(QuestCreateItem(q), "Pyramidhe (BTNGoldenBirdRelic)")
	call QuestItemSetDescription(QuestCreateItem(q), "AndrewOverload519 (Mechanostrider)")
	call QuestItemSetDescription(QuestCreateItem(q), "WhiteDeath (Black Corsair)")
	call QuestItemSetDescription(QuestCreateItem(q), "Titania (CuteRainbowMissile)")
	call QuestItemSetDescription(QuestCreateItem(q), "Cavman (Raptors Red and Yellow)")
	call QuestItemSetDescription(QuestCreateItem(q), "Alpain (Rune Golem)")
	call QuestItemSetDescription(QuestCreateItem(q), "Kehel (Serpent)")
	call QuestItemSetDescription(QuestCreateItem(q), "Lord_T (Slime)")
	call QuestItemSetDescription(QuestCreateItem(q), "Ampharos_222 (The Captain Revenant)")
	call QuestItemSetDescription(QuestCreateItem(q), "Dan van Ohllus (BTNTriclyde)")
	call QuestItemSetDescription(QuestCreateItem(q), "Dan van Ohllus (Triclyde)")



	set q = null
endfunction
endscope
