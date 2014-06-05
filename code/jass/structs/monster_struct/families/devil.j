library Devil initializer init requires AbstractMonsterTable

globals
endglobals

private function init takes nothing returns nothing
    local AbstractMonster m
	//**************************************
	//********  FELHOUND
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M045',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SUCCUBUS
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M046',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  BEELZEBUB
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M047',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  AGDEVIL
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M048',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  EVIL_STATUE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M049',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SATYR
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M050',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  LASH_BEAST
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M051',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  SKULLFACE
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M052',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  GATE_GUARDIAN
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M053',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  TITANIS
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M054',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DEMONA
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M055',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  BOSS_TROLL
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M056',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  DURRAN
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M057',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  ORC
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M058',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
	//**************************************
	//********  BEAST_RIDER
	//********                        id     family   maxLvl    rcLvl
	set m = AbstractMonster.create( 'M059',  DEVIL,    45,       10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m
endfunction
endlibrary