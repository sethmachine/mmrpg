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
































