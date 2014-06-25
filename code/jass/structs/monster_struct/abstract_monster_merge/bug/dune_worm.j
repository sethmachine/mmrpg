	//*******************
	// DUNE_WORM
	//*******************
	set m = AbstractMonster.create(DUNE_WORM, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(LIFE_DRAIN, UNHOLY_FRENZY, CRITICAL_STRIKE)
	set AbstractMonsterTable[m.index] = m

