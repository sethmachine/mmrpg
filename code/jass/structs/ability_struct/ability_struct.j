library AbilityStruct

globals
    constant integer MAX_ABILITIES = 6 //monsters can have at most 5 abilities
    constant integer MAX_ABILITY_LVL = 6 //all abilities have 6 levels
    constant integer ABIL_W = 0
    constant integer ABIL_E = 1
    constant integer ABIL_R = 2
    constant integer ABIL_T = 3
    constant integer ABIL_Y = 4
endglobals

struct Ability
    //identification variables
    integer array ids[MAX_ABILITIES] //the unique integer ids of the abilities in question
    //requirement variables - the requisite levels increase linearly per ability level
    //e.g. if learning ability requires lvl 5, then learning lvl 2 of that ability requires lvl 10
    //to learn an ability or increase its level, the monster must satisfy both minHeroLvl and minInt
    integer minHeroLvl //the minimum level the monster needs to be to learn the ability
    integer minInt //the minimum intelligence the monster needs to learn the ability
    integer inheritanceChance //an integer which dictates how hard an ability is to inherit
                              //the lower the number, the less chance the ability will be inherited.
    
    static method create takes integer minHeroLvl, integer minInt, integer iC returns thistype
        local thistype this = thistype.allocate()
        set this.minHeroLvl = minHeroLvl
        set this.minInt = minInt
        set this.inheritanceChance = iC
        return this
    endmethod
    
    method setIds takes integer abilW, integer abilE, integer abilR, integer abilT, integer abilY returns nothing
        set ids[ABIL_W] = abilW
        set ids[ABIL_E] = abilE
        set ids[ABIL_R] = abilR
        set ids[ABIL_T] = abilT
        set ids[ABIL_Y] = abilY
    endmethod
    
    //called on each ability when a monster levels up
    //returns true if the monster should level up, false otherwise
    method levelUp takes integer abilityLvl, integer heroLvl, integer int returns boolean
        local integer nextLvl = abilityLvl + 1
        if heroLvl >= (nextLvl * minHeroLvl) and int >= (nextLvl * minInt) then
            return true
        endif
        return false
    endmethod

endstruct
endlibrary