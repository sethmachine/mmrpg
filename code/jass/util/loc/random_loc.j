library RandomLoc

globals
endglobals

function getRandomPointOnCircle takes location origin, real diameter returns location
    local real a = GetRandomReal(0, 2* bj_PI) // random angle
    local real x = diameter * Cos(a) // x offset
    local real y = diameter * Sin(a) // y offset
    return Location(x + GetLocationX(origin), y + GetLocationY(origin))
endfunction

endlibrary