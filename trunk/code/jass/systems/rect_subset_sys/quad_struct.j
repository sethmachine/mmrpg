library QuadStruct requires RectUtil

globals
    constant integer BOLTS_PER_RECT = 4
    constant integer MAX_QUADS = 5
    constant integer ZERO_SIDES = 0
    constant integer ONE_SIDE = 1
    constant integer TWO_SIDES = 2
    constant integer THREE_SIDES = 3
    constant integer LEFT = 0
    constant integer RIGHT = 1
    constant integer TOP = 2
    constant integer BOTTOM = 3
    constant integer HORIZONTAL = 4
    constant integer VERTICAL = 5
    constant integer FIRST = 0
    constant real DIST_FROM_EDGE = 300.0
endglobals

struct Quad
    rect r
    real maxX
    real minX
    real maxY
    real minY
    real area
    lightning array bolts[BOLTS_PER_RECT]
    Quad array subQuads[MAX_QUADS]
    
    static method create takes rect r returns thistype
        local thistype this = thistype.allocate()
        set this.r = r
        set this.minX = GetRectMinX(r)
        set this.maxX = GetRectMaxX(r)
        set this.minY = GetRectMinY(r)
        set this.maxY = GetRectMaxY(r)
        set this.area = rectArea(r)
        return this
    endmethod
    
    method highlight takes nothing returns nothing
        local integer i = GetRandomInt(0, TOTAL_LIGHTNINGS - 1)
        set bolts[0] = AddLightningEx(LIGHTNING[i], false, minX, minY, 0.0, minX, maxY, 0.0)
        set bolts[1] = AddLightningEx(LIGHTNING[i], false, maxX, minY, 0.0, maxX, maxY, 0.0)
        set bolts[2] = AddLightningEx(LIGHTNING[i], false, minX, minY, 0.0, maxX, minY, 0.0)
        set bolts[3] = AddLightningEx(LIGHTNING[i], false, minX, maxY, 0.0, maxX, maxY, 0.0)
        set T = T + 1
        //call addRect(r)
    endmethod

    method unhighlight takes nothing returns nothing
        local integer i = 0
        loop
            exitwhen i == BOLTS_PER_RECT
            if bolts[i] != null then
                call DestroyLightning(bolts[i])
                set bolts[i] = null
            endif
            set i = i + 1
        endloop
    endmethod
    
    method flush takes nothing returns nothing
        local integer i = 0
        //call print("flush start")
        loop
            exitwhen i == BOLTS_PER_RECT
            if bolts[i] != null then
                call DestroyLightning(bolts[i])
                set bolts[i] = null
            endif
            set i = i + 1
        endloop
        //call print("cleaned bolts")
        set i = 0
        loop
            exitwhen i == MAX_QUADS
                if subQuads[i].r != null then
                    call subQuads[i].flush()
                    call subQuads[i].destroy()
                endif
            set i = i + 1
        endloop
        if r == null then
            call print("our rect is null but shouldn't be!!")
        endif
        //call print("cleaned subquads")
        call RemoveRect(r)
        set r = null
        call destroy()
        set T = T - 1
    endmethod
    
    method isOverlapping takes real cminX, real cmaxX, real cminY, real cmaxY returns boolean
        if (cmaxX >= maxX or cminX <= minX) and (cminY > minY or cmaxY > minY) then
            return true
        elseif (cmaxY >= maxY or cminY <= minY) and (cminX < maxX or cmaxX < maxX) then
            return true
        else
            return false
        endif
    endmethod

    method notOverlapping takes real cminX, real cmaxX, real cminY, real cmaxY returns boolean
        if cmaxY <= minY then
            return true
        endif
        if cminY >= maxY then
            return true
        endif
        return false
    endmethod
    
    method partitionAlg takes integer iterations returns nothing
        local real subMinX
        local real subMaxX
        local real subMinY
        local real subMaxY
        local real subArea
        local real x
        local real y
        local rect r
        local real midPoint
        local integer i = 0
        local integer j = 0
        local integer side = 0
        //determine where the first rectangle goes
        local integer firstPos = GetRandomInt(ZERO_SIDES, THREE_SIDES)
        if firstPos == ZERO_SIDES then
            set r = Rect(minX + DIST_FROM_EDGE, minY + DIST_FROM_EDGE, maxX - DIST_FROM_EDGE, maxY - DIST_FROM_EDGE)
            set subQuads[i] = Quad.create(rectInsideRect((rectArea(r) * 0.25), r))
            call subQuads[i].highlight()
            call RemoveRect(r)
            set r = null
            set i = i + 1
           //now we need to add 4 rectangles to cover up the remaining area
            //two solutions
            //1) horizontal bars on top/bottom, and vertical bars left/right
            //2) vertical bars on top/bottom, and horiztonal bars top/bottom
            if GetRandomInt(0, 1) == 0 then //horizontal bars
                //top bar
                set subMinX = minX
                set subMaxX = maxX
                set subMinY = subQuads[FIRST].maxY
                set subMaxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //bottom bar
                set subMinX = minX
                set subMaxX = maxX
                set subMinY = minY
                set subMaxY = subQuads[FIRST].minY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //left bar
                set subMinX = minX
                set subMaxX = subQuads[FIRST].minX
                set subMinY = subQuads[FIRST].minY
                set subMaxY = subQuads[FIRST].maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //right bar
                set subMinX = subQuads[FIRST].maxX
                set subMaxX = maxX
                set subMinY = subQuads[FIRST].minY
                set subMaxY = subQuads[FIRST].maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
            else
                //left bar
                set subMinX = minX
                set subMaxX = subQuads[FIRST].minX
                set subMinY = minY
                set subMaxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //right bar
                set subMinX = subQuads[FIRST].maxX
                set subMaxX = maxX
                set subMinY = minY
                set subMaxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //top bar
                set subMinX = subQuads[FIRST].minX
                set subMaxX = subQuads[FIRST].maxX
                set subMinY = subQuads[FIRST].maxY
                set subMaxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //bottom bar
                set subMinX = subQuads[FIRST].minX
                set subMaxX = subQuads[FIRST].maxX
                set subMinY = minY
                set subMaxY = subQuads[FIRST].minY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
            endif
        elseif firstPos == ONE_SIDE then
            set subArea = GetRandomReal(area * 0.125, area * 0.20)
            set side = GetRandomInt(LEFT, BOTTOM)
            if side == LEFT then
                set subMinX = minX
                set subMaxX = minX + SquareRoot(subArea)
                set midPoint = minY + ((maxY - minY) / 2) 
                set subMaxY = midPoint + 0.5 * SquareRoot(subArea)
                set subMinY = midPoint - 0.5 * SquareRoot(subArea)
            elseif side == RIGHT then
                set subMaxX = maxX
                set subMinX = maxX - SquareRoot(subArea)
                set midPoint = minY + ((maxY - minY) / 2)
                set subMaxY = midPoint + 0.5 * SquareRoot(subArea)
                set subMinY = midPoint - 0.5 * SquareRoot(subArea)
            elseif side == TOP then
                set subMaxY = maxY
                set subMinY = maxY - SquareRoot(subArea)
                set midPoint = minX + ((maxX - minX) / 2)
                set subMaxX = midPoint + 0.5 * SquareRoot(subArea)
                set subMinX = midPoint - 0.5 * SquareRoot(subArea)
            else
                set subMinY = minY
                set subMaxY = minY + SquareRoot(subArea)
                set midPoint = minX + ((maxX - minX) / 2)
                set subMaxX = midPoint + 0.5 * SquareRoot(subArea)
                set subMinX = midPoint - 0.5 * SquareRoot(subArea)
            endif
            set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
            call subQuads[i].highlight()
            set i = i + 1
            if side == LEFT then
                if GetRandomInt(0, 1) == 0 then
                    //top square
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom square
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right rectangle
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //top rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //middle rectangle
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = subQuads[FIRST].maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == RIGHT then
               if GetRandomInt(0, 1) == 0 then
                    //top square
                    set subMinX = subQuads[FIRST].minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom square
                    set subMinX = subQuads[FIRST].minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //left rectangle
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //top rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //middle rectangle
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = subQuads[FIRST].maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == TOP then
              if GetRandomInt(0, 1) == 0 then
                    //left rectangle
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right rectangle
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //middle rectangle
                    set subMinX = subQuads[FIRST].minX
                    set subMaxX = subQuads[FIRST].maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //left square
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right square
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //middle rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == BOTTOM then
              if GetRandomInt(0, 1) == 0 then
                    //left rectangle
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right rectangle
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //middle rectangle
                    set subMinX = subQuads[FIRST].minX
                    set subMaxX = subQuads[FIRST].maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //left square
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = subQuads[FIRST].maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right square
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = subQuads[FIRST].maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //middle rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            endif
        elseif firstPos == TWO_SIDES then
            set subArea = GetRandomReal(area * 0.125, area * 0.20)
            set side = GetRandomInt(LEFT, VERTICAL)
            if side == LEFT then //bottom left corner
                set subMinY = minY
                set subMinX = minX
                set subMaxY = minY + SquareRoot(subArea)
                set subMaxX = minX + SquareRoot(subArea)
            elseif side == RIGHT then //top right corner
                set subMaxY = maxY
                set subMaxX = maxX
                set subMinY = maxY - SquareRoot(subArea)
                set subMinX = maxX - SquareRoot(subArea)
            elseif side == TOP then //top left corner
                set subMaxY = maxY
                set subMinX = minX
                set subMinY = maxY - SquareRoot(subArea)
                set subMaxX = minX + SquareRoot(subArea)
            elseif side == BOTTOM then //bottom right corner
                set subMaxX = maxX
                set subMinY = minY
                set subMinX = maxX - SquareRoot(subArea)
                set subMaxY = minY + SquareRoot(subArea)
            elseif side == HORIZONTAL then
                set subMinX = minX
                set subMaxX = maxX
                set midPoint = minY + ((maxY - minY) / 2)
                set subMaxY = midPoint + 0.5 * (subArea / (maxX - minX))
                set subMinY = midPoint - 0.5 * (subArea / (maxX - minX))
            else //side == VERTICAL
                set subMinY = minY
                set subMaxY = maxY
                set midPoint = minX + ((maxX - minX) / 2)
                set subMaxX = midPoint + 0.5 * (subArea / (maxY - minY))
                set subMinX = midPoint - 0.5 * (subArea / (maxY - minY))
            endif
            set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
            call subQuads[i].highlight()
            set i = i + 1
            
            if side == LEFT then
                if GetRandomInt(0, 1) == 0 then
                    //top rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom rectangle
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //left bar
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right bar
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == RIGHT then
                if GetRandomInt(0, 1) == 0 then
                    //top rectangle
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //left bar
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right bar
                    set subMinX = subQuads[FIRST].minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == TOP then
                if GetRandomInt(0, 1) == 0 then
                    //top rectangle
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //left bar
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right bar
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == BOTTOM then
               if GetRandomInt(0, 1) == 0 then
                    //top rectangle
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //bottom rectangle
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                else
                    //left bar
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                    //right bar
                    set subMinX = subQuads[FIRST].minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                    set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                    call subQuads[i].highlight()
                    set i = i + 1
                endif
            elseif side == HORIZONTAL then
                //top rectangle
                set subMinX = minX
                set subMaxX = maxX
                set subMinY = subQuads[FIRST].maxY
                set subMaxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //bottom rectangle
                set subMinX = minX
                set subMaxX = maxX
                set subMinY = minY
                set subMaxY = subQuads[FIRST].minY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
            elseif side == VERTICAL then
                //left bar
                set subMinX = minX
                set subMaxX = subQuads[FIRST].minX
                set subMinY = minY
                set maxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
                //right bar
                set subMinX = subQuads[FIRST].maxX
                set subMaxX = maxX
                set subMinY = minY
                set maxY = maxY
                set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
                call subQuads[i].highlight()
                set i = i + 1
            endif
        elseif firstPos == THREE_SIDES then
            set subArea = GetRandomReal(area * 0.125, area * 0.20)
            set side = GetRandomInt(HORIZONTAL, VERTICAL)
            if side == HORIZONTAL then
                set subMinX = minX
                set subMaxX = maxX
                if GetRandomInt(0, 1) == 0 then
                    set subMinY = minY
                    set subMaxY = (((subArea + (subMaxX * subMinY)) - (subMinX * subMinY)) / (subMaxX - subMinX))
                else
                    set subMaxY = maxY
                    set subMinY = (((subArea - (subMaxX * subMaxY)) + (subMaxY * subMinX)) / (subMinX - subMaxX))
                endif
            elseif side == VERTICAL then
                set subMinY = minY
                set subMaxY = maxY
                if GetRandomInt(0, 1) == 0 then
                    set subMinX = minX
                    set subMaxX = (((subArea + (subMaxY * subMinX)) - (subMinX * subMinY)) / (subMaxY - subMinY))
                else
                    set subMaxX = maxX
                    set subMinX = maxX - (subArea / (maxY - minY))
                endif
            endif
            set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
            call subQuads[i].highlight()
            set i = i + 1
            if side == HORIZONTAL then
                if subQuads[FIRST].maxY == maxY then
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = subQuads[FIRST].minY
                else
                    set subMinX = minX
                    set subMaxX = maxX
                    set subMinY = subQuads[FIRST].maxY
                    set subMaxY = maxY
                endif
            else
                if subQuads[FIRST].minX == minX then
                    set subMinX = subQuads[FIRST].maxX
                    set subMaxX = maxX
                    set subMinY = minY
                    set subMaxY = maxY
                else
                    set subMinX = minX
                    set subMaxX = subQuads[FIRST].minX
                    set subMinY = minY
                    set subMaxY = maxY
                endif
            endif
            set subQuads[i] = Quad.create(Rect(subMinX, subMinY, subMaxX, subMaxY))
            call subQuads[i].highlight()
            set i = i + 1
        endif
        if iterations > 0 then
            loop
                exitwhen j == i
                call subQuads[j].partitionAlg(iterations - 1)
                set j = j + 1
            endloop
        endif
    endmethod
            
            
            
endstruct
endlibrary