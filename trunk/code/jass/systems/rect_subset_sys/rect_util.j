library RectUtil

globals
    rect array RECTS[8000]
    integer T = 0
endglobals

function totalRects takes nothing returns integer
    local integer i = 0
    local integer total = 0
    loop
        exitwhen i == 8000
        if RECTS[i] != null then
            set total = total + 1
        endif
        set i = i + 1
    endloop
    return total
endfunction

function addRect takes rect r returns nothing
    local integer i = 0
    loop
        exitwhen i == 8000
        if RECTS[i] == null then
            set RECTS[i] = r
        endif
        set i = i + 1
    endloop
endfunction

function rectLength takes rect r returns real
    return ((GetRectMaxX(r) - GetRectMinX(r)))
endfunction

function rectHeight takes rect r returns real
    return (GetRectMaxY(r) - GetRectMinY(r))
endfunction

function rectArea takes rect r returns real
    return (rectLength(r) * rectHeight(r))
endfunction

function rectHighlight takes rect r returns nothing
    local real minX = GetRectMinX(r)
    local real maxX = GetRectMaxX(r)
    local real minY = GetRectMinY(r)
    local real maxY = GetRectMaxY(r)
    call AddLightningEx("FORK", false, minX, minY, 0.0, minX, maxY, 0.0)
    call AddLightningEx("FORK", false, maxX, minY, 0.0, maxX, maxY, 0.0)
    call AddLightningEx("FORK", false, minX, minY, 0.0, maxX, minY, 0.0)
    call AddLightningEx("FORK", false, minX, maxY, 0.0, maxX, maxY, 0.0)
endfunction

function areaToRect takes real area, rect r returns rect
    local real minX = GetRectMinX(r)
    local real maxX = GetRectMaxX(r)
    local real minY = GetRectMinY(r)
    local real maxY = GetRectMaxY(r)
    local real length = SquareRoot(area)
    local real height = SquareRoot(area)
    // ((x>=minX) and (x<=maxX) and (y>=minY) and (y<=maxY))
    local real newMinX = GetRandomReal(minX, maxX - length)
    local real newMaxX = newMinX + length
    local real newMinY = GetRandomReal(minY, maxY - height)
    local real newMaxY = newMinY + height
    local rect rsub
    set rsub = Rect(newMinX, newMinY, newMaxX, newMaxY)
    return rsub
endfunction

function rectInsideRect takes real area, rect r returns rect
    local real minX = GetRectMinX(r)
    local real maxX = GetRectMaxX(r)
    local real minY = GetRectMinY(r)
    local real maxY = GetRectMaxY(r)
    local real length = SquareRoot(area)
    local real height = SquareRoot(area)
    local real newMinX = GetRandomReal(minX, maxX - length)
    local real newMaxX = newMinX + length
    local real newMinY = GetRandomReal(minY, maxY - height)
    local real newMaxY = newMinY + height
    return Rect(newMinX, newMinY, newMaxX, newMaxY)
endfunction
//set r = Rect(-13440, 9184, -11744, 10688)

function isLocInRect takes location loc, rect r returns boolean
    local real x = GetLocationX(loc)
    local real y = GetLocationY(loc)
    return x <= GetRectMaxX(r) and x >= GetRectMinX(r) and y <= GetRectMaxY(r) and y >= GetRectMinY(r)
endfunction

endlibrary