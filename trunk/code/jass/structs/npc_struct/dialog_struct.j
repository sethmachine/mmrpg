library DialogStruct initializer init requires Table, ButtonStruct, Util, Constants

globals
	Table dialogTable
endglobals

struct Dialog
	Table table
	Dialog backDialog
	dialog d
	string msg
	integer totalBttns
    integer currBttn
	trigger dialogTrig
	boolexpr trigCondition
	
    static method create takes string msg returns thistype
        local thistype this = thistype.allocate()
        set table = Table.create()
		set this.msg = msg
		set d = DialogCreate()
		call DialogSetMessage(d, msg)
        return this
    endmethod
	
	method nullBttns takes nothing returns nothing
		local integer i = 0
		local Button b
		loop
			exitwhen table[i] == 0
			set b = table[i]
			call b.destroy()
			set table[i] = 0
			set i = i + 1
		endloop
	endmethod
	
	method flush takes nothing returns nothing
		call DialogClear(d)
		call DialogDestroy(d)
		call nullBttns()
		call table.destroy()
		call DestroyTrigger(dialogTrig)
		set dialogTrig = null
		set currBttn = 0
		set totalBttns = 0
		set msg = null
		set d = null
		call this.destroy()
	endmethod
	
	method show takes integer pid, boolean flag returns nothing
		call DialogDisplay(Player(pid), d, flag)
	endmethod
	
	method setMsg takes string msg returns nothing
		set this.msg = msg
		call DialogSetMessage(d, msg)
	endmethod
	
	method getButtonInt takes integer whichBttn returns button
		local Button b = table[whichBttn]
		return b.b
	endmethod
	
    method getButton takes string whichBttn returns button
        local integer i = 0
		local Button b
        loop
            exitwhen i == totalBttns
			set b = table[i]
			if b.msg == whichBttn then
				return b.b
			endif
            set i = i + 1
        endloop
        return null
    endmethod
    
    method getBttn takes string whichBttn returns Button
        local integer i = 0
		local Button b
        loop
            exitwhen i == totalBttns
			set b = table[i]
			if b.msg == whichBttn then
				return b
			endif
            set i = i + 1
        endloop
        return 0
    endmethod
	
	method registerDialogEvent takes code c returns nothing
		set trigCondition = Condition(c)
		set dialogTrig = CreateTrigger()
		call TriggerRegisterDialogEvent(dialogTrig, d)
		call TriggerAddCondition(dialogTrig, trigCondition)
		set dialogTable[GetHandleId(d)] = this
	endmethod
	
	method append takes string bttnMsg, integer hotkey returns integer
		set table[currBttn] = Button.create(d, bttnMsg, hotkey)
		set currBttn = currBttn + 1
		set totalBttns = totalBttns + 1
		return currBttn - 1
	endmethod
			
	method insert takes string bttnMsg, integer hotkey, integer index returns nothing
		local integer i = 0
		local integer oldTotal = totalBttns
		set totalBttns = 0
        set currBttn = 0
		//call nullBttns(table)
		call DialogClear(d)
		//call DialogDestroy(d)
		//set d = DialogCreate()
		call setMsg(msg)
		loop
			exitwhen i == index
			call append(table.string[i], table[i])
			set i = i + 1
		endloop
		set i = oldTotal
		loop
			exitwhen i == index
			set table.string[i] = table.string[i - 1]
			set table[i] = table[i - 1]
			set i = i - 1
		endloop
		call append(bttnMsg, hotkey)
		set i = index + 1
		loop
			exitwhen i == oldTotal + 1
			call append(table.string[i], table[i])
			set i = i + 1
		endloop
	endmethod
    
    method remove takes string whichBttn returns nothing
        local integer i = 0
        local integer oldTotal = totalBttns
		local integer bttnHandleId
		local string newBttn
		local Button b
		local Dialog target
		set totalBttns = 0
        set currBttn = 0
		call DialogClear(d)
        call setMsg(msg)
        loop
            exitwhen i == oldTotal
			set b = table[i]
            if b.msg != whichBttn then
				set bttnHandleId = b.handleId
				call append(b.msg, b.hotkey)
				set target = dialogTable[bttnHandleId]
				if target != 0 then
					call link(b.msg, target)
				endif
				call b.flush()
			endif	
            set i = i + 1
        endloop
    endmethod
		
	static method linkMain takes nothing returns boolean
		local button b = GetClickedButton()
		local player p = GetTriggerPlayer()
		local integer pid = GetPlayerId(p)
		local integer bttnHandleId = GetHandleId(b)
		local Dialog target = dialogTable[bttnHandleId]
		local Dialog source = R2I(dialogTable.real[bttnHandleId])
		local string whichBttn = dialogTable.string[bttnHandleId]
		local Button sourceBttn = source.getBttn(whichBttn)
		if b == sourceBttn.b then
			call target.setMsg(target.msg)
			call target.show(pid, true)
			//call DisplayTimedTextToPlayer(p, 0, 0, 60, "did link main")
		endif
		set b = null
		set p = null
		return false
	endmethod

	method link takes string whichBttn, Dialog target returns nothing
		local Button b = getBttn(whichBttn)
		local integer bttnHandleId
		local trigger t
		if b != null then
			set t = CreateTrigger()
			set b.target = target
			set bttnHandleId = b.handleId
			set dialogTable[bttnHandleId] = target
			set dialogTable.real[bttnHandleId] = this
			set dialogTable.string[bttnHandleId] = whichBttn
			call TriggerRegisterDialogEvent(t, d)
			call TriggerAddCondition(t, Condition(function Dialog.linkMain))
			set b.linkTrig = t
		endif
		set t = null
	endmethod

	method linkInt takes integer whichBttn, Dialog target returns nothing
		local Button b = table[whichBttn]
		local integer bttnHandleId
		local trigger t
		if b != null then
			set t = CreateTrigger()
			set bttnHandleId = b.handleId
			set dialogTable[bttnHandleId] = target
			set dialogTable.real[bttnHandleId] = this
			set dialogTable.string[bttnHandleId] = b.msg
			call TriggerRegisterDialogEvent(t, d)
			call TriggerAddCondition(t, Condition(function Dialog.linkMain))
			set b.linkTrig = t
		endif
		set t = null
	endmethod
	
	//links all the buttons to the target dialog
	//useful for looping back to the dialog, e.g. withdrawing gold
	method linkAll takes Dialog target returns nothing
		local integer i = 0
		local Button b
		loop
			exitwhen i == totalBttns
			set b = table[i]
			if b != 0 then
				call link(b.msg, target)
			endif
			set i = i + 1
		endloop
	endmethod
endstruct

private function init takes nothing returns nothing
	set dialogTable = Table.create()
endfunction

endlibrary