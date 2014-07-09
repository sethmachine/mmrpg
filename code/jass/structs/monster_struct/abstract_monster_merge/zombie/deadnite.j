	//*******************
	// DEADNITE
	//*******************
	set m = AbstractMonster.create(DEADNITE, ZOMBIE, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  3,   3,   1,   0,   9,   3,   0)
	call m.setAttrMax( 3,  7,   7,   5,   1,   15,   5,   1)
	call m.setAbilities(CRIPPLE, UNHOLY_FRENZY, TIMELY_PARRY)
	set AbstractMonsterTable[m.index] = m

