library EventAddWeather requires EventStruct, WeatherWrapper

globals
endglobals

//changes the water tint for a players
//uses a local player block to do this
struct EventAddWeather extends Event
	rect r
	integer effectID
	Weather weather

    static method create takes rect whichRect, integer effectID returns thistype
        local thistype this = thistype.allocate()
		set this.r = whichRect
		set this.effectID = effectID
		set this.weather = Weather.create(AddWeatherEffect(r, effectID))
		set eventHandleTable[GetHandleId(r)] = this.weather
        return this
    endmethod
	
	method do takes integer pid returns nothing
		//call print("event Added weather to a rect: " + I2S(this))
		call EnableWeatherEffect(weather.weather, true)
		call doNext(pid)
	endmethod
	
endstruct
endlibrary