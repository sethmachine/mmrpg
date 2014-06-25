	//*******************
	// HARPY
	//*******************
	set m = AbstractMonster.create(HARPY, BIRD, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(FAN_OF_KNIVES, SEARING_ARROWS, CRITICAL_STRIKE)
	set AbstractMonsterTable[m.index] = m

