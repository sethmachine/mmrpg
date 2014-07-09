library EventSetUnitTint requires EventStruct

globals
endglobals

//changes the water tint for a players
//uses a local player block to do this
struct EventSetUnitTint extends Event
	integer unitID
	integer red = 255
	integer green = 255
	integer blue = 255
	integer alpha = 0
	
    static method create takes integer unitID, integer red, integer green, integer blue, integer alpha returns thistype
        local thistype this = thistype.allocate()
		set this.unitID = unitID
		set this.red = red
		set this.green = green
		set this.blue = blue
		set this.alpha = alpha
        return this
    endmethod
	
	static method main takes nothing returns nothing
		local unit u = GetEnumUnit()
		local integer unitID = GetUnitTypeId(u)
		local integer pid = R2I(eventHandleTable.real[unitID])
		local EventSetUnitTint e = eventHandleTable[unitID]
		if GetLocalPlayer() == players[pid] then
			call SetUnitVertexColor(u, this.red, this.green, this.blue, this.alpha)
		endif
		set u = null
	endmethod
		
	method do takes integer pid returns nothing
		local group g = CreateGroup()
		set g = GetUnitsOfTypeIdAll(unitID)
		set eventHandleTable[unitID] = this
		set eventHandleTable.real[unitID] = pid
		call ForGroup(g, function EventSetUnitTint.main)
		call DestroyGroup(g)
		set g = null
		call doNext(pid)
	endmethod
endstruct
endlibrary