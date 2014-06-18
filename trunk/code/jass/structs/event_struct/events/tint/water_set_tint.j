library EventWaterTint requires EventStruct

globals
endglobals

//changes the water tint for a players
//uses a local player block to do this
struct EventWaterTint extends Event
	integer red = 255
	integer green = 255
	integer blue = 255
	integer alpha = 0
	
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
		
	
	method do takes integer pid returns nothing
		if GetLocalPlayer() == players[pid] then
			call SetWaterBaseColor(red, green, blue, alpha)
		endif
	endmethod
	
	//******************************
	// Child specific event setups *
	//******************************
	method setWaterTint takes integer red, integer green, integer blue, integer alpha returns nothing
		set this.red = red
		set this.green = green
		set this.blue = blue
		set this.alpha = alpha
	endmethod
endstruct
endlibrary