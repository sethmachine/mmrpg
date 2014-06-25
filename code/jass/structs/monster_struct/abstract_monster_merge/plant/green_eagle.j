	//*******************
	// GREEN_EAGLE
	//*******************
	set m = AbstractMonster.create(GREEN_EAGLE, PLANT, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(0, 1, 2)
	set AbstractMonsterTable[m.index] = m

