	//*******************
	// SCARAB
	//*******************
	set m = AbstractMonster.create(SCARAB, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(IMPALE, WEB, HARDENED_SKIN)
	set AbstractMonsterTable[m.index] = m

