 //*********************************************
 //***  - Abu Dhabi Story1 Part 1 **
 //*********************************************
 set currentStory = Story.create()
 call currentStory.setStoryMsg("     Poisoned? Argh, why did no     \n     one inform me of this? I     \n     am beginning to understand     \n     why the people have little     \n     faith in me.  If it is     \n     poisoned, there must be     \n     something tainting it in     \n     the sewers. You are a     \n     Monster Master, yes? We     \n     must waste no time. I will     \n     head there myself!       \n")
 call currentStory.addNextBttn("I'll meet you there.")
 call currentStory.addPrevBttn("Hold on, I need a few moments.")
 call currentStory.setLink()
 set storyTable[i] = currentStory
 set bigStoryTable[j] = currentStory
 set i = i + 1
 set j = j + 1

