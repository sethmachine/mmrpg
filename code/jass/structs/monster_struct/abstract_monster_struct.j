library AbstractMonsterStruct requires MonsterFamilyNameTable, Attributes, AbilityStruct

globals
  constant integer TOTAL_MONSTERS = 200
endglobals

struct AbstractMonster
    //identification variables
    integer unitType = 0 //the unique unit type of the monster, e.g. Dark Unicorn is 'H048'
    integer index = 0 //the unique index of the monster's position in the monsterIndex2Id table
    integer familyId = 0 //the value of the monster's family, e.g. 0 is "Beast"
    integer rcLvl = 0 //the difficulty (or impossibility) in recruiting this monster
    real growthRate = 0 //a factor of how fast the monster levels up, lower growth rates mean slower leveling 
    string familyName = "" //the name of the family of the monster
    integer maxLvl = 0 //the maximum level this species of monster can grow
    //abilities array
    Ability array abilities[MAX_ABILITIES]
    //attributes - minimum points gained each level up
    integer array attrMin[MAX_ATTRIBUTES]
    //attributes - maximum points gained each level up
    integer array attrMax[MAX_ATTRIBUTES]
    
    //constructs the identification values of a monster
    static method create takes integer unitType, integer familyId, integer maxLvl, integer rcLvl returns thistype
        local thistype this = thistype.allocate()
        set this.unitType = unitType
        set this.index = GetUnitPointValueByType(unitType)
        set this.familyId = familyId
        set this.rcLvl = rcLvl //recruit level
        set this.familyName = familyId2Str[familyId]
        return this
    endmethod
    
    //sets up the AbilityStruct array given the passed abilities
    method setAbilities takes integer aW, integer aR, integer aE returns nothing
        set abilities[ABIL_W] = abilityTable[aW]
        set abilities[ABIL_E] = abilityTable[aR]
        set abilities[ABIL_R] = abilityTable[aE]
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
endstruct

endlibrary