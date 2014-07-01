library StoryStruct requires StoryTable

globals
endglobals

//a dialog wrapper acting as a linked list node
struct Story
    dialog d
    button next //button that leads to next story, if any
    button prev //button that goes back to previous story, if any
    Story nextStory
    Story prevStory
    string title = "no story"
    
    method flush takes nothing returns nothing
        call DialogDestroy(d)
        set next = null
        set prev = null
        set nextStory = 0
        set prevStory = 0
        call destroy()
    endmethod
    
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set d = DialogCreate()
        return this
    endmethod

    static method linkMain takes nothing returns boolean
        local player p = GetTriggerPlayer()
        local integer pid = GetPlayerId(p)
        local Story s = getStoryByDialog(GetClickedDialog())
        if GetClickedButton() == s.next then
            call DialogSetMessage(s.nextStory.d, s.nextStory.title)
            call DialogDisplay(p, s.nextStory.d, true)
        elseif GetClickedButton() == s.prev then
            call DialogSetMessage(s.prevStory.d, s.prevStory.title)
            call DialogDisplay(p, s.prevStory.d, true)
        endif
        return false
    endmethod

    method addNextBttn takes string nextMsg returns nothing
        set next = DialogAddButton(d, nextMsg, 0)
    endmethod
    
    method addPrevBttn takes string prevMsg returns nothing
        set prev = DialogAddButton(d, prevMsg, 0)
    endmethod
    
    method setStoryMsg takes string storyMsg returns nothing
        set title = storyMsg
        call DialogSetMessage(d, storyMsg)
    endmethod
    
    //call this only after we have a story to point to
    method setLink takes nothing returns nothing
        local trigger t = CreateTrigger()
        call TriggerRegisterDialogEvent(t, d)
        call TriggerAddCondition(t, Condition(function Story.linkMain))
        set t = null
    endmethod
    
    method getFinalStory takes nothing returns Story
        local Story s
        if this.nextStory.d == null then
            return this
        else
            set s = this.nextStory
            loop
                exitwhen s.nextStory.d == null
                if s.nextStory.d != null then
                    set s = s.nextStory
                endif
            endloop
        endif
        return s
    endmethod
    
    
        
        
    
            
endstruct

endlibrary
