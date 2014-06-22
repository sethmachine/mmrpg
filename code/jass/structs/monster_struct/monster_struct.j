library MonsterStruct requires AbstractMonsterStruct, Attributes

globals
endglobals

struct Monster extends AbstractMonster
    //identification variables
    unit u = null //the actual instance of the monster in the map
    integer pid = 0 //the pid of the owner
    //non-attribute levels
    integer heroLvl = 0 //the hero level
    integer fusionLvl = 0 //the fusion level
    integer gender = 0 //the gender of the monster, i.e. 0 is male, 1 is female.  
	integer owner = -1 //if the monster is earmarked to be recruited for a certain player
    boolean isActive = false //the status of the monster, i.e. in party or storage
    boolean isGrown = false //whether the monster has reached its maximum level
    boolean toRelease = false //whether the player contemplates releasing this monster
    boolean toSwap = false //whether the player is swapping out this monster from the party
    boolean isInCombat = false //whether the monster is marked as fighting
    dialog info = null
    //attribute points array
    integer array attrPts[MAX_ATTRIBUTES]
    //attribute IV array - specific to each individual monster
    //used to calculate additional points to attribute points on level up
    integer array attrIV[MAX_ATTRIBUTES]
    
    //randomizes the monster's IVs upon creation
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
    
    static method create takes unit u, integer pid, integer gender returns thistype
        local integer abilityNum = 0 //counter for setting abilities array
        local integer attrNum = 0 //counter for setting attribute arrays
        local integer uType = GetUnitTypeId(u)
        local AbstractMonster m = AbstractMonsterTable[GetUnitPointValueByType(uType)]
        local thistype this = thistype.allocate(m.unitType, m.familyId, m.maxLvl, m.rcLvl)//, m.name)
		loop
            exitwhen attrNum == MAX_ATTRIBUTES
            set this.attrMin[attrNum] = m.attrMin[attrNum]
            set this.attrMax[attrNum] = m.attrMax[attrNum]
            set attrNum = attrNum + 1
        endloop
        loop
            exitwhen abilityNum == MAX_ABILITIES
            set this.abilities[abilityNum] = m.abilities[abilityNum]
            set abilityNum = abilityNum + 1
        endloop
        set this.u = u
        set this.heroLvl = GetHeroLevel(u)
        set this.pid = pid
        set this.gender = gender
        call this.setIVs() //set the monster's IVs
        set attrPts[DEF] = 10
        set attrPts[STR] = 10
        set attrPts[INT] = 10
        set attrPts[MANA] = 15
        set attrPts[HP] = 25
        return this
    endmethod
    
	method flush takes nothing returns nothing
		call RemoveUnit(this.u)
		set this.u = null
		call DialogDestroy(this.info)
		set this.info = null
		call this.destroy()
	endmethod
	
    //compares two monster structs and returns true if they have the same unit handle
    //false otherwise
    method equals takes Monster comparison returns boolean
        if this.u == comparison.u then
            return true
        endif
        return false
    endmethod
    
    //the monster's name and level information
    method toString takes nothing returns string
        return "Level " + I2S(GetHeroLevel(u)) + " " + GetHeroProperName(u)
    endmethod
    
    //displays a monster's info in a dialog
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
    
    //moves the monster's unit to the given location
    method moveToLoc takes location whichLoc returns nothing
        call SetUnitPositionLoc(u, whichLoc)
    endmethod
    
    //macro for leveling up a monsters DEF, STR, INT
    //! textmacro levelAttr takes NAME, ATTR
    method level$NAME$ takes integer lvl returns nothing
        local integer i = 0 //a loop counter
        local integer statInc = 0 //the new points gained for that level
        local integer addPts = 0 //the total additional points of the attribute
        local integer newPts = 0 //the new total points of the attribute
        local integer gain = 0 //how much Defense a monster has gained
        local integer currVal = 0 //the current Defense the monster has
        loop
            exitwhen i == lvl
            set statInc = calcStatIncrease(attrIV[$NAME$], attrMin[$NAME$], attrMax[$NAME$])
            set addPts = addPts + statInc
            set i = i + 1
        endloop
        set newPts = addPts + attrPts[$NAME$]
        if (newPts / attrRatio[$NAME$]) > (attrPts[$NAME$] / attrRatio[$NAME$]) then
            set gain = (newPts / attrRatio[$NAME$]) - (attrPts[$NAME$] / attrRatio[$NAME$])
            set currVal = GetHero$ATTR$(u, false)
            call SetHero$ATTR$(u, currVal + gain, true)
        endif
        set attrPts[$NAME$] = newPts
    endmethod
    //! endtextmacro
    
    //! runtextmacro levelAttr("DEF","Agi")
    //! runtextmacro levelAttr("STR","Str")
    //! runtextmacro levelAttr("INT","Int")
    
   method levelATT takes integer lvl returns nothing
        local integer i = 0 //a loop counter
        local integer statInc = 0 //the new points gained for that level
        local integer addPts = 0 //the total additional points of the attribute
        local integer newPts = 0 //the new total points of the attribute
        local integer gain = 0 //how much Defense a monster has gained
        loop
            exitwhen i == lvl
            set statInc = calcStatIncrease(attrIV[ATT], attrMin[ATT], attrMax[ATT])
            set addPts = addPts + statInc
            set i = i + 1
        endloop
        set newPts = addPts + attrPts[ATT]
        if (newPts / attrRatio[ATT]) > (attrPts[ATT] / attrRatio[ATT]) then
            set gain = (newPts / attrRatio[ATT]) - (attrPts[ATT] / attrRatio[ATT])
            call UnitAddItemById(u, damageTomes[gain])
        endif
        set attrPts[ATT] = newPts
    endmethod

   //! textmacro levelSP takes NAME, CONS, ARR 
   method level$NAME$ takes integer lvl returns nothing
        local integer i = 0 //a loop counter
        local integer statInc = 0 //the new points gained for that level
        local integer addPts = 0 //the total additional points of the attribute
        local integer newPts = 0 //the new total points of the attribute
        local integer gain = 0 //how much Defense a monster has gained
        loop
            exitwhen i == lvl
            set statInc = calcStatIncrease(attrIV[$NAME$], attrMin[$NAME$], attrMax[$NAME$])
            set addPts = addPts + statInc
            set i = i + 1
        endloop
        set i = 0
        set newPts = addPts + attrPts[$NAME$]
        if (newPts / attrRatio[$NAME$]) > (attrPts[$NAME$] / attrRatio[$NAME$]) then
            set gain = (newPts / attrRatio[$NAME$])
            loop
                exitwhen i == MAX_$CONS$_LVLS
                call UnitRemoveAbility(u, $ARR$Pts[i])
                set i = i + 1
            endloop
            set i = 0
            set gain = (newPts / attrRatio[$NAME$])
            loop
                exitwhen gain == 0
                set i = binaryIndex(gain, false)
                set gain = gain - binaryIndex(gain, true)
                call UnitAddAbility(u, $ARR$Pts[i])
            endloop
        endif
        set attrPts[$NAME$] = newPts
    endmethod
    //! endtextmacro
    
    //! runtextmacro levelSP("HP","HEALTH","health")
    //! runtextmacro levelSP("MANA","MANA","mana")
    //! runtextmacro levelSP("AGI","AGI","agi")
    
  method levelSP takes integer lvl returns nothing
        local integer i = 0 //a loop counter
        local integer statInc = 0 //the new points gained for that level
        local integer addPts = 0 //the total additional points of the SPribute
        local integer newPts = 0 //the new total points of the SPribute
        local integer gain = 0 //how much Defense a monster has gained
        loop
            exitwhen i == lvl
            set statInc = calcStatIncrease(attrIV[SP], attrMin[SP], attrMax[SP])
            set addPts = addPts + statInc
            set i = i + 1
        endloop
        set newPts = addPts + attrPts[SP]
        if (newPts / attrRatio[SP]) > (attrPts[SP] / attrRatio[SP]) then
            if GetUnitAbilityLevel(u, SPELL_RESIST) == 0 then
                call UnitAddAbility(u, SPELL_RESIST)
            else
                call SetUnitAbilityLevel(u, SPELL_RESIST, (newPts / attrRatio[SP]))
            endif
        endif
        set attrPts[SP] = newPts
    endmethod
    
    method levelAbil takes integer lvl returns nothing
        local integer i = 0 //loop counter
        loop
            exitwhen i == MAX_ABILITIES
            if abilities[i] != 0 then //make sure its actually an ability
                if abilities[i].levelUp(GetUnitAbilityLevel(u, abilities[i].ids[i]), lvl, GetHeroInt(u, false)) then
                    if GetUnitAbilityLevel(u, abilities[i].ids[i]) == 0 then
                        call UnitAddAbility(u, abilities[i].ids[i])
                    else
                        call SetUnitAbilityLevel(u, abilities[i].ids[i], GetUnitAbilityLevel(u, abilities[i].ids[i]) + 1)
                    endif
                endif
            endif
            set i = i + 1
        endloop
    endmethod
        
    
    method newLevelUp takes integer lvl returns nothing
        local integer i = 0
        call levelDEF(lvl)
        call levelSTR(lvl)
        call levelINT(lvl)
        call levelATT(lvl)
        call levelHP(lvl)
        call levelMANA(lvl)
        call levelAGI(lvl)
        call levelSP(lvl)
        loop
            exitwhen i == lvl
            call levelAbil(GetHeroLevel(u))
            set i = i + 1
        endloop
    endmethod

    //called when the monster levels up
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
                        call UnitAddItemById(u, DAMAGE_TOME)
                        set i = i + 1
                    endloop
                    set i = 0
                elseif cntNum == HP then
                    loop
                        exitwhen i == MAX_HEALTH_LVLS
                        call UnitRemoveAbility(u, healthPts[i])
                        set i = i + 1
                    endloop
                    set i = 0
                    set gain = (newPts / attrRatio[cntNum])
                    loop
                        exitwhen gain == 0
                        set i = binaryIndex(gain, false)
                        set gain = gain - binaryIndex(gain, true)
                        call UnitAddAbility(u, healthPts[i])
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
                    if GetUnitAbilityLevel(u, SPELL_RESIST) == 0 then
                        call UnitAddAbility(u, SPELL_RESIST)
                    else
                    call SetUnitAbilityLevel(u, SPELL_RESIST, (newPts / attrRatio[cntNum]))
                    endif
                endif
            endif
            set attrPts[cntNum] = newPts //set the pts to the new pts
            set cntNum = cntNum + 1
        endloop
        set heroLvl = heroLvl + 1
        set cntNum = 0 //reset the counter for abilities now
        loop
            exitwhen cntNum == MAX_ABILITIES
            if abilities[cntNum] != 0 then //make sure its actually an ability
                //call print("found a non-null ability")
                //call print("abil level: " + I2S(GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]))) //0
                //call print("hero level: " + I2S(heroLvl)) //31
                //call print("intelligence: " + I2S(GetHeroInt(u, false))) //19
                if abilities[cntNum].levelUp(GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]), heroLvl, GetHeroInt(u, false)) then
                    //call print("attempting to do something to an ability")
                    if GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]) == 0 then
                        //call print("attempting to add an ability")
                        call UnitAddAbility(u, abilities[cntNum].ids[cntNum])
                    else
                        //call print("attempting to increase ability level")
                        call SetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum], GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]) + 1)
                    endif
                endif
            endif
            set cntNum = cntNum + 1
        endloop
    endmethod

   //called when the monster levels up
    method levelUpN2 takes integer lvl returns nothing
        local integer cntNum = 0 //counter for each attribute
        local integer newPts = 0 //a variable for the new attribute points
        local integer gain = 0 //how much a monster has gained
        local integer currAttrVal = 0 //the current value of agi, int, or str
        local integer i = 0 //loop counter for attack speed, spell resistance, and mana
        local integer j = 0
        loop //level up all 8 attributes: DEF, INT, STR, ATT, AGI, HP, MANA, and SP
            exitwhen cntNum == MAX_ATTRIBUTES
            loop
                exitwhen j == lvl
                set newPts = newPts + attrPts[cntNum] + calcStatIncrease(attrIV[cntNum], attrMin[cntNum], attrMax[cntNum])
                set j = j + 1
            endloop
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
                    if gain > 0 then
                        call UnitAddItemById(u, damageTomes[gain])
                    endif
                    set i = 0
                elseif cntNum == HP then
                    loop
                        exitwhen i == MAX_HEALTH_LVLS
                        call UnitRemoveAbility(u, healthPts[i])
                        set i = i + 1
                    endloop
                    set i = 0
                    set gain = (newPts / attrRatio[cntNum])
                    loop
                        exitwhen gain == 0
                        set i = binaryIndex(gain, false)
                        set gain = gain - binaryIndex(gain, true)
                        call UnitAddAbility(u, healthPts[i])
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
                    if GetUnitAbilityLevel(u, SPELL_RESIST) == 0 then
                        call UnitAddAbility(u, SPELL_RESIST)
                    else
                    call SetUnitAbilityLevel(u, SPELL_RESIST, (newPts / attrRatio[cntNum]))
                    endif
                endif
            endif
            set attrPts[cntNum] = newPts //set the pts to the new pts
            set cntNum = cntNum + 1
        endloop
        //set heroLvl = heroLvl + 1
        set cntNum = 0 //reset the counter for abilities now
        loop
            exitwhen cntNum == MAX_ABILITIES
            if abilities[cntNum] != 0 then //make sure its actually an ability
                //call print("found a non-null ability")
                //call print("abil level: " + I2S(GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]))) //0
                //call print("hero level: " + I2S(heroLvl)) //31
                //call print("intelligence: " + I2S(GetHeroInt(u, false))) //19
                if abilities[cntNum].levelUp(GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]), heroLvl, GetHeroInt(u, false)) then
                    //call print("attempting to do something to an ability")
                    if GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]) == 0 then
                        //call print("attempting to add an ability")
                        call UnitAddAbility(u, abilities[cntNum].ids[cntNum])
                    else
                        //call print("attempting to increase ability level")
                        call SetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum], GetUnitAbilityLevel(u, abilities[cntNum].ids[cntNum]) + 1)
                    endif
                endif
            endif
            set cntNum = cntNum + 1
        endloop
    endmethod
    
    method levelUpN takes integer n returns nothing
        local integer i = 0
        loop
            exitwhen i == n
            call levelUp()
            set i = i + 1
        endloop
    endmethod

    method levelUpZ takes integer n returns nothing
        local integer i = 0
        loop
            exitwhen i == n
            call levelUp()
            //set heroLvl = heroLvl - 1
            set i = i + 1
        endloop
    endmethod
endstruct
endlibrary