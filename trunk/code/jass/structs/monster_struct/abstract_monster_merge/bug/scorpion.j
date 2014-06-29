	//*******************
	// SCORPION
	//*******************
	set m = AbstractMonster.create(SCORPION, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 3,  2,   3,   2,   0,   2,   2,   1)
	call m.setAttrMax( 8,  5,   7,   7,   3,   7,   5,   3)
	call m.setAbilities(IMPALE, SHADOW_STRIKE, SPIKED_CARAPACE)
	set AbstractMonsterTable[m.index] = m

