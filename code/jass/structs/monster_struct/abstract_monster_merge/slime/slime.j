	//*******************
	// SLIME
	//*******************
	/* 
	Slime has a decent HP gain, along with decent SP.
	This makes it ideal for tanking spell casts, since they ignore armor.
	Slime's defense, however, is terrible, making it not so great at tanking attack based monsters.
	Slime also has poor strength, meaning it can't wear heavy armors/items that would be good for a tank
	
	On the other hand, Slime has decent attack growth--it is nearly guaranteed to gain one attack point
	every two levels, and it carries a rare damage type: magical.
	
	The rest of its stats are lackluster.  With Reflect Bounder,
	Slime can ammend for its poor defense and strength.  
	
	Overall Slime would best serve in the role of an anti-spell caster DPS tank.
	*/
	set m = AbstractMonster.create(SLIME, SLIME_FAM, 30, 10)
	//****************DEF  INT  STR  ATT  AGI  HP  MANA  SP
	call m.setAttrMin( 0,  2,   0,   3,   3,   9,   1,   2)
	call m.setAttrMax( 1,  7,   2,   6,   6,   12,   5,   5)
	call m.setAbilities(FIREBOLT, PURGE, REFLECT_BOUNDER)
	set AbstractMonsterTable[m.index] = m

