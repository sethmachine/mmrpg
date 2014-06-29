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




























































































































































































































