	//*******************
	// ROSEVINE
	//*******************
	set m = AbstractMonster.create(ROSEVINE, PLANT, 80, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  10,   0,   0,   0,   30,   15,   3)
	call m.setAttrMax( 1,  17,   5,   5,   1,   50,   25,   7)
	call m.setAbilities(ABOLISH_MAGIC, ENTANGLING_ROOTS, THORNS_AURA)
	set AbstractMonsterTable[m.index] = m

