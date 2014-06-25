	//*******************
	// KING_COBRA
	//*******************
	set m = AbstractMonster.create(KING_COBRA, DRAGON, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAttrMax( 1,  1,   1,   1,   1,   1,   1,   1)
	call m.setAbilities(ABOLISH_MAGIC, MIRROR_IMAGE, JOLTING_VENOM)
	set AbstractMonsterTable[m.index] = m

