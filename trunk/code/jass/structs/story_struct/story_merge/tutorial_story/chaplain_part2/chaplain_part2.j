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
































