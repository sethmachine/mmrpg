//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ NPC ***************************
    //********************************************
    //base object for most NPC characters
    //! i BASE_ID = "Hpal"
    //for non-hero NPCs
    //! i BASE_ID2 = "nhem"
    //constant for detecting NPCS
    //! i NPC_CONS = 300
    //ids for the dummy NPC and dummy vendor
    //! i DUMMY_NPC = "N000"
    //! i DUMMY_VENDOR = "n000"
    //base damage for melee based monsters -- they do 5 base damage - always 1 less
    //! i MELEE_DMG = "10"
    //base attack speed for all monsters - Average
    //! i UA1C = "2.0"
    //base movement speed for all monsters - Average
    //! i UMVS = "300"
    //base maximum health for all monsters
    //! i UHPM = "250"
    //base maximum mana for all monsters
    //! i UMPI = "100"
    //base mana regen for all monsters
    //! i UMPR = "0.03"
    //base attributes for all monsters - each set to 1
    //! i AGI = "10"
    //! i INT = "10"
    //! i STR = "10"
    //base attribute growth - each set to 0 (growth managed by triggers)
    //! i AGIplus = "0"
    //! i INTplus = "0"
    //! i STRplus = "0"
    //primary attribute - does not do anything
    //! i UPRA = "STR"
    //priority - so it doesnt get attacked immediately
    //! i UPRI = "0"
    //index for each point value, incremented by 1 each time
    //! i upoi = 1
    //String for the custom object id
    //! i CUSTOM_ID1 = "N"
    //! i CUSTOM_ID2 = "n"
    //NPC Character Classes
    //! i CLASS_KING = "King"
    //! i CLASS_GENERAL = "Monster General"
    //Generic NPC names
    //! i PRIEST = "Priest"
    //! i FARMER = "Monster Farmer"
    //! i BREEDER = "Monster Breeder"
    //! i LIBRARIAN = "Librarian"
    //! i CHAPLAIN = "Royal Chaplain"
    //use this function to make each PC's custom object id
    //based on the unit point value (upoi)
    //! i function make_id(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "0" .. "0" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. "0" .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end
    
    //********************************************
    //************ Dummy NPC *********************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(BASE_ID, DUMMY_NPC)
    //! i makechange(current,"race", "Human") 
    //! i makechange(current, "heroAbilList", "")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "ua1b", MELEE_DMG)
    //! i makechange(current, "dice1", 1)
    //! i makechange(current, "sides1", "1")
    //! i makechange(current, "AGI", AGI)
    //! i makechange(current, "INT", INT)
    //! i makechange(current, "STR", STR)
    //! i makechange(current, "AGIplus", AGIplus)
    //! i makechange(current, "INTplus", INTplus)
    //! i makechange(current, "STRplus", STRplus)
    //! i makechange(current, "ufoo", "0")
    //! i makechange(current, "uhpm", UHPM)
    //! i makechange(current, "umpi", UMPI)
    //! i makechange(current, "umpr", UMPR)
    //! i makechange(current, "uawt", UAWT)
    //! i makechange(current, "upra", UPRA)
    

    //********************************************
    //************ Dummy Vendor ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID2, DUMMY_VENDOR)
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "ucam", "0")
    //! i makechange(current, "uspe", "1")
    //! i makechange(current, "unam", "Dummy Vendor")
    //! i makechange(current, "unsf", "")
    
    //***************
    // The King
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_NPC, make_id(CUSTOM_ID1, upoi))
    //! i makechange(current, "unam", CLASS_KING)
    //! i makechange(current, "properNames", "The King")
    //! i makechange(current, "umdl", "units\\human\\HeroPaladinBoss2\\HeroPaladinBoss2")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    //***************
    // General Old-Oak
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_NPC, make_id(CUSTOM_ID1, upoi))
    //! i makechange(current, "unam", CLASS_GENERAL)
    //! i makechange(current, "properNames", "Old-Oak")
    //! i makechange(current, "umdl", "units\\human\\Uther\\Uther")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    //***************
    // Generic Priest
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_VENDOR, make_id(CUSTOM_ID2, upoi))
    //! i makechange(current, "unam", PRIEST)
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNPriest.blp")
    //! i makechange(current, "umdl", "units\\human\\Priest\\Priest")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    //***************
    // Generic Farmer
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_VENDOR, make_id(CUSTOM_ID2, upoi))
    //! i makechange(current, "unam", FARMER)
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNPeasant.blp")
    //! i makechange(current, "umdl", "units\\human\\Peasant\\Peasant")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    //***************
    // Generic Breeder
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_VENDOR, make_id(CUSTOM_ID2, upoi))
    //! i makechange(current, "unam", BREEDER)
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMedivh.blp")
    //! i makechange(current, "umdl", "units\\creeps\\Medivh\\Medivh")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    //***************
    // Generic Librarian
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_VENDOR, make_id(CUSTOM_ID2, upoi))
    //! i makechange(current, "unam", LIBRARIAN)
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBloodElfPeasant.blp")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    //***************
    // Royal Chaplain
    //***************
    //! i setobjecttype("units")
    //! i createobject(DUMMY_VENDOR, make_id(CUSTOM_ID2, upoi))
    //! i makechange(current, "unam", CHAPLAIN)
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBanditMage.blp")
    //! i makechange(current, "umdl", "units\\creeps\\HumanMage\\HumanMage")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

    
    //***************
    // Player's Item Vault
    //***************
    //! i setobjecttype("units")
    //! i createobject("nmgv", make_id(CUSTOM_ID2, upoi))
    //! i makechange(current, "ucam", "0")
    //! i makechange(current, "uspe", "1")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "buildings\\human\\ArcaneVault\\ArcaneVault")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i makechange(current, "unam", "Item Vault")
    //the scaling of the model
    ////! i makechange(current, "usca", "0.65")
    //selection circle size
    ////! i makechange(current, "ussc", "1.30")
    ////! i makechange(current, "ushx", "15.00")
    ////! i makechange(current, "ushy", "15.00")
    ////! i makechange(current, "ushh", "30.00")
    ////! i makechange(current, "ushw", "30.00")
    ////! i makechange(current, "ucol", "16.00")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1 
//! endexternalblock
