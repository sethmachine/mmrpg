 //*********************************************
 //***  - Alfonzo Story1 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Quite a bold request from     \n     a circus performer such as     \n     yourself. Nonetheless I     \n     will humor you, for the     \n     sake of your amusing     \n     performance.  What would a     \n     child such as yourself     \n     know about magical     \n     artifacts? And what would     \n     you need one for, dancer?      \n          \n")
 call currentStory.addNextBttn("I'm a Monster Master from Greatbark!")
 call currentStory.addPrevBttn("I have no time for games!")
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1
 //*********************************************
 //*** Alfonzo Story1 Part 2 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      A Monster Master? So     \n     those are your     \n     monsters...I see. Well I     \n     do not blame you for     \n     joining the circus to make     \n     some coin.  And you are     \n     from Greatbark. Still, you     \n     are quite young, but so am     \n     I. If there is magic at     \n     work, I know of one place     \n     you might find what you     \n     seek. Our sacred temple to     \n     the northwest. But I see     \n     no reason to admit you. Or     \n     let you plunder our     \n     treasures.       \n")
 call currentStory.addNextBttn("The EluDar is waning!")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Alfonzo Story1 Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      The EluDari? So...it     \n     needs a new source of     \n     power? I see... Well, if     \n     Greatbark truly wishes for     \n     our friendship, you will     \n     help our people. Once you     \n     have helped Agon, I will     \n     gladly allow you to enter     \n     our sacred temple.       \n")
 call currentStory.addNextBttn("I will help the people of Agon.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1











































