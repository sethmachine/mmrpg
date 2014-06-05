//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ PC Constants ******************
    //********************************************
    //base object for all player characters, human paladin
    //! i BASE_ID = "Hpal"
    //ids for the dummy PC
    //! i DUMMY_PC = "P000"
    //base damage for melee based monsters -- they do 5 base damage - always 1 less
    //! i MELEE_DMG = "1"
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
    //sight of range for day, night
    //! i USID = "800"
    //! i USIN = "500"
    //primary attribute - does not do anything
    //! i UPRA = "AGI"
    //priority - so it doesnt get attacked immediately
    //! i UPRI = "0"
    //tooltip for reviving monsters
    //! i UAWT = "Your monster master will revive shortly in town.  You lose all gold and items!"
    //PC can't attack (yet)
    //! i UAEN = "0"
    //index for each point value, incremented by 1 each time
    //! i upoi = 1
    //String for the custom object id
    //! i CUSTOM_ID = "P"
    //class name
    //! i CLASS_NAME = "Monster Master"
    //use this function to make each PC's custom object id
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
    //************ Dummy PC **********************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(BASE_ID, DUMMY_PC)
    //! i makechange(current,"race", "Human") 
    //! i makechange(current,"ua1c", UA1C) 
    //! i makechange(current,"umvs", UMVS)
    //! i makechange(current, "heroAbilList", "")
    //! i makechange(current, "uabi", "AInv,Amve")
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
    //! i makechange(current, "uaen", UAEN)
    //sight of range for daytime
    //! i makechange(current, "usid", USID)
    //sight of range for nighttime
    //! i makechange(current, "usin", USIN)
    //priority of 0
    ////! i makechange(current, "upri", UPRI)
    //monster masters are not allowed to attack anyone!
    ////! i makechange(current, "uaen", "0")
    //***************
    // Male Monster Master
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_PC, make_id(upoi))
    //! i makechange(current, "unam", CLASS_NAME)
    //! i makechange(current, "properNames", "Terry,Coby,Kameha")
    //! i makechange(current, "umdl", "RPGHeroVillager.mdx")
    //! i makechange(current, "uico", "BTNMonsterMaster.blp")
    //! i makechange(current, "ussi", "BTNMonsterMaster.blp")
    //! i makechange(current, "usnd", "Captain")
    //the scaling of the model
    //! i makechange(current, "usca", "0.75")
    //selection circle size
    //! i makechange(current, "ussc", "1.1")
    //shadow
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "100.00")
    //! i makechange(current, "ushw", "100.00")
    //collision size
    //! i makechange(current, "ucol", "20")
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1

    //***************
    // Female Monster Master
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_PC, make_id(upoi))
    //! i makechange(current, "unam", CLASS_NAME)
    //! i makechange(current, "properNames", "Milayou,Tara,Yuna,Helen")
    //! i makechange(current, "umdl", "BELasher.Mdx")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp")
    //! i makechange(current, "ussi", "ReplaceableTextures\\CommandButtons\\BTNHighElvenArcher.blp")
    //! i makechange(current, "usnd", "Jaina")
    //the scaling of the model
    //! i makechange(current, "usca", "0.90")
    //selection circle size
    //! i makechange(current, "ussc", "1.40")
    //! i makechange(current, "ushx", "35.00")
    //! i makechange(current, "ushy", "35.00")
    //! i makechange(current, "ushh", "100.00")
    //! i makechange(current, "ushw", "100.00")
    //collision size
    //! i makechange(current, "ucol", "18")
    //movement speed
    //! i makechange(current, "umvs", "270")
    //what hitting the unit sounds like
    //! i makechange(current, "uarm", "Flesh")
    //what sound the unit makes when attacking (melee only)
    //! i makechange(current, "ucs1", "WoodHeavyBash")
    //the unit's armor type, e.g. "hero"
    //! i makechange(current, "udty", "none")
    //! i makechange(current, "ua1t", "hero")
    //the unit's projectile (ranged/flying only)
    ////! i makechange(current, "ua1m", "Abilities\\Weapons\\FaerieDragonMissile\\FaerieDragonMissile.mdl")
    //! i upoi = upoi + 1
//! endexternalblock
