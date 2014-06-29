library RandomLoc initializer init

globals
	private integer count = 0 //if > 0, then there are destructables in range
endglobals

function getRandomPointOnCircle takes location origin, real diameter returns location
    local real a = GetRandomReal(0, 2* bj_PI) // random angle
    local real x = diameter * Cos(a) // x offset
    local real y = diameter * Sin(a) // y offset
    return Location(x + GetLocationX(origin), y + GetLocationY(origin))
endfunction

private function enum takes nothing returns nothing
	set count = count + 1
endfunction


private function isLocReachable takes location whichLoc, real range returns boolean
	set count = 0
	call EnumDestructablesInCircleBJ(range, whichLoc, function enum)
	if count > 0 then
		return false
	endif
	return true
endfunction
	
	

function getRandomReachableLoc takes location origin, real diameter, real range returns location
	local location randomLoc = getRandomPointOnCircle(origin, diameter)
	loop
		exitwhen isLocReachable(randomLoc, range)
		call RemoveLocation(randomLoc)
		set randomLoc = null
		set randomLoc = getRandomPointOnCircle(origin, diameter)
	endloop
	return randomLoc
endfunction

function getRandomReachableLocInRect takes rect whichRect, real range returns location
	local location randomLoc = GetRandomLocInRect(whichRect)
	local integer i = 0
	loop
		exitwhen isLocReachable(randomLoc, range)
		call RemoveLocation(randomLoc)
		set randomLoc = null
		set randomLoc = GetRandomLocInRect(whichRect)
		set i = i + 1
	endloop
	call print("found a random loc in: " + I2S(i) + " tries.")
	return randomLoc
endfunction


private function main takes nothing returns boolean
	local location l
	set l = getRandomReachableLocInRect(Rect(-15520, -3904, -1216, 8384), 1000)
	call CreateUnitAtLoc(Player(0), 'hfoo', l, 0)
	call RemoveLocation(l)
	set l = null
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t
	set t = CreateTrigger()
	call TriggerRegisterPlayerChatEvent(t, Player(0), "-loc", true)
	call TriggerAddCondition(t, Condition(function main))
endfunction

endlibrary