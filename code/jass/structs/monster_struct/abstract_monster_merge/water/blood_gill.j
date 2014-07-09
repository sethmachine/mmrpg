	//*******************
	// BLOOD_GILL
	//*******************
	set m = AbstractMonster.create(BLOOD_GILL, WATER, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  5,   0,   0,   3,   5,   5,   0)
	call m.setAttrMax( 1,  10,   1,   1,   7,   11,   9,   1)
	call m.setAbilities(SIPHON_MANA, DISPEL_MAGIC, HEAL)
	set AbstractMonsterTable[m.index] = m

