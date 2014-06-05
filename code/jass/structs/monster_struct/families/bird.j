library Bird initializer init requires AbstractMonsterTable

globals
endglobals

private function init takes nothing returns nothing
    local AbstractMonster m
	//**************************************
	//********  LANDOWL
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M017',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  HARPY
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M018',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  2,   0,   3,   6,   1,   1,   0)
	call m.setAttrMax( 1,  5,   1,   7,   10,   4,   3,   1)
	call m.setAbilities(FAN_OF_KNIVES, SEARING_ARROWS, CRITICAL_STRIKE)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  WYVERN
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M019',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  LUCENT_OWL
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M020',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  PENGUIN
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M021',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  VULTURE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M022',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  3,   0,   2,   3,   2,   3,   0)
	call m.setAttrMax( 2,  8,   2,   5,   9,   5,   10,   2)
	call m.setAbilities(CRIPPLE, CYCLONE, EVASION)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  ZAPBIRD
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M023',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SHANTAK
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M024',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  PHOENIX
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M025',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  JAMIRUS
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M026',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  AZURILE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M027',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  RAINHAWK
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M028',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DRACKY
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M029',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  MASK_HAWK
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M030',  BIRD,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
endfunction
endlibrary