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
    
    //insert
//! endexternalblock
