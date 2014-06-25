	//*******************
	// DUNE_FLYER
	//*******************
	set m = AbstractMonster.create(DUNE_FLYER, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(CARRION_SWARM, PARASITE, SLOW_POISON)
	set AbstractMonsterTable[m.index] = m

