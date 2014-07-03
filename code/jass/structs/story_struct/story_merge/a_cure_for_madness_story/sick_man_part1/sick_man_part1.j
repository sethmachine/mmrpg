 //*********************************************
 //***  - Sick Man Story1 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     It was years ago. A boy I     \n     was. The thief. The all     \n     seeing eye. His     \n     hands...cough, cough....       \n")
 call currentStory.addNextBttn("Hold on, what thief?")
 call currentStory.addPrevBttn("You're a damned crazy fool, old man!")
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1
 //*********************************************
 //*** Sick Man Story1 Part 2 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      The law commanded: the     \n     hand that taketh is the     \n     hand that is taken. They     \n     are in the water!  When he     \n     was drowned in the well.       \n")
 call currentStory.addNextBttn("You're saying there's something in the water?")
 call currentStory.addPrevBttn("Wait, what did you say before")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Sick Man Story1 Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      Poison, poison in the     \n     water. Please, we did not     \n     know. What is drowned may     \n     never die.  The water, in     \n     the water...cough      \n")
 call currentStory.addNextBttn("The only water here is from the sewers...")
 call currentStory.addPrevBttn("Wait, what did you say before")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Sick Man Story1 Part 4 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      Coughs      \n")
 call currentStory.addNextBttn("Something is poisoning the water, then!")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1



































































































