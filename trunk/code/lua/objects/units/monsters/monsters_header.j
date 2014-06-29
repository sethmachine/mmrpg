//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Monster Constants *************
    //********************************************
    //base object for melee based monsters - the human paladin
    //! i MELEE_ID = "Hpal"
    //base object for ranged based monsters - the human archmage
    //! i RANGED_ID = "Hamg"
    //ids for the dummy heroes for melee, ranged, and flying ranged
    //! i DUMMY_MELEE = "D000"
    //! i DUMMY_RANGED = "D001"
    //! i DUMMY_FLYING = "D002"
    //id for the inventory, should be two slots
    //! i INVENTORY_ID = "something"
    //id for the attack ability, two kinds
    //! i ATTACK_RANGED_ID = "ATT0"
    //! i ATTACK_MELEE_ID = "ATT1"
    //base damage for melee based monsters -- they do 5 base damage - always 1 less
    //! i MELEE_DMG = "3"
    //base damage for ranged based monsters -- they do 3 base damage - always 1 less
    //! i RANGED_DMG = "1"
    //base attack speed for all monsters - Average
    //! i UA1C = "2.0"
    //base movement speed for all monsters - Average
    //! i UMVS = "300"
    //base maximum health for all monsters
    //! i UHPM = "25"
    //base maximum mana for all monsters
    //! i UMPI = "15"
    //base mana regen for all monsters
    //! i UMPR = "0.03"
    //base attributes for all monsters - each set to 1
    //! i AGI = "1"
    //! i INT = "1"
    //! i STR = "1"
    //base attribute growth - each set to 0 (growth managed by triggers)
    //! i AGIplus = "0"
    //! i INTplus = "0"
    //! i STRplus = "0"
    //primary attribute - does not do anything
    //! i UPRA = "AGI"
    //tooltip for reviving monsters
    //! i UAWT = "Revive by finding a priest, using a revive item, using a revive spell, or returning to town"
    //flyer height - maximum flyer height
    //! i UMVH = "170.00"
    //flyer height - minimum
    //! i UMVF = "170.00"
    //index for each point value, incremented by 1 each time
    //! i upoi = 0
    //Family names
    //! i BEAST = "|cfffca702Beast|r"
    //! i BIRD = "|cffff00ffBird|r"
    //! i BUG = "|cff00ffffBug|r"
    //! i DEVIL = "|cffc90e02Devil|r"
    //! i DRAGON = "|cff400080Dragon|r"
    //! i MATERIAL = "|cffc0c0c0Material|r"
    //! i PLANT = "|cff39c647Plant|r"
    //! i WATER = "|cff227bdcWater|r"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //! i BOSS = "|cffbc424e???|r"
	//! i SLIME = "|cff80ffffSlime|r"
    //String for the custom object id
    //! i CUSTOM_ID = "M"
    //use this function to make each monster's custom object id
    //based on the unit point value (upoi)
    //! i function make_id(upoi)
        //! i if upoi < 10 then
            //! i return CUSTOM_ID .. "0" .. "0" .. upoi
        //! i elseif upoi < 100 then
            //! i return CUSTOM_ID .. "0" .. upoi
        //! i else
            //! i return CUSTOM_ID .. upoi
        //! i end
    //! i end
    //********************************************
    //************ Melee Hero ********************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(MELEE_ID, DUMMY_MELEE)
    //! i makechange(current,"race", "Naga") 
    //! i makechange(current,"nameCount", "9999")
    //! i makechange(current,"ua1c", UA1C) 
    //! i makechange(current,"umvs", UMVS)
    //! i makechange(current, "heroAbilList", "")
    //! i makechange(current, "uabi", "ATT0,AMI0")
    //! i makechange(current, "ua1b", MELEE_DMG)
    //! i makechange(current, "dice1", 1)
    //! i makechange(current, "sides1", "1")
    //! i makechange(current, "AGI", AGI)
    //! i makechange(current, "INT", INT)
    //! i makechange(current, "STR", STR)
    //! i makechange(current, "AGIplus", AGIplus)
    //! i makechange(current, "INTplus", INTplus)
    //! i makechange(current, "STRplus", STRplus)
    //! i makechange(current, "uhpm", UHPM)
    //! i makechange(current, "umpi", UMPI)
    //! i makechange(current, "umpr", UMPR)
    //! i makechange(current, "uawt", UAWT)
    //! i makechange(current, "upra", UPRA)
    //paladin has 2 base defense, we set it to 0
    //! i makechange(current, "udef", "0")
    //! i makechange(current, "ufoo", "1")
    //! i makechange(current, "umpm", "15")

    //********************************************
    //************ Ranged Hero *******************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(RANGED_ID, DUMMY_RANGED)
    //! i makechange(current,"race", "Naga") 
    //! i makechange(current,"nameCount", "9999")
    //! i makechange(current,"ua1c", UA1C) 
    //! i makechange(current,"umvs", UMVS)
    //! i makechange(current, "heroAbilList", "")
    //! i makechange(current, "uabi", "ATT1,AMI0")
    //! i makechange(current, "ua1b", RANGED_DMG)
    //! i makechange(current, "dice1", 1)
    //! i makechange(current, "sides1", "1")
    //! i makechange(current, "AGI", AGI)
    //! i makechange(current, "INT", INT)
    //! i makechange(current, "STR", STR)
    //! i makechange(current, "AGIplus", AGIplus)
    //! i makechange(current, "INTplus", INTplus)
    //! i makechange(current, "STRplus", STRplus)
    //! i makechange(current, "uhpm", UHPM)
    //! i makechange(current, "umpi", UMPI)
    //! i makechange(current, "umpr", UMPR)
    //! i makechange(current, "uawt", UAWT)
    //! i makechange(current, "upra", UPRA)
    //! i makechange(current, "ufoo", "1")
    //! i makechange(current, "umpm", "15")
    //********************************************
    //************ Flying Hero *******************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(DUMMY_RANGED, DUMMY_FLYING)
    //! i makechange(current, "ushu", "ShadowFlyer")
    //! i makechange(current, "umvh", UMVH)
    //! i makechange(current, "umvf", UMVF)
    //! i makechange(current, "umvt", "hover")

    //insert
//! endexternalblock

