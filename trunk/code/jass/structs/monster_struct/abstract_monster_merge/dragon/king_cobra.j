	//*******************
	// KING_COBRA
	//*******************
	set m = AbstractMonster.create(KING_COBRA, DRAGON, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 3,  5,   3,   4,   5,   5,   5,   3)
	call m.setAttrMax( 5,  8,   5,   7,   7,   10,   10,   6)
	call m.setAbilities(ABOLISH_MAGIC, MIRROR_IMAGE, JOLTING_VENOM)
	set AbstractMonsterTable[m.index] = m

