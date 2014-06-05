library PCStruct requires MonsterGroupStruct

globals
    constant integer MALE_ID = 'P001'
    constant integer FEMALE_ID = 'P002'
    constant integer MALE = 0 //male gender
    constant integer FEMALE = 1 //female gender
endglobals

//the player character
struct PC
    //identification variables
    unit u = null //the actual instance of the monster in the map
    integer pid = 0 //the pid of the owner
    //non-attribute levels
    integer heroLvl = 0 //the hero level
    integer gender = 0 //the gender of the player character, i.e. 0 is male, 1 is female.
    dialog info = null
    //attribute points array
    integer array attrPts[MAX_ATTRIBUTES]
    //attribute IV array - specific to each individual monster
    //used to calculate additional points to attribute points on level up
    integer array attrIV[MAX_ATTRIBUTES]
    integer array attrMin[MAX_ATTRIBUTES]
    integer array attrMax[MAX_ATTRIBUTES]
    
    //randomizes the PC's IVs upon creation
    //should only be called ONCE
    method setIVs takes nothing returns nothing
        local integer i = 0
        local integer rand = 0
        loop
            exitwhen i == MAX_ATTRIBUTES
            set rand = GetRandomInt(0, 100)
            if rand < 25 then //25% chance to get a 0 IV - does nothing :p
                set attrIV[i] = 0
            elseif rand < 60 then //35% chance to get a 1 IV - every point helps ^^
                set attrIV[i] = 1
            elseif rand < 80 then //20% chance to get a 2 IV - twice as good as the last
                set attrIV[i] = 2
            elseif rand < 90 then //10% chance to get a 3 IV - pretty good
                set attrIV[i] = 3
            elseif rand < 97 then //7% chance to get a 4 IV - super rare
                set attrIV[i] = 4
            else //3% chance to get a perfect IV of 5 - you won the lottery
                set attrIV[i] = 5
            endif
            set i = i + 1
        endloop
    endmethod

    //sets the minimums of each attribute to the passed integers
    method setAttrMin takes integer def, integer int, integer str, integer att, integer agi, integer hp, integer mana, integer sp returns nothing
        set this.attrMin[DEF] = def
        set this.attrMin[INT] = int
        set this.attrMin[STR] = str
        set this.attrMin[ATT] = att
        set this.attrMin[AGI] = agi
        set this.attrMin[HP] = hp
        set this.attrMin[MANA] = mana
        set this.attrMin[SP] = sp
    endmethod

    //sets the maximums of each attribute to the passed integers
    method setAttrMax takes integer def, integer int, integer str, integer att, integer agi, integer hp, integer mana, integer sp returns nothing
        set this.attrMax[DEF] = def
        set this.attrMax[INT] = int
        set this.attrMax[STR] = str
        set this.attrMax[ATT] = att
        set this.attrMax[AGI] = agi
        set this.attrMax[HP] = hp
        set this.attrMax[MANA] = mana
        set this.attrMax[SP] = sp
    endmethod 
    
    static method create takes unit u, integer pid, integer gender returns thistype
        local thistype this = thistype.allocate()
        local integer uType = GetUnitTypeId(u)
        set this.u = u
        set this.pid = pid
        set this.gender = gender
        call this.setIVs() //set the PC's IVs
        return this
    endmethod
        
    //the monster's name and level information
    method toString takes nothing returns string
        return "Level " + I2S(heroLvl) + " " + GetPlayerName(Player(pid))
    endmethod
    
    method toDialog takes nothing returns nothing
        local string s = this.toString() + "\n" + "Gender: "
        call DialogClear(info)
        set info = DialogCreate()
        if gender == 0 then
            set s = s + "Male" + "\n"
        else
            set s = s + "Female" + "\n"
        endif
        set s = s + "Hitpoints: " + I2S(attrPts[HP]) + "\n"
        set s = s + "Attack: " + I2S(attrPts[ATT]) + "\n"
        set s = s + "Defense: " + I2S(attrPts[DEF]) + "\n"
        set s = s + "Strength: " + I2S(attrPts[STR]) + "\n"
        set s = s + "Agility: " + I2S(attrPts[AGI]) + "\n"
        set s = s + "Mana: " + I2S(attrPts[MANA]) + "\n"
        set s = s + "Spell resistance: " + I2S(attrPts[SP]) + "\n"
        set s = s + "Intelligence: " + I2S(attrPts[INT]) + "\n"
        call DialogSetMessage(info, s)
        call DialogAddButton(info, "Ok.", 0)
        call DialogDisplay(Player(pid), info, true)
    endmethod
    
    method isDead takes nothing returns boolean
        return GetWidgetLife(u) < 0.405
    endmethod
    
    //called when the PC levels up
    method levelUp takes nothing returns nothing
        local integer cntNum = 0 //counter for each attribute
        local integer newPts = 0 //a variable for the new attribute points
        local integer gain = 0 //how much a monster has gained
        local integer currAttrVal = 0 //the current value of agi, int, or str
        local integer i = 0 //loop counter for attack speed, spell resistance, and mana
        loop //level up all 8 attributes: DEF, INT, STR, ATT, AGI, HP, MANA, and SP
            exitwhen cntNum == MAX_ATTRIBUTES
            set newPts = attrPts[cntNum] + calcStatIncrease(attrIV[cntNum], attrMin[cntNum], attrMax[cntNum])
            if (newPts / attrRatio[cntNum]) > (attrPts[cntNum] / attrRatio[cntNum]) then
                set gain = (newPts / attrRatio[cntNum]) - (attrPts[cntNum] / attrRatio[cntNum])
                if cntNum == DEF then
                    set currAttrVal = GetHeroAgi(u, false)
                    call SetHeroAgi(u, currAttrVal + gain, true)
                elseif cntNum == INT then
                    set currAttrVal = GetHeroInt(u, false)
                    call SetHeroInt(u, currAttrVal + gain, true)
                elseif cntNum == STR then
                    set currAttrVal = GetHeroStr(u, false)
                    call SetHeroStr(u, currAttrVal + gain, true)
                elseif cntNum == ATT then
                    loop
                        exitwhen i == gain
                        call UnitAddItemById(u, 'I050')
                        set i = i + 1
                    endloop
                    set i = 0
                elseif cntNum == HP then
                    loop
                        exitwhen i == gain
                        call UnitAddItemById(u, 'I051')
                        set i = i + 1
                    endloop
                    set i = 0
                elseif cntNum == MANA then
                    loop
                        exitwhen i == MAX_MANA_LVLS
                        call UnitRemoveAbility(u, manaPts[i])
                        set i = i + 1
                    endloop
                    set i = 0
                    set gain = (newPts / attrRatio[cntNum])
                    loop
                        exitwhen gain == 0
                        set i = binaryIndex(gain, false)
                        set gain = gain - binaryIndex(gain, true)
                        call UnitAddAbility(u, manaPts[i])
                    endloop
                    set i = 0
                elseif cntNum == AGI then
                    loop
                        exitwhen i == ATTRIBUTE_ABILITY_LVLS
                        call UnitRemoveAbility(u, attackSpeed[i])
                        set i = i + 1
                    endloop
                    set i = 0
                    set gain = (newPts / attrRatio[cntNum])
                    loop
                        exitwhen gain == 0
                        set i = binaryIndex(gain, false)
                        set gain = gain - binaryIndex(gain, true)
                        call UnitAddAbility(u, attackSpeed[i])
                    endloop
                    set i = 0
                elseif cntNum == SP then
                    if GetUnitAbilityLevel(u, 'A08X') == 0 then
                        call UnitAddAbility(u, 'A08X')
                    else
                    call SetUnitAbilityLevel(u, 'A08X', (newPts / attrRatio[cntNum]))
                    endif
                endif
            endif
            set attrPts[cntNum] = newPts //set the pts to the new pts
            set cntNum = cntNum + 1
        endloop
    endmethod

endstruct
endlibrary