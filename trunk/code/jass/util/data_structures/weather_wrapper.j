library WeatherWrapper

globals
endglobals

struct Weather
	weathereffect weather
    static method create takes weathereffect w returns thistype
        local thistype this = thistype.allocate()
		set weather = w
        return this
    endmethod
	
	method flush takes nothing returns nothing
		call RemoveWeatherEffect(weather)
		set weather = null
		call destroy()
	endmethod
endstruct
endlibrary