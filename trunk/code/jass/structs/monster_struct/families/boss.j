library Boss initializer init requires AbstractMonsterTable

globals
endglobals

private function init takes nothing returns nothing
    local AbstractMonster m
	//**************************************
	//********  SIDOH
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M135',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  GENOSIDOH
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M136',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  MUDOU
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M137',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  BARAMOS
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M138',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DEATHMORE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M139',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DRACOLORD
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M140',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  ZOMA
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M141',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  ORGODEMIR
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M142',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  ORGODEMIR
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M143',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  PIZARRO
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M144',  BOSS,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
endfunction
endlibrary