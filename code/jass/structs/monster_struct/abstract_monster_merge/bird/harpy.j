	//*******************
	// HARPY
	//*******************
	set m = AbstractMonster.create(HARPY, BIRD, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  6,   0,   1,   7,   3,   6,   3)
	call m.setAttrMax( 1,  7,   1,   3,   10,   6,   10,   5)
	call m.setAbilities(FAN_OF_KNIVES, SEARING_ARROWS, CRITICAL_STRIKE)
	set AbstractMonsterTable[m.index] = m

