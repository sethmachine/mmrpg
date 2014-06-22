library StoryTable initializer storyInit requires QuestInit

globals
    constant integer TOTAL_STORIES = 8000
    Story array storyTable[TOTAL_STORIES]
    Story array bigStoryTable[TOTAL_STORIES]
    private timer t
    constant integer CHAPLAIN_TUTORIAL_STORY_1 = 0
    constant integer CHAPLAIN_TUTORIAL_STORY_2 = 1
endglobals

private function fillTable takes nothing returns nothing
    local integer i = 0
    local integer j = 0
	local Story currentStory
	local Story previousStory
	//insert
    call DestroyTimer(t)
    set t = null
    call questInit()
endfunction

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
endlibrary
