library EventRemoveWeather requires EventStruct

globals
endglobals

//changes the water tint for a players
//uses a local player block to do this
struct EventRemoveWeather extends Event
	rect r
	
    static method create takes rect whichRect returns thistype
        local thistype this = thistype.allocate()
		set this.r = whichRect
        return this
    endmethod
			
	method do takes integer pid returns nothing
		local Weather weather = eventHandleTable[GetHandleId(r)]
		call print("attempting to remove weather to a rect: " + I2S(this))
		//if e != 0 then//and e.weather != null then
			call EnableWeatherEffect(weather.weather, false)
			call weather.flush()
			call print("event removed weather to a rect: " + I2S(this))
			//call RemoveWeatherEffect(e.weather)
		//endif
		//set e.weather = null
		call doNext(pid)
	endmethod
	
endstruct
endlibrary