library MonsterFamilyNameTable initializer initTable

globals
    constant integer BEAST = 0
    constant integer BIRD = 1
    constant integer BUG = 2
    constant integer DEVIL = 3
    constant integer DRAGON = 4
    constant integer MATERIAL = 5
    constant integer PLANT = 6
    constant integer WATER = 7
    constant integer ZOMBIE = 8
    constant integer BOSS = 9
	constant integer SLIME_FAM = 10
    string array familyId2Str
endglobals

private function initTable takes nothing returns nothing
    set familyId2Str[BEAST] = "|cfffca702Beast|r"
    set familyId2Str[BIRD] = "|cff05f9f0Bird|r"
    set familyId2Str[BUG] = "|cff00ffffBug|r" 
    set familyId2Str[DEVIL] = "|cffc90e02Devil|r"
    set familyId2Str[DRAGON] = "|cffce9f30Dragon|r"
    set familyId2Str[MATERIAL] = "|cffc0c0c0Material|r"
    set familyId2Str[PLANT] = "|cff39c647Plant|r"
    set familyId2Str[WATER] = "|cff227bdcWater|r"
    set familyId2Str[ZOMBIE] = "|cff9851aeZombie|r"
    set familyId2Str[BOSS] = "|cffbc424e???|r"
    set familyId2Str[SLIME] = "|cff80ffffSlime|r"
endfunction

endlibrary