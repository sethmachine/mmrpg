library StoryTable initializer storyInit

globals
    constant integer TOTAL_STORIES = 8000
    Story array storyTable[TOTAL_STORIES]
    Story array bigStoryTable[TOTAL_STORIES]
    private timer t
    constant integer CHAPLAIN_TUTORIAL_STORY_1 = 0
    constant integer CHAPLAIN_TUTORIAL_STORY_2 = 1
endglobals

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

private function fillTable takes nothing returns nothing
    local integer i = 0
    local integer j = 0
    //*********************************************
    //*** Tutorial Quest - Chaplain Story Part 1 **
    //*********************************************
    local Story currentStory = Story.create()
    local Story previousStory
    call currentStory.setStoryMsg("     The Kingdom of GreatBark,     \n     of course.  It seems your     \n     memory is a bit damaged.      \n     You were found in a     \n     burning and raided village     \n     as one of the few     \n     survivors.  Your family     \n     did not survive.  You were     \n     in training to be a     \n     Monster Master.     \n")
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
    //*** Tutorial Quest - Chaplain Story Part 2 **
    set currentStory = currentStory.nextStory
    call currentStory.setStoryMsg("     Yes.  Monster Masters     \n     tame, breed, and befriend     \n     monsters.  Some use them     \n     for war or protection,     \n     while others simply enjoy     \n     their companionship.  To     \n     complete your training the     \n     King must award you the     \n     title of Monster Master     \n     when you have served the     \n     kingdom enough.  The task     \n     you are given is normally     \n     left to true Masters, but     \n     with the civil war...     \n")
    call currentStory.addNextBttn("A civil war?")
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
    call currentStory.setStoryMsg("     The Elu'Dari has begun to     \n     wane.  Its lights have     \n     dimmed, which has not been     \n     seen in thousands of     \n     years.  People fear an     \n     invasion.  There have been     \n     rumors...but nothing     \n     serious.  Several vassal     \n     kingdoms have openly     \n     rebelled, claiming that     \n     our King and his subjects     \n     are responsible, for     \n     losing their faith and     \n     tradition.  With the war     \n     all of our Monster Masters     \n     are gone, leaving only     \n     those such as yourself.     \n")
    call currentStory.addNextBttn("The Elu'Dari?")
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
    call currentStory.setStoryMsg("     The Elu'Dari is a magical     \n     barrier that protects our     \n     worlds from the monsters.      \n     Legends say before it     \n     existed, monsters and     \n     their fabled Demon Lord     \n     masters invaded the     \n     humanoid worlds, nearly     \n     wiping out humanity.      \n     Whether such is true, the     \n     Elu'Dari is a magical     \n     artifact housed in our own     \n     kingdom of GreatBark.  It     \n     is true that its lights     \n     have dimmed, but what     \n     could be the cause?  I     \n     know not.  But the King     \n     believes it needs new     \n     magical artifacts to     \n     empower it.  Which leads     \n     to your task...     \n")
    call currentStory.addNextBttn("My task?")
    call currentStory.addPrevBttn("Wait, what did you say before?")
    set currentStory.prevStory = previousStory
    set currentStory.nextStory = Story.create()
    call currentStory.setLink()
    set previousStory = currentStory
    set storyTable[i] = currentStory
    set i = i + 1
    //*********************************************
    //*** Tutorial Quest - Chaplain Story Part 5 **
    set currentStory = currentStory.nextStory
    call currentStory.setStoryMsg("     We have detected a     \n     powerful source of magical     \n     energy from Agon, a desert     \n     world with fertile oases.      \n     Before you begin your     \n     journey, you will need to     \n     collect your things.  Take     \n     a ferry to the Monster     \n     Farm to receive your first     \n     companion, then head to     \n     the Item Vault to take     \n     your necessary belongings.     \n      Your family was not poor,     \n     and left you a few things     \n     that should prove useful.      \n     Come back once you have     \n     done these things.       \n")
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
    call currentStory.setStoryMsg("     Excellent.  When you     \n     journey in Agon, be on     \n     your guard.  It was once     \n     known as the Oasis world,     \n     but reports have surfaced     \n     that it has fallen on hard     \n     times: oases vanished and     \n     bandits and wild monsters     \n     roam freely.  Monsters     \n     serve those who they deem     \n     most powerful, and may     \n     tempted to join you if you     \n     defeat them.  Giving them     \n     meat makes them like you     \n     more.       \n")
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
    call currentStory.setStoryMsg("     Our enemies will not be in     \n     Agon--it is a fringe     \n     world, which is why wild     \n     monsters roam it, and     \n     never has it been vassal.      \n     That is why the King sends     \n     you there--out of reach of     \n     the civil war, but I have     \n     no doubt our enemies may     \n     have their own agents.      \n     Still, none will think     \n     twice of a young traveler.     \n           \n")
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
    call currentStory.setStoryMsg("     Seek out the city of     \n     Cazbar, the seat of the     \n     Shah of Agon, Abu Dhabi.      \n     Abu Dhabi young and bold,     \n     and hopefully he will be     \n     willing to help our cause.     \n      He may know where to find     \n     this magical artifact.       \n")
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
    call currentStory.setStoryMsg("     Finally, before you go,     \n     remember that the wilds of     \n     Agon will be treacherous.      \n     If you or your monsters     \n     should get hurt, you can     \n     return to GreatBark and I     \n     can restore you, or find     \n     an inn in Agon to rest in.     \n      If a monster should die,     \n     only my power, or the     \n     power of a Priest can     \n     bring it back to life.      \n     With this, I send you off.     \n      Good luck and return to     \n     GreatBark whenever you may     \n     need to!     \n")
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
endlibrary
