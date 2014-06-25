	//*******************
	// VULTURE
	//*******************
	set m = AbstractMonster.create(VULTURE, BIRD, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(CRIPPLE, CYCLONE, EVASION)
	set AbstractMonsterTable[m.index] = m

