 //*********************************************
 //***  - Alfonzo Story1 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Hehe hehe hehe. So you     \n     need to get into Castle     \n     Cazbar? We are in the boat     \n     kiddo. His royal highness     \n     has not been seeing anyone     \n     lately. Brooding about     \n     some war. But I think you     \n     will do just nicely,     \n     kiddo. Hows about you join     \n     my little circus? Hehe     \n     hehe.      \n")
 call currentStory.addNextBttn("Join your circus?")
 call currentStory.addPrevBttn("I'm not a clown, fool!")
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
 call currentStory.setStoryMsg("      Well I am sharp out of     \n     performers. Ran into a     \n     little trouble on the     \n     road. But I did teach that     \n     bandit leader a good     \n     lesson hehe.  So, I think     \n     if you perform an act with     \n     me, we can get inside the     \n     castle. Hehe hehe. Just     \n     one little act. The gold,     \n     hehe hehe, though I will     \n     keep. I get my money and     \n     you get inside. Fair is     \n     fair. Hehe hehe.      \n")
 call currentStory.addNextBttn("Well if it's the only way...")
 call currentStory.addPrevBttn("Wait, what did you say before")
 set currentStory.prevStory = previousStory
 set currentStory.nextStory = Story.create()
 call currentStory.setLink()
 set previousStory = currentStory
 set storyTable[i] = currentStory
 set i = i + 1
 //*********************************************
 //***  - Alfonzo Story1 Part 3 **
 set currentStory = currentStory.nextStory
 call currentStory.setStoryMsg("      Good, good hehe. For the     \n     act, you will need three     \n     Monsters. Come back when     \n     you got three pals with     \n     you.  Remember, Monsters     \n     love meat! Feed them     \n     treats and they will     \n     follow you, hehe hehe.       \n")
 call currentStory.addNextBttn("Alright, clown, you got yourself a deal.")
 call currentStory.addPrevBttn("Wait, what did you say before?")
 set currentStory.prevStory = previousStory
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set i = i + 1











































