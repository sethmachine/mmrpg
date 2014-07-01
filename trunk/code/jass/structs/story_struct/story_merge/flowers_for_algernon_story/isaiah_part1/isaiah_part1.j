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
































