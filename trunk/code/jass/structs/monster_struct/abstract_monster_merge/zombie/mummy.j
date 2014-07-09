	//*******************
	// MUMMY
	//*******************
	set m = AbstractMonster.create(MUMMY, ZOMBIE, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  3,   2,   0,   0,   14,   7,   1)
	call m.setAttrMax( 1,  6,   6,   1,   1,   17,   10,   1)
	call m.setAbilities(CURSE, SLOW, DISEASE_CLOUD)
	set AbstractMonsterTable[m.index] = m

