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
	//! i makechange(current, "ua1r", "450")
    //********************************************
    //************ Flying Hero *******************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(DUMMY_RANGED, DUMMY_FLYING)
    //! i makechange(current, "ushu", "ShadowFlyer")
    //! i makechange(current, "umvh", UMVH)
    //! i makechange(current, "umvf", UMVF)
    //! i makechange(current, "umvt", "hover")

    // Bee Eater
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Bee Eater (m),Bee Eater (f)")
    //! i makechange(current, "umdl", "units\\creeps\\GrizzlyBear\\GrizzlyBear")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGrizzlyBear.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNGrizzlyBear.blp")
    //! i makechange(current, "usnd", "GrizzlyBear")
   //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "1.90")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".9")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.630")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "0")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Darkhorn
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Darkhorn (m),Darkhorn (f)")
    //! i makechange(current, "umdl", "units\\orc\\Tauren\\Tauren")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTauren.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTauren.blp")
    //! i makechange(current, "usnd", "Tauren")
    //various art values
    //! i makechange(current, "uble", ".30")
    //! i makechange(current, "ucbs", "0.590")
    //! i makechange(current, "ucpt", "0.680")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "3.14")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.000")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.1")
    //selection circle size
    //! i makechange(current, "ussc", "1.6")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.863")
    //! i makechange(current, "udp1", "0.467")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "240")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Dumbira
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Dumbira (m),Dumbira (f)")
    //! i makechange(current, "umdl", "units\\creeps\\OgreOneHeaded\\OgreOneHeaded.mdl")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNOneHeadedOgre.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNOneHeadedOgre.blp")
    //! i makechange(current, "usnd", "OgreOneHead")
   //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.560")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "2.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "130.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.6")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Flying Sheep
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Flying Sheep (m),Flying Sheep (f)")
    //! i makechange(current, "umdl", "units\\critters\\FlyingSheep\\FlyingSheep.mdl")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSheep.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSheep.blp")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.0")
    //! i makechange(current, "urun", "111.0")
    //! i makechange(current, "uwal", "111.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "30.00")
    //! i makechange(current, "ushy", "30.00")
    //! i makechange(current, "ushh", "60.00")
    //! i makechange(current, "ushw", "60.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", ".8")
    //collision size
    //! i makechange(current, "ucol", "16.00")
    //point value - for indexing
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //unit sound
    //! i makechange(current, "usnd", "Sheep")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

// Gopher Mage
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Gopher Mage (m),Gopher Mage (f)")
    //! i makechange(current, "umdl", "units\\creeps\\KoboldGeomancer\\KoboldGeomancer.mdl")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNKoboldGeomancer.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNKoboldGeomancer.blp")
    //! i makechange(current, "usnd", "Kobold")
    //various art values
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "150.0")
    //! i makechange(current, "uwal", "150.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.4")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.380")
    //collision size
    //! i makechange(current, "ucol", "31")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Gorago
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Gorago (m),Gorago (f)")
    //! i makechange(current, "umdl", "units\\creeps\\FurbolgElder\\FurbolgElder")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFurbolgElder.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNFurbolgElder.blp")
    //! i makechange(current, "usnd", "Furbolg")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "70.00")
    //! i makechange(current, "ushy", "70.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.4")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Grizzly
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Grizzly (m),Grizzly (f)")
    //! i makechange(current, "umdl", "units\\creeps\\PolarFurbolg\\PolarFurbolg")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNPolarFurbolgElder.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNPolarFurbolgElder.blp")
    //! i makechange(current, "usnd", "Furbolg")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", ".500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.000")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

// Gulp Beast
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Gulp Beast (m),Gulp Beast (f)")
    //! i makechange(current, "umdl", "units\\orc\\KotoBeastNoRider\\KotoBeastNoRider")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNKotoBeast.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNKotoBeast.blp")
    //! i makechange(current, "usnd", "KotoBeastNoRider")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.000")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "120.00")
    //! i makechange(current, "ushy", "120.00")
    //! i makechange(current, "ushh", "240.00")
    //! i makechange(current, "ushw", "240.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "2.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.660")
    //collision size
    //! i makechange(current, "ucol", "40")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "230")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

// King Magnataurus
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "King Magnataurus (m),King Magnataurus (f)")
    //! i makechange(current, "umdl", "units\\creeps\\MagnataurBlue\\MagnataurBlue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBlueMagnataur.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBlueMagnataur.blp")
    //! i makechange(current, "usnd", "Magnataur")
   //various art values
    //! i makechange(current, "ucbs", "0.840")
    //! i makechange(current, "ucpt", "0.660")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "150.00")
    //! i makechange(current, "ulpx", "-100.00")
    //! i makechange(current, "ulpy", "40.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "360.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.45")
    //selection circle size
    //! i makechange(current, "ussc", "3.0")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.840")
    //! i makechange(current, "udp1", "0.660")
    //collision size
    //! i makechange(current, "ucol", "64")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "240")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Mad Dog
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Mad Dog (m),Mad Dog (f)")
    //! i makechange(current, "umdl", "units\\creeps\\DireWolf\\DireWolf")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDireWolf.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDireWolf.blp")
    //! i makechange(current, "usnd", "SpiritWolf")
   //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "1.75")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", "1.3")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Mad Gopher
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Mad Gopher (m),Mad Gopher (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Kobold\\Kobold")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNKobold.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNKobold.blp")
    //! i makechange(current, "usnd", "Kobold")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "150.00")
    //! i makechange(current, "uwal", "150.00")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.000")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.25")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.380")
    //collision size
    //! i makechange(current, "ucol", "31")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

// Magnataur
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Magnataur (m),Magnataur (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Magnataur\\Magnataur")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMagnataur.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNMagnataur.blp")
    //! i makechange(current, "usnd", "Magnataur")
    //various art values
    //! i makechange(current, "ucbs", "0.840")
    //! i makechange(current, "ucpt", "0.660")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.13")
    //selection circle size
    //! i makechange(current, "ussc", "2.25")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.840")
    //! i makechange(current, "udp1", "0.660")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Sasquatch
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Sasquatch (m),Sasquatch (f)")
    //! i makechange(current, "umdl", "units\\creeps\\JungleBeast\\JungleBeast")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNJungleBeast.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNJungleBeast.blp")
    //! i makechange(current, "usnd", "Wendigo")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

// Seal
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Seal (m),Seal (f)")
    //! i makechange(current, "umdl", "units\\critters\\Seal\\Seal")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSeal.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeal.blp")
    //! i makechange(current, "usnd", "Seal")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.000")
    //! i makechange(current, "ulpx", "0")
    //! i makechange(current, "ulpy", "0")
    //! i makechange(current, "ulsz", "0")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "70.00")
    //! i makechange(current, "ushw", "70.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //collision size
    //! i makechange(current, "ucol", "16")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Trumpeter
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Trumpeter (m),Trumpeter (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Mammoth\\Mammoth")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMammoth.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNMammoth.blp")
    //! i makechange(current, "usnd", "Mammoth")
   //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".85")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.500")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "225")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// White Hound
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "White Hound (m),White Hound (f)")
    //! i makechange(current, "umdl", "units\\creeps\\WhiteWolf\\WhiteWolf")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTimberWolf.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTimberWolf.blp")
    //! i makechange(current, "usnd", "SpiritWolf")
   //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "1.75")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //attachment - skeleton face
    ////! i makechange(current, "uabi", "AT01")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Yeti
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BEAST)
    //! i makechange(current, "properNames", "Yeti (m),Yeti (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Wendigo\\Wendigo")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNWendigo.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNWendigo.blp")
    //! i makechange(current, "usnd", "Wendigo")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".9")
    //selection circle size
    //! i makechange(current, "ussc", "1.2")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "235")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Eagle Warrior
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Azurile (m),Azurile (f)")
    //! i makechange(current, "umdl", "EagleWarrior.mdx")
    //! i makechange(current, "uico", "BTNEagleWarrior.blp")
    //! i makechange(current, "ussi", "BTNEagleWarrior.blp")
    //! i makechange(current, "usnd", "HippoGryph")
    //various art values
    //! i makechange(current, "ucbs", "1.530")
    //! i makechange(current, "ucpt", "0.9")
    //! i makechange(current, "urun", "120.00")
    //! i makechange(current, "uwal", "120.00")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    //backswing stuff - for Eagle Warrior
    //! i makechange(current, "ubs1", "0.833")
    //! i makechange(current, "udp1", "1.033")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Dracky
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Dracky (m),Dracky (f)")
    //! i makechange(current, "umdl", "units\\undead\\Gargoyle\\Gargoyle")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGargoyle.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTrollBatRider.blp")
    //! i makechange(current, "usnd", "Gargoyle")
    //various art values
    //! i makechange(current, "ucbs", "0.000")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.33")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "5.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.540")
    //! i makechange(current, "udp1", "0.600")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\GargoyleMissile\\GargoyleMissile.mdl")
    //! i upoi = upoi + 1

// Harpy (bird + bug)
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Harpy (m),Harpy (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Harpy\\Harpy")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHarpy.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNHarpy.blp")
    //! i makechange(current, "usnd", "Harpy")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "30.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "100.00")
    //! i makechange(current, "ushw", "100.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.40")
    //selection circle size
    //! i makechange(current, "ussc", "1.3")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "310")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\HarpyMissile\\HarpyMissile.mdl")
    //! i upoi = upoi + 1

// Jamirus
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Jamirus (m),Jamirus (f)")
    //! i makechange(current, "umdl", "GryphonHero.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGryphonRider.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNGryphonRider.blp")
    //! i makechange(current, "usnd", "HippoGryph")
    //various art values
    //! i makechange(current, "ucbs", "1.530")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "240.00")
    //! i makechange(current, "uwal", "240.00")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.550")
    //! i makechange(current, "udp1", "0.550")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Landowl
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Landowl (m),Landowl (f)")
    //! i makechange(current, "umdl", "units\\creeps\\OwlBear\\OwlBear")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNOwlBear.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNOwlBear.blp")
    //! i makechange(current, "usnd", "OwlBear")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", "1.6")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Lucent Owl
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Lucent Owl (m),Lucent Owl (f)")
    //! i makechange(current, "umdl", "units\\nightelf\\OwlSCOUT\\OwlSCOUT")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNScout.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNScout.blp")
    //! i makechange(current, "usnd", "owl")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "300.0")
    //! i makechange(current, "uwal", "300.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "5.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "30.00")
    //! i makechange(current, "ushy", "30.00")
    //! i makechange(current, "ushh", "60.00")
    //! i makechange(current, "ushw", "60.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", "1.2")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "16")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "310")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ZigguratMissile\\ZigguratMissile.mdl")
    //! i upoi = upoi + 1

// War Hawk
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Mask Hawk (m),Mask Hawk (f)")
    //! i makechange(current, "umdl", "units\\creeps\\WarEagle\\WarEagle")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNWarEagle.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNWarEagle.blp")
    //! i makechange(current, "usnd", "WarEagle")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.500")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\HarpyMissile\\HarpyMissile.mdl")
    //! i upoi = upoi + 1

// Penguin
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Penguin (m),Penguin (f)")
    //! i makechange(current, "umdl", "units\\critters\\Penguin\\Penguin")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNPenguin.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNPenguin.blp")
    //! i makechange(current, "usnd", "Penguin")
    //various art values
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.400")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.33")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "20.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "20.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "medium")
    //flyers only
    ////! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "70.00")
    //! i makechange(current, "ushw", "70.00")
    //movement height (flyers only)
    ////! i makechange(current, "umvh", "240.00")
    //flyer min height
    ////! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", ".9")
    //collision size
    //! i makechange(current, "ucol", "16")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //movement speed
    //! i makechange(current, "umvs", "280")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Phoenix
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Phoenix (m),Phoenix (f)")
    //! i makechange(current, "umdl", "units\\human\\phoenix\\phoenix")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMarkOfFire.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNMarkOfFire.blp")
    //! i makechange(current, "usnd", "Phoenix")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "20.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "20.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.633")
    //! i makechange(current, "udp1", "0.430")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    ////! i makechange(current, "uclr", "255")
    ////! i makechange(current, "uclg", "0")
    ////! i makechange(current, "uclb", "40")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile.mdl")
    //! i upoi = upoi + 1

// Rainhawk
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Rainhawk (m),Rainhawk (f)")
    //! i makechange(current, "umdl", "units\\nightelf\\Hippogryph\\Hippogryph")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHippogriff.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNHippogriff.blp")
    //! i makechange(current, "usnd", "HippoGryph")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "350.0")
    //! i makechange(current, "uwal", "350.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "5.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.50")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.370")
    //! i makechange(current, "udp1", "0.600")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "RainbowMissile.mdx")
    //! i upoi = upoi + 1

// Shantak
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Shantak (m),Shantak (f)")
    //! i makechange(current, "umdl", "units\\undead\\ObsidianStatue\\ObsidianStatue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDestroyer.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDestroyer.blp")
    //! i makechange(current, "usnd", "ObsidianDestroyer")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.830")
    //! i makechange(current, "urun", "350.0")
    //! i makechange(current, "uwal", "350.0")
    //! i makechange(current, "udtm", "1.67")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "10.00")
    //! i makechange(current, "ulpx", "55.00")
    //! i makechange(current, "ulpy", "115.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "10.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".85")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.337")
    //! i makechange(current, "udp1", "0.633")
    //collision size
    //! i makechange(current, "ucol", "25")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    ////! i makechange(current, "uclr", "255")
    ////! i makechange(current, "uclg", "0")
    ////! i makechange(current, "uclb", "40")
    //alternate model (for things like mountain king, etc.)
    //! i makechange(current, "uani", "alternate")
    //! i makechange(current, "ualp", "alternate")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\AvengerMissile\\AvengerMissile.mdl")
    //! i upoi = upoi + 1

// Vulture
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Vulture (m),Vulture (f)")
    //! i makechange(current, "umdl", "units\\critters\\Vulture\\Vulture")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNVulture.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNVulture.blp")
    //! i makechange(current, "usnd", "Vulture")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "70.00")
    //! i makechange(current, "ushw", "70.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.3")
    //selection circle size
    //! i makechange(current, "ussc", "1.1")
    //collision size
    //! i makechange(current, "ucol", "18")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //movement speed
    //! i makechange(current, "umvs", "320")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\HarpyMissile\\HarpyMissile.mdl")
    //! i upoi = upoi + 1

// Wyvern
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Wyvern (m),Wyvern (f)")
    //! i makechange(current, "umdl", "units\\orc\\RiderlessWyvern\\RiderlessWyvern")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNWyvern.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNWyvern.blp")
    //! i makechange(current, "usnd", "HippoGryph")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "0.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "5.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.540")
    //! i makechange(current, "udp1", "0.600")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ZigguratMissile\\ZigguratMissile.mdl")
    //! i upoi = upoi + 1

// Zapbird
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BIRD)
    //! i makechange(current, "properNames", "Zapbird (m),Zapbird (f)")
    //! i makechange(current, "umdl", "units\\creeps\\NetherDragon\\NetherDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNNetherDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNNetherDragon.blp")
    //! i makechange(current, "usnd", "NetherDragon")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.13")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "5.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "280.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.400")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "0")
    //! i makechange(current, "uclb", "40")
    //special effect (e.g. give a lightning attack)
    //! i makechange(current, "uabi", "Alit,AMI0,ATT1")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl")
    //! i upoi = upoi + 1

// Baramos
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Baramos (m),Baramos (f)")
    //! i makechange(current, "umdl", "units\\demon\\Kiljaeden\\Kiljaeden")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNKiljaedin.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "5.00")
    //! i makechange(current, "umxr", "5.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "90.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "40.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "120.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\DemonHunterMissile\\DemonHunterMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "KelThuzadNecro")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Deathmore
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Deathmore (m),Deathmore (f)")
    //! i makechange(current, "umdl", "units\\demon\\EredarWarlockPurple\\EredarWarlockPurple")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNEredarWarlockPurple.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "2.33")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "130.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "60.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "160.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.65")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\DemonHunterMissile\\DemonHunterMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "PitLord")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Dracolord
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Dracolord (m),Dracolord (f)")
    //! i makechange(current, "umdl", "units\\undead\\Kelthuzad\\Kelthuzad")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNKelThuzad.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //! i makechange(current, "ushx", "70.00")
    //! i makechange(current, "ushy", "70.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.470")
    //! i makechange(current, "udp1", "0.530")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "KelThuzadNecro")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Genosidoh
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Genosidoh (m),Genosidoh (f)")
    //! i makechange(current, "umdl", "units\\undead\\Tichondrius\\Tichondrius")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTichondrius.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "1.100")
    //! i makechange(current, "ucpt", "0.900")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.45")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "130.00")
    //! i makechange(current, "ushw", "130.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.550")
    //! i makechange(current, "udp1", "0.550")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Tichondrius")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Mudou
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Mudou (m),Mudou (f)")
    //! i makechange(current, "umdl", "units\\demon\\Warlock\\Warlock")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNArchimonde.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "5.00")
    //! i makechange(current, "umxr", "5.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "90.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "40.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "120.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.40")
    //selection circle size
    //! i makechange(current, "ussc", "2.10")
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "240.00")
    //! i makechange(current, "ushw", "240.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\DemonHunterMissile\\DemonHunterMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "KelThuzadNecro")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Orgodemir
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Orgodemir (m),Orgodemir (f)")
    //! i makechange(current, "umdl", "DemonWitch.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSorceress.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "1.080")
    //! i makechange(current, "ucpt", "0.450")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.87")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "85.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.50")
    //selection circle size
    //! i makechange(current, "ussc", "1.50")
    //! i makechange(current, "ushx", "45.00")
    //! i makechange(current, "ushy", "45.00")
    //! i makechange(current, "ushh", "100.00")
    //! i makechange(current, "ushw", "100.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.780")
    //! i makechange(current, "udp1", "0.750")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\SorceressMissile\\SorceressMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //! i makechange(current, "umvt", "hover")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Demoness")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "320")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Orgodemir (Transformed)
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Orgodemir (m),Orgodemir (f)")
    //! i makechange(current, "umdl", "units\\demon\\Mannoroth\\Mannoroth")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMannoroth.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "90.0")
    //! i makechange(current, "uwal", "90.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "90.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.70")
    //selection circle size
    //! i makechange(current, "ussc", "3.0")
    //! i makechange(current, "ushx", "120.00")
    //! i makechange(current, "ushy", "120.00")
    //! i makechange(current, "ushh", "300.00")
    //! i makechange(current, "ushw", "300.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.450")
    //! i makechange(current, "udp1", "0.833")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SorceressMissile\\SorceressMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "PitLord")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Pizarro
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Pizarro (m),Pizarro (f)")
    //! i makechange(current, "umdl", "units\\other\\DranaiAkama\\DranaiAkama")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDranaiAkama.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "2.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "150.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "70.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "150.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.50")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.580")
    //! i makechange(current, "udp1", "0.590")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SorceressMissile\\SorceressMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumSlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Akama")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Sidoh
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Sidoh (m),Sidoh (f)")
    //! i makechange(current, "umdl", "units\\undead\\HeroDreadLord\\HeroDreadLord")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroDreadLord.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "1.530")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.50")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.550")
    //! i makechange(current, "udp1", "0.550")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroDreadLord")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Zoma
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BOSS)
    //! i makechange(current, "properNames", "Zoma (m),Zoma (f)")
    //! i makechange(current, "umdl", "units\\orc\\HeroShadowHunter\\HeroShadowHunter")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNShadowHunter.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "1.070")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "300.0")
    //! i makechange(current, "uwal", "300.0")
    //! i makechange(current, "udtm", "3.77")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.20")
    //! i makechange(current, "ushx", "85.00")
    //! i makechange(current, "ushy", "85.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ShadowHunterMissile\\ShadowHunterMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroShadowHunter")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "chaos")
    //! i upoi = upoi + 1

// Armorpion
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Armorpion (m),Armorpion (f)")
    //! i makechange(current, "umdl", "ArchnathidMachineInfernal.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNArachnathid.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNArachnathid.blp")
    //! i makechange(current, "usnd", "Arachnathid")
    //various art values
    //! i makechange(current, "ucbs", ".510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "140.00")
    //! i makechange(current, "uwal", "149.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.3")
    //selection circle size
    //! i makechange(current, "ussc", "1.90")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.470")
    //! i makechange(current, "udp1", "0.530")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "240")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Army Ant
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Army Ant (m),Army Ant (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Nerubian\\Nerubian")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNNerubian.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNNerubian.blp")
    //! i makechange(current, "usnd", "Nerubian")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "45.00")
    //! i makechange(current, "ushy", "45.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".6")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //tint stuff
    //! i makechange(current, "uclr", "120")
    //! i makechange(current, "uclg", "200")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Blood Beetle
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Blood Beetle (m),Blood Beetle (f)")
    //! i makechange(current, "umdl", "BloodBeetle.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroCryptLord.blp")
    //! i makechange(current, "ussi", "UI\\Glues\\ScoreScreen\\scorescreen-hero-cryptlord.blp")
    //! i makechange(current, "usnd", "Scarab")
    //various art values
    //! i makechange(current, "ucbs", "1.100")
    //! i makechange(current, "ucpt", "0.400")
    //! i makechange(current, "urun", "180.00")
    //! i makechange(current, "uwal", "180.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "30.00")
    //! i makechange(current, "umxr", "30.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "130.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "112.00")
    //! i makechange(current, "ushy", "112.00")
    //! i makechange(current, "ushh", "280.00")
    //! i makechange(current, "ushw", "280.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.540")
    //! i makechange(current, "udp1", "0.460")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "245")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Digster
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Digster (m),Digster (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\Lobstrokkred\\Lobstrokkred")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNLobstrokkRed.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNLobstrokkRed.blp")
    //! i makechange(current, "usnd", "Lobstrokk")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.550")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "45.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".8")
    //selection circle size
    //! i makechange(current, "ussc", "1.9")
    //tint stuff
    //! i makechange(current, "uclr", "250")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "125")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Dragonfly
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Dragonfly (m),Dragonfly (f)")
    //! i makechange(current, "umdl", "G.DragonflyRed.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNLobstrokkRed.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNLobstrokkRed.blp")
    //! i makechange(current, "usnd", "FaerieDragon")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "220.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "150.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".75")
    //selection circle size
    //! i makechange(current, "ussc", "1.6")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.500")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

// Dune Flyer
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Dune Flyer (m),Dune Flyer (f)")
    //! i makechange(current, "umdl", "DuneFlyer.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDuneCrawler.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDuneCrawler.blp")
    //! i makechange(current, "usnd", "Spider")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //flyers only
    //! i makechange(current, "uslz", "220.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "150.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".65")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.500")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\HarpyMissile\\HarpyMissile.mdl")
    //! i upoi = upoi + 1

// Dune Worm
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Dune Worm (m),Dune Worm (f)")
    //! i makechange(current, "umdl", "units\\critters\\DuneWorm\\DuneWorm")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDuneWorm.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDuneWorm.blp")
    //! i makechange(current, "usnd", "Skink")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "1.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "70.00")
    //! i makechange(current, "ushw", "70.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.000")
    //! i makechange(current, "udp1", "0.000")
    //collision size
    //! i makechange(current, "ucol", "16")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodLightBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Scarab
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Scarab (m),Scarab (f)")
    //! i makechange(current, "umdl", "units\\undead\\scarab\\scarab")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCarrionScarabs.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNCarrionScarabs.blp")
    //! i makechange(current, "usnd", "Scarab")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "63.00")
    //! i makechange(current, "uwal", "63.00")
    //! i makechange(current, "udtm", "3.03")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "150")
    //! i makechange(current, "uclb", "200")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Scorpion
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Scorpion (m),Scorpion (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\ArchnathidGreen\\ArchnathidGreen")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNArachnathidGreen.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNArachnathidGreen.blp")
    //! i makechange(current, "usnd", "Arachnathid")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "140.00")
    //! i makechange(current, "uwal", "140.00")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".75")
    //selection circle size
    //! i makechange(current, "ussc", "1.2")
    //tint stuff
    //! i makechange(current, "uclr", "200")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "200")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.470")
    //! i makechange(current, "udp1", "0.530")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Skularach
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Skularach (m),Skularach (f)")
    //! i makechange(current, "umdl", "units\\undead\\HeroCryptLord\\HeroCryptLord")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroCryptLord.blp")
    //! i makechange(current, "ussi", "UI\\Glues\\ScoreScreen\\scorescreen-hero-cryptlord.blp")
    //! i makechange(current, "usnd", "HeroCryptLord")
    //various art values
    //! i makechange(current, "ucbs", "1.100")
    //! i makechange(current, "ucpt", "0.400")
    //! i makechange(current, "urun", "180.00")
    //! i makechange(current, "uwal", "180.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "30.00")
    //! i makechange(current, "umxr", "30.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "130.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "112.00")
    //! i makechange(current, "ushy", "112.00")
    //! i makechange(current, "ushh", "280.00")
    //! i makechange(current, "ushw", "280.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.540")
    //! i makechange(current, "udp1", "0.460")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "245")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Snaily
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Snaily (m),Snaily (f)")
    //! i makechange(current, "umdl", "units\\critters\\HermitCrab\\HermitCrab")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHermitCrab.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNHermitCrab.blp")
    //! i makechange(current, "usnd", "Lobstrokk")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.550")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "45.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "25.00")
    //! i makechange(current, "ushy", "25.00")
    //! i makechange(current, "ushh", "50.00")
    //! i makechange(current, "ushw", "50.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", ".90")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.000")
    //! i makechange(current, "udp1", "0.000")
    //collision size
    //! i makechange(current, "ucol", "16")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Tremor
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Tremor (m),Tremor (f)")
    //! i makechange(current, "umdl", "GiantSandWorm.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNForgottenOne.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNForgottenOne.blp")
    //! i makechange(current, "usnd", "Unbroken")
    //various art values
    //! i makechange(current, "ucbs", ".510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "140.00")
    //! i makechange(current, "uwal", "149.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", ".35")
    //selection circle size
    //! i makechange(current, "ussc", "1.60")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.470")
    //! i makechange(current, "udp1", "0.530")
    //collision size
    //! i makechange(current, "ucol", "48")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "240")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// War Spider
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "War Spider (m),War Spider (f)")
    //! i makechange(current, "umdl", "units\\creeps\\NerubianSpiderLord\\NerubianSpiderLord")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNnerubianSpiderLord.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNnerubianSpiderLord.blp")
    //! i makechange(current, "usnd", "Nerubian")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "160.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "155")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Weedbug
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", BUG)
    //! i makechange(current, "properNames", "Weedbug (m),Weedbug (f)")
    //! i makechange(current, "umdl", "units\\creeps\\SpiderBlue\\SpiderBlue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSpiderBlue.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderBlue.blp")
    //! i makechange(current, "usnd", "Spider")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "300.0")
    //! i makechange(current, "uwal", "80.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "45.00")
    //! i makechange(current, "ushy", "45.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //tint stuff
    //! i makechange(current, "uclr", "100")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "150")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.400")
    //collision size
    //! i makechange(current, "ucol", "32")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ChimaeraAcidMissile\\ChimaeraAcidMissile.mdl")
    //! i upoi = upoi + 1

// AgDevil
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "AgDevil (m),AgDevil (f)")
    //! i makechange(current, "umdl", "units\\demon\\Felgaurd\\Felgaurd")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFelGuard.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNFelGuard.blp")
    //! i makechange(current, "usnd", "DoomGuard")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "280.0")
    //! i makechange(current, "uwal", "280.0")
    //! i makechange(current, "udtm", "2.20")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "150")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.400")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Beast Rider
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Beast Rider (m),Beast Rider (f)")
    //! i makechange(current, "umdl", "units\\demon\\ChaosWolfRider\\ChaosWolfRider")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNChaosWolfRider.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNChaosWolfRider.blp")
    //! i makechange(current, "usnd", "Wolfrider")
    //various art values
    //! i makechange(current, "ucbs", "0.200")
    //! i makechange(current, "ucpt", "0.600")
    //! i makechange(current, "urun", "360.0")
    //! i makechange(current, "uwal", "360.0")
    //! i makechange(current, "udtm", "1.87")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "1.60")
    //! i makechange(current, "ushx", "75.00")
    //! i makechange(current, "ushy", "75.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.500")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumSlice")
    //movement type
    //! i makechange(current, "umvt", "horse")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Beelzebub
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Beelzebub (m),Beelzebub (f)")
    //! i makechange(current, "umdl", "units\\other\\DranaiMage\\DranaiMage")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDranaiMage.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDranaiMage.blp")
    //! i makechange(current, "usnd", "Draenei")
    //various art values
    //! i makechange(current, "ucbs", "0.670")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "185.0")
    //! i makechange(current, "uwal", "185.0")
    //! i makechange(current, "udtm", "2.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", ".8")
    //selection circle size
    //! i makechange(current, "ussc", ".85")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "140")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.580")
    //! i makechange(current, "udp1", "0.590")
    //melee attack range only
    ////! i makechange(current, "ua1r", "100.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumChop")
    //collision size
    //! i makechange(current, "ucol", "16.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FarseerMissile\\FarseerMissile.mdl")
    //! i upoi = upoi + 1

// Boss Troll
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Boss Troll (m),Boss Troll (f)")
    //! i makechange(current, "umdl", "units\\creeps\\ForestTrollTrapper\\ForestTrollTrapper")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNForestTroll.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNForestTroll.blp")
    //! i makechange(current, "usnd", "ForestTroll")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "270.0")
    //! i makechange(current, "uwal", "270.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.55")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "70.00")
    //! i makechange(current, "ushy", "70.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Demona
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Demona (m),Demona (f)")
    //! i makechange(current, "umdl", "units\\demon\\DemonessBlue\\DemonessBlue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBlueDemoness.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBlueDemoness.blp")
    //! i makechange(current, "usnd", "Demoness")
    //various art values
    //! i makechange(current, "ucbs", "0.200")
    //! i makechange(current, "ucpt", "0.600")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.23")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.40")
    //selection circle size
    //! i makechange(current, "ussc", "1.40")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Durran
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Durran (m),Durran (f)")
    //! i makechange(current, "umdl", "units\\demon\\HeroChaosBladeMaster\\HeroChaosBladeMaster")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNChaosBlademaster.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNChaosBlademaster.blp")
    //! i makechange(current, "usnd", "HeroBladeMaster")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "290.0")
    //! i makechange(current, "uwal", "290.0")
    //! i makechange(current, "udtm", "1.90")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.15")
    //! i makechange(current, "ushx", "70.00")
    //! i makechange(current, "ushy", "70.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.840")
    //! i makechange(current, "udp1", "0.330")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Evil Statue
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Evil Statue (m),Evil Statue (f)")
    //! i makechange(current, "umdl", "units\\undead\\ObsidianStatue\\ObsidianStatue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNObsidianStatue.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNObsidianStatue.blp")
    //! i makechange(current, "usnd", "ObsidianStatue")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "0.94")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", ".85")
    //selection circle size
    //! i makechange(current, "ussc", "2.10")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.470")
    //! i makechange(current, "udp1", "0.530")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FarseerMissile\\FarseerMissile.mdl")
    //! i upoi = upoi + 1

// Felhound
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Felhound (m),Felhound (f)")
    //! i makechange(current, "umdl", "units\\demon\\felhound\\felhound")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFelHound.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNFelHound.blp")
    //! i makechange(current, "usnd", "Felhound")
    //various art values
    //! i makechange(current, "ucbs", ".510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.50")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.400")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "285")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Gate Guardian
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Gate Guardian (m),Gate Guardian (f)")
    //! i makechange(current, "umdl", "units\\demon\\FelgaurdBlue\\FelgaurdBlue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFelGuardBlue.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNFelGuardBlue.blp")
    //! i makechange(current, "usnd", "DoomGuard")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "280.0")
    //! i makechange(current, "uwal", "280.0")
    //! i makechange(current, "udtm", "2.20")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.25")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.400")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "265")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Lash Beast
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Lash Beast (m),Lash Beast (f)")
    //! i makechange(current, "umdl", "units\\creeps\\SludgeMonster\\SludgeMonster")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSludgeCreature.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSludgeCreature.blp")
    //! i makechange(current, "usnd", "SludgeMonster")
    //various art values
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.3")
    //selection circle size
    //! i makechange(current, "ussc", "2.0")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "100")
    //! i makechange(current, "uclg", "100")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\SludgeMissile\\SludgeMissile.mdl")
    //! i upoi = upoi + 1

// Orc
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Orc (m),Orc (f)")
    //! i makechange(current, "umdl", "units\\demon\\ChaosGrunt\\ChaosGrunt")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNChaosGrunt.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNChaosGrunt.blp")
    //! i makechange(current, "usnd", "ChaosGrunt")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "1.75")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Satyr
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Satyr (m),Satyr (f)")
    //! i makechange(current, "umdl", "units\\creeps\\SatyrTrickster\\SatyrTrickster")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSatyrTrickster.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSatyrTrickster.blp")
    //! i makechange(current, "usnd", "Satyr")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "100")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "175")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\BlackKeeperMissile\\BlackKeeperMissile.mdl")
    //! i upoi = upoi + 1

// Skullface
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Skullface (m),Skullface (f)")
    //! i makechange(current, "umdl", "units\\creeps\\IceTrollShadowPriest\\IceTrollShadowPriest")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNIceTrollShadowPriest.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNIceTrollShadowPriest.blp")
    //! i makechange(current, "usnd", "IceTrollShadowPriest")
    //various art values
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "270.0")
    //! i makechange(current, "uwal", "279.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //! i makechange(current, "ushx", "45.00")
    //! i makechange(current, "ushy", "45.00")
    //! i makechange(current, "ushh", "100.00")
    //! i makechange(current, "ushw", "100.00")
    //tint stuff
    //! i makechange(current, "uclr", "190")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "265")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\LichMissile\\LichMissile.mdl")
    //! i upoi = upoi + 1

// Succubus
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Succubus (m),Succubus (f)")
    //! i makechange(current, "umdl", "units\\demon\\Demoness\\Demoness")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDemoness.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDemoness.blp")
    //! i makechange(current, "usnd", "Demoness")
    //various art values
    //! i makechange(current, "ucbs", "0.200")
    //! i makechange(current, "ucpt", "0.600")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.23")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.0")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumChop")
    //collision size
    //! i makechange(current, "ucol", "16.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Titanis
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DEVIL)
    //! i makechange(current, "properNames", "Titanis (m),Titanis (f)")
    //! i makechange(current, "umdl", "units\\demon\\DoomGuard\\DoomGuard")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDoomGuard.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDoomGuard.blp")
    //! i makechange(current, "usnd", "DoomGuard")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "90.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.500")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "265")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\DragonHawkMissile\\DragonHawkMissile.mdl")
    //! i upoi = upoi + 1

// Andreal
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Andreal (m),Andreal (f)")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\creeps\\BlackDragon\\BlackDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBlackDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBlackDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "1.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //orientation interpolation
    //! i makechange(current, "uori", "3")
    //impact/launch values
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "120.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-30.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.940")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FireballMissile\\FireballMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Battlerex
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Battlerex (m),Battlerex (f)")
    //! i makechange(current, "umdl", "Battlerex.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\Battlerex.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\Battlerex.blp")
    //various art values
    //! i makechange(current, "uble", "0.30")
    //! i makechange(current, "ucbs", "0.590")
    //! i makechange(current, "ucpt", "0.680")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "3.14")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.60")
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.863")
    //! i makechange(current, "udp1", "0.467")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "Tauren")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Chimaera
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Chimaera (m),Chimaera (f)")
    //special effect (e.g. give a lightning attack)
    //! i makechange(current, "uabi", "Alit,AMI0,ATT1")
    //! i makechange(current, "umdl", "units\\nightelf\\Chimaera\\Chimaera")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNChimaera.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNChimaera.blp")
    //! i makechange(current, "usnd", "Chimaera")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.300")
    //! i makechange(current, "ucpt", "0.700")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "00.00")
    //orientation interpolation
    //! i makechange(current, "uori", "3")
    //impact/launch values
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "10.000")
    //! i makechange(current, "ulpy", "105.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-18.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "large")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "120.00")
    //! i makechange(current, "ushy", "120.00")
    //! i makechange(current, "ushh", "240.00")
    //! i makechange(current, "ushw", "240.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.650")
    //! i makechange(current, "udp1", "0.700")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "280.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "16.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Death Whelp
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Death Whelp (m),Death Whelp (f)")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\creeps\\BlackDragonWelp\\BlackDragonWelp")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBlackDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBlackDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.470")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //deathtime
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //orientation interpolation
    //! i makechange(current, "uori", "1")
    //impact/launch values
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "0.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "90.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-20.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //the scaling of the model
    //! i makechange(current, "usca", "0.70")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "70.00")
    //! i makechange(current, "ushy", "70.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.940")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Divinegon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Divinegon (m),Divinegon (f)")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\creeps\\GreenDragon\\GreenDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGreenDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNGreenDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "1.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //orientation interpolation
    //! i makechange(current, "uori", "3")
    //impact/launch values
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "120.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-30.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //the scaling of the model
    //! i makechange(current, "usca", "1.75")
    //selection circle size
    //! i makechange(current, "ussc", "2.25")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "150.00")
    //! i makechange(current, "ushy", "150.00")
    //! i makechange(current, "ushh", "300.00")
    //! i makechange(current, "ushw", "300.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "180")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "150")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.940")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\Weapons\GreenDragonMissile\GreenDragonMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "325.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Drygon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Drygon (m),Drygon (f)")
    //special effect for lightning attack - not all units get it
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\naga\\SnapDragon\\SnapDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSnapDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSnapDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "10.00")
    //! i makechange(current, "ulpz", "30.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "120")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\snapMissile\\snapMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "SnapDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Fairydrak
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Fairydrak (m),Fairydrak (f)")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\nightelf\\FaerieDragon\\FaerieDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFaerieDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNFaerieDragon.blp")
    //! i makechange(current, "usnd", "FaerieDragon")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "33.00")
    //orientation interpolation
    //! i makechange(current, "uori", "4")
    //impact/launch values
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "11.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "70.00")
    //! i makechange(current, "ulpz", "11.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "medium")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.5")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.800")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "16.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "310")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Gasgon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Gasgon (m),Gasgon (f)")
    //special effect for lightning attack
    //! i makechange(current, "uabi", "Alit,AMI0")
    //! i makechange(current, "umdl", "units\\creeps\\ThunderLizard\\ThunderLizard")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNThunderLizard.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNThunderLizard.blp")
    //! i makechange(current, "usnd", "KotoBeastNoRider")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "45.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "100.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "20.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.85")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "120")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ChimaeraLightningMissile\\ChimaeraLightningMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Great Drak
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Great Drak (m),Great Drak (f)")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\creeps\\RedDragon\\RedDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNRedDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNRedDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "1.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //orientation interpolation
    //! i makechange(current, "uori", "3")
    //impact/launch values
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "120.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-30.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.940")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// King Cobra
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "King Cobra (m),King Cobra (f)")
    //! i makechange(current, "umdl", "KingCobra.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSerpentWard.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSerpentWard.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "375.0")
    //! i makechange(current, "uwal", "120.0")
    //! i makechange(current, "udtm", "3.33")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "2.20")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.830")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "SnapDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Lizardman
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Lizardman (m),Lizardman (f)")
    //! i makechange(current, "umdl", "lizardman.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNNagaMyrmidon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNNagaMyrmidon.blp")
    //! i makechange(current, "usnd", "Unbroken")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.75")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Mini Drak
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Mini Drak (m),Mini Drak (f)")
    //! i makechange(current, "umdl", "RaptorYellow.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBronzeDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBronzeDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "1.75")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.75")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Orligon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Orligon (m),Orligon (f)")
    //special effect for lightning attack - not all units get it
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\creeps\\ThunderLizardVizier\\ThunderLizardVizier")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNThunderLizardVizier.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNThunderLizardVizier.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "20.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "120.00")
    //! i makechange(current, "ushy", "120.00")
    //! i makechange(current, "ushh", "240.00")
    //! i makechange(current, "ushw", "240.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "200")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "KotoBeastNoRider")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "240")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Orochi
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Orochi (m),Orochi (f)")
    //special effect for lightning attack - not all units get it
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "Tridrak.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNRedDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNRedDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.33")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "80.00")
    //! i makechange(current, "ulpx", "60.00")
    //! i makechange(current, "ulpy", "150.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "150.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.700")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "255")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Serpentia
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Serpentia (m),Serpentia (f)")
    //special effect for lightning attack - not all units get it
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "Triclyde.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTriclyde.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\SSCTriclyde.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.33")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "80.00")
    //! i makechange(current, "ulpx", "60.00")
    //! i makechange(current, "ulpy", "150.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "150.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.2")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.700")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "None")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Sky Dragon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Sky Dragon (m),Sky Dragon (f)")
    //special effect (e.g. give a lightning attack)
    ////! i makechange(current, "uabi", "Alit")
    //! i makechange(current, "umdl", "units\\creeps\\BronzeDragon\\BronzeDragon")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBronzeDragon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBronzeDragon.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "1.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //orientation interpolation
    //! i makechange(current, "uori", "3")
    //impact/launch values
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "120.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-30.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //unit shadow sizes
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tinting values for some units
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.940")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\RedDragonBreath\\RedDragonMissile.mdl")
    //movement height (flyers only)
    //! i makechange(current, "umvh", "240.00")
    //flyer min height
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "NONE")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Swordgon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", DRAGON)
    //! i makechange(current, "properNames", "Swordgon (m),Swordgon (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\DragonSpawnBlue\\DragonSpawnBlue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBlueDragonSpawn.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNBlueDragonSpawn.blp")
    //! i makechange(current, "usnd", "DragonSpawn")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "375.0")
    //! i makechange(current, "uwal", "120.0")
    //! i makechange(current, "udtm", "3.33")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "2.20")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.830")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Balzak
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Balzak (m),Balzak (f)")
    //! i makechange(current, "umdl", "units\\other\\FleshGolem\\FleshGolem")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFleshGolem.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNFleshGolem.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "150.0")
    //! i makechange(current, "uwal", "150.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //! i makechange(current, "ushx", "75.00")
    //! i makechange(current, "ushy", "75.00")
    //! i makechange(current, "ushh", "180.00")
    //! i makechange(current, "ushw", "180.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "Abomination")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Clockwork Goblin
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Clockwork Goblin (m),Clockwork Goblin (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\HeroTinkerRobot\\HeroTinkerRobot")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNClockWerkGoblin.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNClockWerkGoblin.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.50")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.15")
    //! i makechange(current, "ushx", "45.00")
    //! i makechange(current, "ushy", "45.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.330")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "ClockwerkGoblin")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "pierce")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Coil Bird
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Coil Bird (m),Coil Bird (f)")
    //! i makechange(current, "umdl", "Mechanostrider.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGoldenBirdRelic.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNGoldenBirdRelic.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "325.0")
    //! i makechange(current, "uwal", "325.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.35")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FireballMissile\\FireballMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "SteamTank")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Darkmate
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Darkmate (m),Darkmate (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\HeroTinker\\HeroTinker")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroTinker.blp")
    //! i makechange(current, "ussi", "UI\\Glues\\ScoreScreen\\scorescreen-hero-tinker.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.530")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "2.50")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "-48.00")
    //! i makechange(current, "ulpy", "13.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "143.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "72.00")
    //! i makechange(current, "ushy", "72.00")
    //! i makechange(current, "ushh", "220.00")
    //! i makechange(current, "ushw", "220.00")
    //tint stuff
    //! i makechange(current, "uclr", "50")
    //! i makechange(current, "uclg", "50")
    //! i makechange(current, "uclb", "50")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.650")
    //! i makechange(current, "udp1", "0.350")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroTinker")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Gold Golem
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Gold Golem (m),Gold Golem (f)")
    //! i makechange(current, "umdl", "HolyRuneGuardian.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHoly.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNHoly.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.560")
    //! i makechange(current, "ucpt", "0.470")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.25")
    //selection circle size
    //! i makechange(current, "ussc", "1.95")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "RockHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "RockGolem")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Golem
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Golem (m),Golem (f)")
    //! i makechange(current, "umdl", "units\\creeps\\RockGolem\\RockGolem")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNRockGolem.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNRockGolem.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.560")
    //! i makechange(current, "ucpt", "0.470")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "RockHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "RockGolem")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Iceman
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Iceman (m),Iceman (f)")
    //! i makechange(current, "umdl", "RuneGuardian.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNIceShard.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNIceShard.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.560")
    //! i makechange(current, "ucpt", "0.470")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "RockHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "RockGolem")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Lavaman
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Lavaman (m),Lavaman (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\HeroFlameLord\\HeroFlameLord")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroAvatarOfFlame.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNLavaSpawn.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.400")
    //! i makechange(current, "ucpt", "0.670")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "1.50")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "30.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "-12.00")
    //! i makechange(current, "ulpy", "100.00")
    //! i makechange(current, "ulsz", "30.00")
    //! i makechange(current, "ulpz", "130.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.770")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Spells\\Other\\BreathOfFire\\BreathOfFireMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroFireLord")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "265")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Lavaspawn
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Lavaspawn (m),Lavaspawn (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\LavaSpawn\\LavaSpawn")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNLavaSpawn.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNLavaSpawn.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "6.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "80.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "80.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "1.60")
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.770")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\LavaSpawnMissile\\LavaSpawnMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "LavaSpawn")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Mud Doll
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Mud Doll (m),Mud Doll (f)")
    //! i makechange(current, "umdl", "units\\creeps\\RockGolem\\RockGolem")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNRockGolem.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNRockGolem.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.560")
    //! i makechange(current, "ucpt", "0.470")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.60")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "150")
    //! i makechange(current, "uclg", "110")
    //! i makechange(current, "uclb", "70")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "RockHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "RockGolem")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Protomech
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Protomech (m),Protomech (f)")
    //! i makechange(current, "umdl", "units\\creeps\\IronGolem\\IronGolem")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNJunkGolem.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNJunkGolem.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "IronGolem")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Roboster
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Roboster (m),Roboster (f)")
    //! i makechange(current, "umdl", "units\\creeps\\GolemStatue\\GolemStatue")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNArmorGolem.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNArmorGolem.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.560")
    //! i makechange(current, "ucpt", "0.470")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "IronGolem")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Rogue Knight
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Rogue Knight (m),Rogue Knight (f)")
    //! i makechange(current, "umdl", "TheCaptainRevenant.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTheCaptain.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "5.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    //for getting avatar form
    ////! i makechange(current, "uani", "alternate")
    ////! i makechange(current, "ualp", "alternate")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.40")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Ethereal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.600")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //movement type
    //! i makechange(current, "umvt", "hover")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Revenant")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "normal")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Stoneman
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", MATERIAL)
    //! i makechange(current, "properNames", "Stoneman (m),Stoneman (f)")
    //! i makechange(current, "umdl", "units\\human\\HeroMountainKing\\HeroMountainKing")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroMountainKing.blp")
    //! i makechange(current, "ussi", "UI\\Glues\\ScoreScreen\\scorescreen-hero-mountainking.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.400")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "2.50")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "20.00")
    //! i makechange(current, "ulpy", "60.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //for getting avatar form
    //! i makechange(current, "uani", "alternate")
    //! i makechange(current, "ualp", "alternate")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.35")
    //selection circle size
    //! i makechange(current, "ussc", "1.35")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "150.00")
    //! i makechange(current, "ushw", "150.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.650")
    //! i makechange(current, "udp1", "0.350")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroMountainKing")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //! i upoi = upoi + 1

// Cenarius
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Cenarius (m),Cenarius (f)")
    //! i makechange(current, "umdl", "units\\nightelf\\HeroKeeperoftheGrove\\HeroKeeperoftheGrove")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNKeeperOfTheGrove.blp")
    //! i makechange(current, "ussi", "UI\\Glues\\ScoreScreen\\scorescreen-hero-keeperofthegrove.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.800")
    //! i makechange(current, "ucpt", "0.700")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "2.25")
    //! i makechange(current, "ushx", "75.00")
    //! i makechange(current, "ushy", "75.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.770")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\KeeperGroveMissile\\KeeperGroveMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroKeeperOfTheGrove")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "290")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Egdracil
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Egdracil (m),Egdracil (f)")
    //! i makechange(current, "umdl", "EntMammoth.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNAncientOfTheEarth.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNAncientOfTheEarth.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientOfWar")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Entwife
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Entwife (m),Entwife (f)")
    //! i makechange(current, "umdl", "units\\nightelf\\Dryad\\Dryad")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDryad.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDryad.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "380.0")
    //! i makechange(current, "uwal", "380.0")
    //! i makechange(current, "udtm", "3.00")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "-25.00")
    //! i makechange(current, "ulpy", "40.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "125.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //! i makechange(current, "ushx", "70.00")
    //! i makechange(current, "ushy", "70.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\Dryadmissile\\Dryadmissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Dryad")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Face Tree
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Face Tree (m),Face Tree (f)")
    //! i makechange(current, "umdl", "buildings\\demon\\CorruptedTreeofLife\\CorruptedTreeofLife")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCorruptedTreeOfLife.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNCorruptedTreeOfLife.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "6.00")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "160.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.85")
    //selection circle size
    //! i makechange(current, "ussc", "3.5")
    //! i makechange(current, "ushx", "200.00")
    //! i makechange(current, "ushy", "200.00")
    //! i makechange(current, "ushh", "500.00")
    //! i makechange(current, "ushw", "500.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "TreeOfLife")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Floraman
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Floraman (m),Floraman (f)")
    //! i makechange(current, "umdl", "buildings\\nightelf\\AncientOfLore\\AncientOfLore")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNAncientOfLore.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNAncientOfLore.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "6.00")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.70")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "150.00")
    //! i makechange(current, "ushy", "150.00")
    //! i makechange(current, "ushh", "400.00")
    //! i makechange(current, "ushw", "400.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientOfLore")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Gigantes
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Gigantes (m),Gigantes (f)")
    //! i makechange(current, "umdl", "units\\nightelf\\MountainGiant\\MountainGiant")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMountainGiant.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNMountainGiant.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "3.000")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.34")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "30.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "75.00")
    //! i makechange(current, "ushy", "75.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "1.000")
    //! i makechange(current, "udp1", "0.490")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\Dryadmissile\\Dryadmissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "RockHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "MountainGiant")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Green Eagle
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Green Eagle (m),Green Eagle (f)")
    //! i makechange(current, "umdl", "buildings\\nightelf\\AncientOfWind\\AncientOfWind")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNAncientOfTheMoon.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNAncientOfTheMoon.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "3.20")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.70")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "150.00")
    //! i makechange(current, "ushy", "150.00")
    //! i makechange(current, "ushh", "400.00")
    //! i makechange(current, "ushw", "400.00")
    //tint stuff
    //! i makechange(current, "uclr", "150")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "150")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientOfWind")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Huorn
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Huorn (m),Huorn (f)")
    //! i makechange(current, "umdl", "buildings\\demon\\CorruptedAncientProtector\\CorruptedAncientProtector")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCorruptedAncientProtector.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNCorruptedAncientProtector.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "125.0")
    //! i makechange(current, "uwal", "125.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "80.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "310.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.80")
    //selection circle size
    //! i makechange(current, "ussc", "2.80")
    //! i makechange(current, "ushx", "125.00")
    //! i makechange(current, "ushy", "125.00")
    //! i makechange(current, "ushh", "300.00")
    //! i makechange(current, "ushw", "300.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientProtector")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Mandraga
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Mandraga (m),Mandraga (f)")
    //! i makechange(current, "umdl", "buildings\\demon\\CorruptedAncientofWar\\CorruptedAncientofWar")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCorruptedAncientOfWar.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNCorruptedAncientOfWar.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "6.00")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.70")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "200.00")
    //! i makechange(current, "ushy", "200.00")
    //! i makechange(current, "ushh", "500.00")
    //! i makechange(current, "ushw", "500.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.810")
    //! i makechange(current, "udp1", "0.590")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientOfWar")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Moonbeam
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Moonbeam (m),Moonbeam (f)")
    //! i makechange(current, "umdl", "buildings\\nightelf\\AncientOfWonder\\AncientOfWonder")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNAncientOfWonders.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNAncientOfWonders.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "3.20")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.70")
    //selection circle size
    //! i makechange(current, "ussc", "3.50")
    //! i makechange(current, "ushx", "150.00")
    //! i makechange(current, "ushy", "150.00")
    //! i makechange(current, "ushh", "400.00")
    //! i makechange(current, "ushw", "400.00")
    //tint stuff
    //! i makechange(current, "uclr", "200")
    //originally 150 for green
    //! i makechange(current, "uclg", "200")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.670")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientOfWonder")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Nordrassil
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Nordrassil (m),Nordrassil (f)")
    //! i makechange(current, "umdl", "buildings\\nightelf\\TreeofLife\\TreeofLife")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTreeOfAges.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTreeOfAges.blp")
    //unit abilities
    //! i makechange(current, "uabi", "Atol,AMI0,ATT0")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "6.00")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "200.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    //! i makechange(current, "uani", "Upgrade,First")
    //! i makechange(current, "uaap", "upgrade,first,large")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "4.75")
    //! i makechange(current, "ushx", "200.00")
    //! i makechange(current, "ushy", "200.00")
    //! i makechange(current, "ushh", "500.00")
    //! i makechange(current, "ushw", "500.00")
    //tint stuff
    //! i makechange(current, "uclr", "100")
    //originally 150 for green
    //! i makechange(current, "uclg", "150")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "TreeOfLife")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Quickbeam
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Quickbeam (m),Quickbeam (f)")
    //! i makechange(current, "umdl", "units\\nightelf\\Ent\\Ent")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNEnt.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNEnt.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "110.0")
    //! i makechange(current, "uwal", "110.0")
    //! i makechange(current, "udtm", "3.14")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", "1.50")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "100")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.533")
    //! i makechange(current, "udp1", "0.467")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AncientOfWind")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "hero")
    //! i upoi = upoi + 1

// Rosevine
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Rosevine (m),Rosevine (f)")
    //! i makechange(current, "umdl", "units\\other\\DalaranReject\\DalaranReject")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDalaranReject.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDalaranReject.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.80")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //tint stuff
    //! i makechange(current, "uclr", "200")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "SludgeMonster")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Treebeard
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Treebeard (m),Treebeard (f)")
    //! i makechange(current, "umdl", "TaurenEntGlowed.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTreant.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTreant.blp")
    //various art values
    //! i makechange(current, "uble", "0.30")
    //! i makechange(current, "ucbs", "0.590")
    //! i makechange(current, "ucpt", "0.680")
    //! i makechange(current, "urun", "240.0")
    //! i makechange(current, "uwal", "240.0")
    //! i makechange(current, "udtm", "3.14")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    ////! i makechange(current, "uani", "Upgrade,Second")
    ////! i makechange(current, "uaap", "upgrade,second,large")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.40")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.863")
    //! i makechange(current, "udp1", "0.467")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\Dryadmissile\\Dryadmissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "Cairne")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "300")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Yggdrasil
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", PLANT)
    //! i makechange(current, "properNames", "Yggdrasil (m),Yggdrasil (f)")
    //! i makechange(current, "umdl", "buildings\\nightelf\\TreeofLife\\TreeofLife")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTreeOfEternity.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNTreeOfEternity.blp")
    //unit abilities
    //! i makechange(current, "uabi", "Atol,AMI0,ATT0")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "6.00")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "200.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //alternate animations
    //! i makechange(current, "uani", "Upgrade,Second")
    //! i makechange(current, "uaap", "upgrade,second,large")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "4.75")
    //! i makechange(current, "ushx", "200.00")
    //! i makechange(current, "ushy", "200.00")
    //! i makechange(current, "ushh", "500.00")
    //! i makechange(current, "ushw", "500.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "100")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.600")
    //! i makechange(current, "udp1", "0.400")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "TreeOfLife")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "hero")
    //! i upoi = upoi + 1

// Slime
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", SLIME)
    //! i makechange(current, "properNames", "Slime (m),Slime (f)")
    //! i makechange(current, "umdl", "Slime.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNWaterElemental.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNWaterElemental.blp")
    //! i makechange(current, "usnd", "Murloc")
    //various art values
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "200.00")
    //! i makechange(current, "uwal", "200.00")
    //! i makechange(current, "udtm", "1.67")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "25.00")
    //! i makechange(current, "uisz", "0")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "70.00")
    //! i makechange(current, "ushw", "70.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //selection circle size
    //! i makechange(current, "ussc", ".9")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.000")
    //! i makechange(current, "udp1", "0.000")
    //collision size
    //! i makechange(current, "ucol", "16")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Ethereal")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodLightBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FireBallMissile\\FireBallMissile.mdl")
    //! i upoi = upoi + 1

// Blood Gill
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Blood Gill (m),Blood Gill (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\MurgulBloodGill\\MurgulBloodGill")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMurgulBloodGill.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.550")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.67")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //! i makechange(current, "ushx", "40.00")
    //! i makechange(current, "ushy", "40.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.600")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\MurgulMagicMissile\\MurgulMagicMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Murloc")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "small")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Clawster
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Clawster (m),Clawster (f)")
    //! i makechange(current, "umdl", "units\\creeps\\SpiderCrabCreep\\SpiderCrabCreep")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.550")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.00")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.35")
    //selection circle size
    //! i makechange(current, "ussc", "1.72")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Lobstrokk")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Digong
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Digong (m),Digong (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\DragonSeaTurtle\\DragonSeaTurtle")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "60.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.80")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "170.00")
    //! i makechange(current, "ushw", "170.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.660")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "GiantSeaTurtle")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Grakos
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Grakos (m),Grakos (f)")
    //! i makechange(current, "umdl", "units\\naga\\NagaRoyalGuard\\NagaRoyalGuard")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNNagaMyrmidonRoyalGuard.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.550")
    //! i makechange(current, "urun", "220.0")
    //! i makechange(current, "uwal", "220.0")
    //! i makechange(current, "udtm", "2.67")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.75")
    //! i makechange(current, "ushx", "90.00")
    //! i makechange(current, "ushy", "90.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.640")
    //! i makechange(current, "udp1", "0.360")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "NagaRoyalGuard")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Hydra
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Hydra (m),Hydra (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\Hydra\\Hydra")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGreenHydra.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.33")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "70.00")
    //! i makechange(current, "ulpx", "50.00")
    //! i makechange(current, "ulpy", "100.00")
    //! i makechange(current, "ulsz", "10.00")
    //! i makechange(current, "ulpz", "100.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.700")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\ChimaeraAcidMissile\\ChimaeraAcidMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "AzureDragon")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "siege")
    //! i upoi = upoi + 1

// King Squid
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "King Squid (m),King Squid (f)")
    //! i makechange(current, "umdl", "Kraken.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDalaranReject.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNDalaranReject.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.0")
    //! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.40")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //originally 150 for green
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\SteamTank\\SteamTankImpact.mdl")
    //attack range (change for melee only)
    //! i makechange(current, "ua1r", "300")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "SludgeMonster")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Murgul Mage
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Murgul Mage (m),Murgul Mage (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\MurgulShadowCaster\\MurgulShadowCaster")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMurgulShadowCaster.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.67")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "192")
    //! i makechange(current, "uclg", "192")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.600")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\MurgulMagicMissile\\MurgulMagicMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Murloc")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "small")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Poseidon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Poseidon (m),Poseidon (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\SeaGiant\\SeaGiant")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSeaGiant.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.750")
    //! i makechange(current, "ucpt", "0.400")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "3.34")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "200.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "40.00")
    //! i makechange(current, "ulpz", "200.00")
    //! i makechange(current, "uprw", "30.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.20")
    //selection circle size
    //! i makechange(current, "ussc", "3.00")
    //! i makechange(current, "ushx", "75.00")
    //! i makechange(current, "ushy", "75.00")
    //! i makechange(current, "ushh", "190.00")
    //! i makechange(current, "ushw", "190.00")
    //tint stuff
    //! i makechange(current, "uclr", "100")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "175")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Stone")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.560")
    //! i makechange(current, "udp1", "0.600")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "SeaGiant")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "250")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "hero")
    //! i upoi = upoi + 1

// Rogue Wave
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Rogue Wave (m),Rogue Wave (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\SeaElemental\\SeaElemental")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSeaElemental.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaElemental.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.50")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "9.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.60")
    //! i makechange(current, "ushx", "80.00")
    //! i makechange(current, "ushy", "80.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "150")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.470")
    //! i makechange(current, "udp1", "0.530")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\SeaElementalMissile\\SeaElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "WaterElemental")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Siren
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Siren (m),Siren (f)")
    //! i makechange(current, "umdl", "Units\\Naga\\NagaSiren\\NagaSiren")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSeaWitch.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.800")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "2.33")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "25.00")
    //! i makechange(current, "ulpy", "170.00")
    //! i makechange(current, "ulsz", "10.00")
    //! i makechange(current, "ulpz", "85.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.85")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\NecromancerMissile\\NecromancerMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "NagaSiren")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Sword Shark
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Sword Shark (m),Sword Shark (f)")
    //! i makechange(current, "umdl", "SharkPirate.mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSharkPirate.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "300.0")
    //! i makechange(current, "uwal", "300.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.75")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "ObsidianDestroyer")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "hero")
    //! i upoi = upoi + 1

// Tidecaller
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Tidecaller (m),Tidecaller (f)")
    //! i makechange(current, "umdl", "units\\creeps\\RevenantOfTheWaves\\RevenantOfTheWaves")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDeepLordRevenant.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSpiderCrab.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.500")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "6.00")
    ////! i makechange(current, "uept", "0")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.85")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Ethereal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.600")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Revenant")
    //unit movement type
    //! i makechange(current, "umvt", "hover")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Tortragon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Tortragon (m),Tortragon (f)")
    //! i makechange(current, "umdl", "Units\\Creeps\\SeaTurtleRange\\SeaTurtleRange")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleGreen.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleGreen.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.750")
    //! i makechange(current, "urun", "100.0")
    //! i makechange(current, "uwal", "100.0")
    //! i makechange(current, "udtm", "2.67")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "60.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "30.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "15.00")
    //! i makechange(current, "ulsz", "-15.00")
    //! i makechange(current, "ulpz", "10.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.80")
    //selection circle size
    //! i makechange(current, "ussc", "2.50")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "170.00")
    //! i makechange(current, "ushw", "170.00")
    //tint stuff
    //! i makechange(current, "uclr", "192")
    //! i makechange(current, "uclg", "192")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "GiantSeaTurtle")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Ursula
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", WATER)
    //! i makechange(current, "properNames", "Ursula (m),Ursula (f)")
    //! i makechange(current, "umdl", "units\\naga\\HeroNagaSeawitch\\HeroNagaSeawitch")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNNagaSeaWitch.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaElemental.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.400")
    //! i makechange(current, "ucpt", "0.670")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "1.50")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "30.00")
    //! i makechange(current, "uimz", "120.00")
    //! i makechange(current, "ulpx", "-12.00")
    //! i makechange(current, "ulpy", "100.00")
    //! i makechange(current, "ulsz", "30.00")
    //! i makechange(current, "ulpz", "130.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "2.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.540")
    //! i makechange(current, "udp1", "0.730")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\NagaArrowMissile\\NagaArrowMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "SeaWitch")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "275")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "small")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Boneslave
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Boneslave (m),Boneslave (f)")
    //! i makechange(current, "umdl", "units\\creeps\\SkeletonOrc\\SkeletonOrc")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSkeletalOrc.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "180.0")
    //! i makechange(current, "uwal", "180.0")
    //! i makechange(current, "udtm", "5.03")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.440")
    //! i makechange(current, "udp1", "0.560")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Skeleton")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "small")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Crypt Spider
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Crypt Spider (m),Crypt Spider (f)")
    //! i makechange(current, "umdl", "units\\undead\\CryptFiend\\CryptFiend")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCryptFiend.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "180.0")
    //! i makechange(current, "uwal", "180.0")
    //! i makechange(current, "udtm", "3.04")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "60.00")
    //! i makechange(current, "umxr", "60.00")
    //orientation
    //! i makechange(current, "uori", "5")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "100.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.90")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //! i makechange(current, "ushx", "100.00")
    //! i makechange(current, "ushy", "100.00")
    //! i makechange(current, "ushh", "240.00")
    //! i makechange(current, "ushw", "240.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.360")
    //! i makechange(current, "udp1", "0.640")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\CryptFiendMissile\\CryptFiendMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumSlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "CryptFiend")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Deadbow
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Deadbow (m),Deadbow (f)")
    //! i makechange(current, "umdl", "units\\creeps\\SkeletonArcher\\SkeletonArcher")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSkeletonArcher.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "180.0")
    //! i makechange(current, "uwal", "180.0")
    //! i makechange(current, "udtm", "5.03")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "10.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "-11.00")
    //! i makechange(current, "ulpy", "74.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.700")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\Arrow\\ArrowMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumSlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Skeleton")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "pierce")
    //! i upoi = upoi + 1

// Deadnite
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Deadnite (m),Deadnite (f)")
    //! i makechange(current, "umdl", "units\\undead\\Skeleton\\Skeleton")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSkeletonWarrior.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "180.0")
    //! i makechange(current, "uwal", "180.0")
    //! i makechange(current, "udtm", "5.03")
    //! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "1.15")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.440")
    //! i makechange(current, "udp1", "0.560")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalMediumSlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Skeleton")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Dead Noble
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Dead Noble (m),Dead Noble (f)")
    //! i makechange(current, "umdl", "units\\undead\\HeroDeathKnight\\HeroDeathKnight")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHeroDeathKnight.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "1.008")
    //! i makechange(current, "ucpt", "0.452")
    //! i makechange(current, "urun", "380.0")
    //! i makechange(current, "uwal", "380.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "45.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "4")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "-20.00")
    //! i makechange(current, "ulpy", "60.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "76.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.85")
    //! i makechange(current, "ushx", "75.00")
    //! i makechange(current, "ushy", "75.00")
    //! i makechange(current, "ushh", "200.00")
    //! i makechange(current, "ushw", "200.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Metal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.410")
    //! i makechange(current, "udp1", "0.560")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavySlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroDeathKnight")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "hero")
    //! i makechange(current, "ua1t", "hero")
    //! i upoi = upoi + 1

// Foxfire
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Foxfire (m),Foxfire (f)")
    //! i makechange(current, "umdl", "units\\creeps\\VoidWalker\\VoidWalker")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNVoidWalker.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    //! i makechange(current, "uble", "0.30")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.67")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "80.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "70.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "1.20")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "130.00")
    //! i makechange(current, "ushw", "130.00")
    //tint stuff
    //! i makechange(current, "uclr", "0")
    //! i makechange(current, "uclg", "0")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Ethereal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\VoidWalkerMissile\\VoidWalkerMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //movement type
    //! i makechange(current, "umvt", "hover")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "ObsidianDestroyer")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "270")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Hork
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Hork (m),Hork (f)")
    //! i makechange(current, "umdl", "units\\undead\\Ghoul\\Ghoul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGhoul.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "220.0")
    //! i makechange(current, "uwal", "220.0")
    //! i makechange(current, "udtm", "1.67")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.440")
    //! i makechange(current, "udp1", "0.390")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Ghoul")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Inverzon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Inverzon (m),Inverzon (f)")
    //! i makechange(current, "umdl", "units\\other\\DalaranMutant\\DalaranMutant")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNDalaranMutant.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "150.0")
    //! i makechange(current, "uwal", "150.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.75")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.440")
    //! i makechange(current, "udp1", "0.390")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "Zombie")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "255")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Mad Spirit
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Mad Spirit (m),Mad Spirit (f)")
    //! i makechange(current, "umdl", "units\\undead\\Shade\\Shade")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNShade.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    //! i makechange(current, "uble", "1.50")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.67")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "80.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "70.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "1.20")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "130.00")
    //! i makechange(current, "ushw", "130.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Ethereal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.700")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\VoidWalkerMissile\\VoidWalkerMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //movement type
    //! i makechange(current, "umvt", "hover")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Shade")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "280")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Mummy
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Mummy (m),Mummy (f)")
    //! i makechange(current, "umdl", "units\\creeps\\Zombie\\Zombie")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNZombie.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.000")
    //! i makechange(current, "urun", "150.0")
    //! i makechange(current, "uwal", "150.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.15")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "140.00")
    //! i makechange(current, "ushw", "140.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.300")
    //! i makechange(current, "udp1", "0.300")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodMediumBash")
    //collision size
    //! i makechange(current, "ucol", "31.00")
    //unit sound
    //! i makechange(current, "usnd", "Zombie")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "255")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "normal")
    //! i upoi = upoi + 1

// Servant
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_MELEE, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Servant (m),Servant (f)")
    //! i makechange(current, "umdl", "units\\undead\\Abomination\\Abomination")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNAbomination.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    //! i makechange(current, "uble", "0.30")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.300")
    //! i makechange(current, "urun", "210.0")
    //! i makechange(current, "uwal", "210.0")
    //! i makechange(current, "udtm", "2.17")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "50.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "1")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "0.90")
    //selection circle size
    //! i makechange(current, "ussc", "2.10")
    //! i makechange(current, "ushx", "95.00")
    //! i makechange(current, "ushy", "95.00")
    //! i makechange(current, "ushh", "230.00")
    //! i makechange(current, "ushw", "230.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "1.170")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\WaterElementalMissile\\WaterElementalMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "MetalHeavyChop")
    //collision size
    //! i makechange(current, "ucol", "48.00")
    //unit sound
    //! i makechange(current, "usnd", "Abomination")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "255")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "hero")
    //! i upoi = upoi + 1

// Skelemage
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Skelemage (m),Skelemage (f)")
    //! i makechange(current, "umdl", "units\\undead\\SkeletonMage\\SkeletonMage")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNSkeletonMage.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    ////! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.510")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "180.0")
    //! i makechange(current, "uwal", "180.0")
    //! i makechange(current, "udtm", "5.03")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "20.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "0")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "-10.00")
    //! i makechange(current, "ulpy", "75.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "70.00")
    //! i makechange(current, "uprw", "60.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.10")
    //selection circle size
    //! i makechange(current, "ussc", "1.10")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Wood")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.500")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\SkeletalMageMissile\\SkeletalMageMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalMediumSlice")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "Skeleton")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "medium")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Skullgon
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_FLYING, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Skullgon (m),Skullgon (f)")
    //! i makechange(current, "umdl", "units\\undead\\FrostWyrm\\FrostWyrm")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFrostWyrm.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    //! i makechange(current, "uble", "0.40")
    //! i makechange(current, "ucbs", "0.400")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "2.00")
    //! i makechange(current, "uept", "2")
    //! i makechange(current, "uerd", "100.00")
    //! i makechange(current, "umxp", "33.00")
    //! i makechange(current, "umxr", "25.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "0.00")
    //! i makechange(current, "ulpx", "115.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "-60.00")
    //! i makechange(current, "uprw", "61.00")
    //! i makechange(current, "uaap", "large")
    //flyers only
    //! i makechange(current, "uslz", "230.00")
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "2.25")
    //! i makechange(current, "ushx", "140.00")
    //! i makechange(current, "ushy", "140.00")
    //! i makechange(current, "ushh", "280.00")
    //! i makechange(current, "ushw", "280.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.550")
    //! i makechange(current, "udp1", "0.500")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\FrostWyrmMissile\\FrostWyrmMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //flyer heights
    //! i makechange(current, "umvh", "240.00")
    //! i makechange(current, "umvf", "90.00")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "FrostWyrm")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "260")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "large")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// Spooky
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "Spooky (m),Spooky (f)")
    //! i makechange(current, "umdl", "units\\creeps\\BansheeGhost\\BansheeGhost")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGhost.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "0.830")
    //! i makechange(current, "ucpt", "0.500")
    //! i makechange(current, "urun", "200.0")
    //! i makechange(current, "uwal", "200.0")
    //! i makechange(current, "udtm", "1.17")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "0.00")
    //! i makechange(current, "umxr", "0.00")
    //orientation
    //! i makechange(current, "uori", "2")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "60.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "60.00")
    //! i makechange(current, "uprw", "61.00")
    ////! i makechange(current, "uaap", "large")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.05")
    //selection circle size
    //! i makechange(current, "ussc", "1.00")
    //! i makechange(current, "ushx", "50.00")
    //! i makechange(current, "ushy", "50.00")
    //! i makechange(current, "ushh", "120.00")
    //! i makechange(current, "ushw", "120.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Ethereal")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.510")
    //! i makechange(current, "udp1", "0.560")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\BansheeMissile\\BansheeMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //movement type
    //! i makechange(current, "umvt", "hover")
    //collision size
    //! i makechange(current, "ucol", "16.00")
    //unit sound
    //! i makechange(current, "usnd", "Ghost")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "255")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1

// White King
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_RANGED, make_id(upoi))
    //! i makechange(current, "unam", ZOMBIE)
    //! i makechange(current, "properNames", "White King (m),White King (f)")
    //! i makechange(current, "umdl", "units\\undead\\HeroLich\\HeroLich")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNLichVersion2.blp")
    ////! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNSeaTurtleRed.blp")
    //various art values
    //! i makechange(current, "uble", "0.15")
    //! i makechange(current, "ucbs", "1.100")
    //! i makechange(current, "ucpt", "0.400")
    //! i makechange(current, "urun", "250.0")
    //! i makechange(current, "uwal", "250.0")
    //! i makechange(current, "udtm", "3.00")
    ////! i makechange(current, "uept", "4")
    //! i makechange(current, "uerd", "30.00")
    //! i makechange(current, "umxp", "10.00")
    //! i makechange(current, "umxr", "10.00")
    //orientation
    //! i makechange(current, "uori", "3")
    //! i makechange(current, "uisz", "0.00")
    //! i makechange(current, "uimz", "100.00")
    //! i makechange(current, "ulpx", "0.00")
    //! i makechange(current, "ulpy", "0.00")
    //! i makechange(current, "ulsz", "0.00")
    //! i makechange(current, "ulpz", "130.00")
    //! i makechange(current, "uprw", "60.00")
    //! i makechange(current, "uaap", "medium")
    ////! i makechange(current, "uslz", "230.00") flyers only
    //the scaling of the model
    //! i makechange(current, "usca", "1.00")
    //selection circle size
    //! i makechange(current, "ussc", "1.25")
    //! i makechange(current, "ushx", "60.00")
    //! i makechange(current, "ushy", "60.00")
    //! i makechange(current, "ushh", "160.00")
    //! i makechange(current, "ushw", "160.00")
    //tint stuff
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "255")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //backswing stuff
    //! i makechange(current, "ubs1", "0.540")
    //! i makechange(current, "udp1", "0.460")
    //the unit's projectile (ranged/flying only)
    //! i makechange(current, "ua1m", "Abilities\\Weapons\\LichMissile\\LichMissile.mdl")
    //attack range (change for melee only)
    ////! i makechange(current, "ua1r", "250.00")
    //what sound the unit makes when attacking (melee only)
    ////! i makechange(current, "ucs1", "MetalHeavyChop")
    //movement type
    //! i makechange(current, "umvt", "hover")
    //collision size
    //! i makechange(current, "ucol", "32.00")
    //unit sound
    //! i makechange(current, "usnd", "HeroLich")
    //point value - index
    //! i makechange(current, "upoi", "" .. upoi)
    //movement speed
    //! i makechange(current, "umvs", "265")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "small")
    //! i makechange(current, "ua1t", "magic")
    //! i upoi = upoi + 1


//! endexternalblock


