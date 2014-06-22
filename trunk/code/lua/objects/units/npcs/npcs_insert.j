//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ NPC ***************************
    //********************************************
    //! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    //! i NPC_CONS = 300
    //! i heroBaseId = "Hpal"
    //! i vendorBaseId = "nhem"
    //ids for the dummy NPC and dummy vendor
    //! i dummyHeroId = "N000"
    //! i dummyVendorId = "n000"
    //! i heroId = "N000"
    //! i vendorId = "n000"
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
    //! i upoi = 0
	
	//! i function add(value, result)
		//! i if value == "" then
			//! i value = "0"
		//! i end
		//! i local lastValue = string.sub(value, string.len(value), string.len(value))
		//! i local lastBase = string.sub(BASE_62, string.len(BASE_62), string.len(BASE_62))
		//! i if lastValue ~= lastBase then
			//! i local nextBase = string.sub(BASE_62, string.find(BASE_62, lastValue) + 1, string.find(BASE_62, lastValue) + 1)
			//! i return string.sub(value, 1, string.len(value) - 1) .. nextBase .. result
		//! i else
			//! i return add(string.sub(value, 1, string.len(value) - 1), result .. "0")
		//! i end
	//! i end   
    //********************************************
    //************ Dummy NPC *********************
    //********************************************
    //! i setobjecttype("units")        
    //! i createobject(heroBaseId, dummyHeroId)
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
    //! i createobject(vendorBaseId, dummyVendorId)
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "ucam", "0")
    //! i makechange(current, "uspe", "1")
    //! i makechange(current, "unam", "Dummy Vendor")
    //! i makechange(current, "unsf", "")
    
        //***************
    // Generic Breeder
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject(dummyVendorId, vendorId)
    //! i makechange(current, "unam", "Monster Breeder")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMedivh.blp")
    //! i makechange(current, "umdl", "units\\creeps\\Medivh\\Medivh")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // Generic Farmer
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject(dummyVendorId, vendorId)
    //! i makechange(current, "unam", "Monster Farmer")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNPeasant.blp")
    //! i makechange(current, "umdl", "units\\human\\Peasant\\Peasant")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // Generic Librarian
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject(dummyVendorId, vendorId)
    //! i makechange(current, "unam", "Librarian")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBloodElfPeasant.blp")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // Generic Priest
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject(dummyVendorId, vendorId)
    //! i makechange(current, "unam", "Priest")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNPriest.blp")
    //! i makechange(current, "umdl", "units\\human\\Priest\\Priest")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // Isaiah
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject(dummyVendorId, vendorId)
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFemaleElfVillager.blp")
    //! i makechange(current, "umdl", "units\\critters\\ElfVillagerWoman\\ElfVillagerWoman")
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "125")
    //! i makechange(current, "uclb", "75")
    //! i makechange(current, "unam", "Isaiah")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // Al-Jernan's Tombstone
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject("nmgv", vendorId)
    //! i makechange(current, "ucam", "0")
    //! i makechange(current, "uspe", "1")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGraveyard.blp")
    //! i makechange(current, "umdl", "Doodads\\LordaeronSummer\\Props\\Grave\\Grave")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
	//! i makechange(current, "unsf", "(Al-Jernan)")
    //! i makechange(current, "unam", "Tombstone")
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
    //***************
    // Player's Item Vault
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject("nmgv", vendorId)
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
    //***************
    // General Old-Oak
    //***************
    //! i setobjecttype("units")
	//! i heroId = add(heroId, "")
    //! i createobject(dummyHeroId, heroId)
    //! i makechange(current, "unam", "Monster General")
    //! i makechange(current, "properNames", "Old-Oak")
    //! i makechange(current, "umdl", "units\\human\\Uther\\Uther")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // Royal Chaplain
    //***************
    //! i setobjecttype("units")
	//! i vendorId = add(vendorId, "")
    //! i createobject(dummyVendorId, vendorId)
    //! i makechange(current, "unam", "Royal Chaplain Ricard")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNBanditMage.blp")
    //! i makechange(current, "umdl", "units\\creeps\\HumanMage\\HumanMage")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1
    //***************
    // The King
    //***************
    //! i setobjecttype("units")
	//! i heroId = add(heroId, "")
    //! i createobject(dummyHeroId, heroId)
    //! i makechange(current, "unam", "King")
    //! i makechange(current, "properNames", "The King")
    //! i makechange(current, "umdl", "units\\human\\HeroPaladinBoss2\\HeroPaladinBoss2")
    //! i makechange(current, "upoi", (upoi + NPC_CONS) .. "")
    //! i upoi = upoi + 1

//! endexternalblock

