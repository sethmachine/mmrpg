	//*******************
	// SLIME
	//*******************
	set m = AbstractMonster.create(SLIME, SLIME_FAM, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(FIREBOLT, PURGE, REFLECT_BOUNDER)
	set AbstractMonsterTable[m.index] = m

