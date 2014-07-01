	//*******************
	// VULTURE
	//*******************
	set m = AbstractMonster.create(VULTURE, BIRD, 30, 5)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  7,   0,   0,   6,   0,   9,   0)
	call m.setAttrMax( 1,  10,   1,   5,   10,   4,   15,   1)
	call m.setAbilities(CRIPPLE, CYCLONE, EVASION)
	set AbstractMonsterTable[m.index] = m

