library ButtonStruct requires Table

globals
endglobals

struct Button
	button b
	string msg
	integer handleId //the handleId of the button
	integer hotkey 
	trigger linkTrig //the trigger which links clicking this button to opening a dialog
	Dialog target //the dialog which this button links to
	
    static method create takes dialog whichDialog, string msg, integer hotkey returns thistype
        local thistype this = thistype.allocate()
		set b = DialogAddButton(whichDialog, msg, hotkey)
		set handleId = GetHandleId(b)
		set this.msg = msg
		set this.hotkey = hotkey
        return this
    endmethod
	
	method flush takes nothing returns nothing
		set b = null
		set msg = null
		call DestroyTrigger(linkTrig)
		set linkTrig = null
		call destroy()
	endmethod
		
	
endstruct
endlibrary