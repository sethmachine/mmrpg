	//*******************
	// SCARAB
	//*******************
	set m = AbstractMonster.create(SCARAB, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 5,  3,   4,   3,   0,   6,   6,   4)
	call m.setAttrMax( 9,  7,   9,   6,   1,   11,   10,   6)
	call m.setAbilities(IMPALE, WEB, HARDENED_SKIN)
	set AbstractMonsterTable[m.index] = m

