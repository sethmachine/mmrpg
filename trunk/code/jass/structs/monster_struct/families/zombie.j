library Zombie initializer init requires AbstractMonsterTable

globals
endglobals

private function init takes nothing returns nothing
    local AbstractMonster m
	//**************************************
	//********  DEADNITE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M120',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  BONESLAVE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M121',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DEADBOW
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M122',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SKELEMAGE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M123',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  CRYPT_SPIDER
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M124',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DEAD_NOBLE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M125',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  HORK
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M126',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  MUMMY
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M127',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  INVERZON
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M128',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SERVANT
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M129',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SPOOKY
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M130',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  4,   2,   2,   0,   3,   3,   2)
	call m.setAttrMax( 2,  9,   5,   5,   2,   10,   9,   5)
	call m.setAbilities(CURSE, SPELL_STEAL, DARKNESS_AURA)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  FOXFIRE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M131',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  MAD_SPIRIT
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M132',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  WHITE_KING
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M133',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SKULLGON
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M134',  ZOMBIE,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
endfunction
endlibrary