library StoryTable initializer storyInit requires QuestInit, NPCInit

globals
    constant integer TOTAL_STORIES = 8000
    Story array storyTable[TOTAL_STORIES]
    Story array bigStoryTable[TOTAL_STORIES]
    private timer t
endglobals

private function fillTable takes nothing returns nothing
    local integer i = 0
    local integer j = 0
	local Story currentStory
	local Story previousStory
	 //*********************************************
 //***  - Isaiah Story1 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Oh sweet child, you are so     \n     kind to ask. My husband     \n     was a traveling merchant     \n     by trade, and when his     \n     caravan returned to Kalka,     \n     he did not come home.        \n")
 call currentStory.addNextBttn("Where is he?")
 call currentStory.addPrevBttn("Hold on...I need some time to myself.")
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1
 //*********************************************
 //*** Isaiah Story1 Part 2 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      The caravan was ambushed     \n     by bandits in the desert,     \n     as I am told. The attack     \n     was brutal and the desert     \n     so fierce the survivors     \n     did not have time to bring     \n     back the dead, so they     \n     were buried out in the     \n     wastes. But my husband was     \n     not given proper burial     \n     rites.      \n")
 call currentStory.addNextBttn("And what are those?")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Isaiah Story1 Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      It is custom for a widow     \n     to bury her dead husband     \n     with a bundle of rare     \n     desert flowers. But, as it     \n     is too dangerous for me to     \n     go out and find these     \n     flowers, I have not been     \n     able to give my husband     \n     the peace he deserves.       \n")
 call currentStory.addNextBttn("I could get the flowers for you.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Isaiah Story1 Part 4 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      You are brave, child!     \n     Please, do a grieving     \n     widow justice and bring     \n     back these desert flowers.     \n          \n")
 call currentStory.addNextBttn("I'll find those flowers and bring them back.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1



 //*********************************************
 //***  - Isaiah Story2 Part 1 *
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Oh sweet child, you are     \n     most kind. But I fear that     \n     these flowers will do no     \n     good unless they are laid     \n     aside the burial tomb of     \n     my late husband.       \n")
 call currentStory.addNextBttn("You didn't mention that.")
 call currentStory.addPrevBttn("Hold on...I need some time to myself.")
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1
 //*********************************************
 //***  - Isaiah Story Part 2 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      I would do it myself, but     \n     the desert is too     \n     dangerous for a widow such     \n     as me. I know I ask much     \n     of you, but would you do     \n     me one last favor, and     \n     place these flowers on his     \n     tombstone?       \n")
 call currentStory.addNextBttn("I suppose I can do that.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Isaiah Story Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("       Many thanks, sweet     \n     child. I am almost at     \n     peace of mind already, and     \n     I know my husband will     \n     find his rest soon enough,     \n     once you bring those     \n     flowers to his tombstone.     \n     As for its location--it     \n     could be anywhere in the     \n     desert.       \n")
 call currentStory.addNextBttn("He'll get his flowers.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1



 //*********************************************
 //*** Tutorial Quest - Chaplain Story1 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     The Kingdom of GreatBark,     \n     of course. It seems your     \n     memory is a bit damaged.     \n     You were found in a     \n     burning and raided village     \n     as one of the few     \n     survivors. Your family did     \n     not survive. You were in     \n     training to be a Monster     \n     Master.      \n")
 call currentStory.addNextBttn("A Monster Master?")
 call currentStory.addPrevBttn("Hold on...I need some time to myself.")
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story1 Part 2 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      Yes. Monster Masters     \n     tame, breed, and befriend     \n     monsters. Some use them     \n     for war or protection,     \n     while others simply enjoy     \n     their companionship. To     \n     complete your training the     \n     King must award you the     \n     title of Monster Master     \n     when you have served the     \n     kingdom enough. The task     \n     you are given is normally     \n     left to true Masters, but     \n     with the civil war...      \n")
 call currentStory.addNextBttn("A civil war?")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story1 Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      The EluDari has begun to     \n     wane. Its lights have     \n     dimmed, which has not been     \n     seen in thousands of     \n     years. People fear an     \n     invasion. There have been     \n     rumors...but nothing     \n     serious. Several vassal     \n     kingdoms have openly     \n     rebelled, claiming that     \n     our King and his subjects     \n     are responsible, for     \n     losing their faith and     \n     tradition. With the war     \n     all of our Monster Masters     \n     are gone, leaving only     \n     those such as yourself.      \n")
 call currentStory.addNextBttn("The Elu'Dari?")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story1 Part 4 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      The EluDari is a magical     \n     barrier that protects our     \n     worlds from the monsters.     \n     Legends say before it     \n     existed, monsters and     \n     their fabled Demon Lord     \n     masters invaded the     \n     humanoid worlds, nearly     \n     wiping out humanity.     \n     Whether such is true, the     \n     EluDari is a magical     \n     artifact housed in our own     \n     kingdom of GreatBark. It     \n     is true that its lights     \n     have dimmed, but what     \n     could be the cause? I know     \n     not. But the King believes     \n     it needs new magical     \n     artifacts to empower it.     \n     Which leads to your     \n     task...      \n")
 call currentStory.addNextBttn("My task?")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story1 Part 5 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      We have detected a     \n     powerful source of magical     \n     energy from Agon, a desert     \n     world with fertile oases.     \n     Before you begin your     \n     journey, you will need to     \n     collect your things. Take     \n     a ferry to the Monster     \n     Farm to receive your first     \n     companion, then head to     \n     the Item Vault to take     \n     your necessary belongings.     \n     Your family was not poor,     \n     and left you a few things     \n     that should prove useful.     \n     Come back once you have     \n     done these things.      \n")
 call currentStory.addNextBttn("I'll get to it.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1



 //*********************************************
 //*** Tutorial Quest - Chaplain Story2 Part 1 *
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Excellent. When you     \n     journey in Agon, be on     \n     your guard. It was once     \n     known as the Oasis world,     \n     but reports have surfaced     \n     that it has fallen on hard     \n     times: oases vanished and     \n     bandits and wild monsters     \n     roam freely. Monsters     \n     serve those who they deem     \n     most powerful, and may     \n     tempted to join you if you     \n     defeat them. Giving them     \n     meat makes them like you     \n     more.      \n")
 call currentStory.addNextBttn("What about the civil war?")
 call currentStory.addPrevBttn("Hold on...I need some time to myself.")
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story Part 2 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      Our enemies will not be     \n     in Agon--it is a fringe     \n     world, which is why wild     \n     monsters roam it, and     \n     never has it been vassal.     \n     That is why the King sends     \n     you there-- out of reach     \n     of the civil war, but I     \n     have no doubt our enemies     \n     may have their own agents.     \n     Still, none will think     \n     twice of a young traveler.     \n           \n")
 call currentStory.addNextBttn("And where shall I go?")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("       Seek out the city of     \n     Cazbar, the seat of the     \n     Shah of Agon, Abu Dhabi.     \n     Abu Dhabi young and bold,     \n     and hopefully he will be     \n     willing to help our cause.     \n     He may know where to find     \n     this magical artifact.      \n")
 call currentStory.addNextBttn("Anything else?")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //*** Tutorial Quest - Chaplain Story Part 4 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      Finally, before you go,     \n     remember that the wilds of     \n     Agon will be treacherous.     \n     If you or your monsters     \n     should get hurt, you can     \n     return to GreatBark and I     \n     can restore you, or find     \n     an inn in Agon to rest in.     \n     If a monster should die,     \n     only my power, or the     \n     power of a Priest can     \n     bring it back to life.     \n     With this, I send you off.     \n     Good luck and return to     \n     GreatBark whenever you may     \n     need to!        \n")
 call currentStory.addNextBttn("I'm leaving then!")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1




    call DestroyTimer(t)
    set t = null
    call questInit()
endfunction

function getStoryByDialog takes dialog d returns Story
    local integer i = 0
    loop
        exitwhen i == TOTAL_STORIES
        if storyTable[i].d == d then
            return storyTable[i]
        endif
        set i = i + 1
    endloop
    return 0 //no such story found
endfunction
        
private function storyInit takes nothing returns nothing
    set t = CreateTimer()
    call TimerStart(t, 1.0, false, function fillTable)
endfunction
endlibrary

