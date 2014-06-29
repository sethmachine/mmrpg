	//*******************
	// DUNE_FLYER
	//*******************
	set m = AbstractMonster.create(DUNE_FLYER, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  3,   0,   1,   3,   5,   7,   3)
	call m.setAttrMax( 3,  7,   2,   5,   6,   8,   13,   6)
	call m.setAbilities(CARRION_SWARM, PARASITE, SLOW_POISON)
	set AbstractMonsterTable[m.index] = m

