library Bug initializer init requires AbstractMonsterTable

globals
endglobals

private function init takes nothing returns nothing
    local AbstractMonster m
	//**************************************
	//********  ARMY_ANT
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(ARMY_ANT,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DUNE_FLYER
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(DUNE_FLYER,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 2,  6,   1,   2,   3,   4,   4,   0)
	call m.setAttrMax( 5,  11,   3,   6,   8,   9,   7,   3)
	call m.setAbilities(CARRION_SWARM, PARASITE, SLOW_POISON)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DUNE_WORM
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(DUNE_WORM,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  4,   2,   4,   4,   3,   1,   0)
	call m.setAttrMax( 4,  7,   4,   8,   10,   7,   3,   2)
	call m.setAbilities(LIFE_DRAIN, UNHOLY_FRENZY, CRITICAL_STRIKE)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DRAGONFLY
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(DRAGONFLY,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SCORPION
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(SCORPION,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 4,  5,   2,   3,   2,   4,   2,   1)
	call m.setAttrMax( 6,  6,   5,   5,   4,   8,   4,   4)
	call m.setAbilities(IMPALE, SHADOW_STRIKE, SPIKED_CARAPACE)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  WEEDBUG
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(WEEDBUG,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SNAILY
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(SNAILY,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SCARAB
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(SCARAB,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 7,  5,   4,   1,   0,   6,   4,   2)
	call m.setAttrMax( 10,  6,   7,   3,   2,   10,   5,   5)
	call m.setAbilities(IMPALE, WEB, HARDENED_SKIN)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DIGSTER
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(DIGSTER,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  WAR_SPIDER
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(WAR_SPIDER,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SKULARACH
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(SKULARACH,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  BLOOD_BEETLE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(BLOOD_BEETLE,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  ARMORPION
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(ARMORPION,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  TREMOR
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create(TREMOR,  BUG,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m

endfunction
endlibrary