 //*********************************************
 //***  - Alfonzo Story2 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Hehe hehe hehe. Good,     \n     good. Shall we go in? Once     \n     we go in the castle, we     \n     will not be able to leave     \n     until the whole act is     \n     over. You understand hehe?     \n     The whole act hehe hehe.       \n")
 call currentStory.addNextBttn("Alright let's do this.")
 call currentStory.addPrevBttn("Hold on, I need a bit more time.")
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1

























