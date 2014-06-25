	//*******************
	// SCORPION
	//*******************
	set m = AbstractMonster.create(SCORPION, BUG, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(IMPALE, SHADOW_STRIKE, SPIKED_CARAPACE)
	set AbstractMonsterTable[m.index] = m

