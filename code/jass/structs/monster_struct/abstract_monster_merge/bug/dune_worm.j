	//*******************
	// DUNE_WORM
	//*******************
	set m = AbstractMonster.create(DUNE_WORM, BUG, 30, 5)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  2,   1,   4,   6,   1,   3,   0)
	call m.setAttrMax( 1,  5,   3,   10,   9,   6,   8,   1)
	call m.setAbilities(LIFE_DRAIN, UNHOLY_FRENZY, CRITICAL_STRIKE)
	set AbstractMonsterTable[m.index] = m

