//! externalblock extension=lua ObjectMerger $FILENAME$
	//item ids
    //! i BASE_ITEM_ID = "pghe"
    //! i CUSTOM_ID1 = "IP"
	//item ability ids
	//! i BASE_ABIL_ID = "Arej"
	//! i CUSTOM_ID2 = "ap"
	//! i ARAN = "200.00"
	//duration
	//! i ADUR = "10.00"
	//! i AITE = "1"
	//! i ACDN = "5.0"
    //charges
    //! i CHARGES = 3
	//! i upoi = 0
    //use this function to make each custom object id
    //based on the unit point value (upoi)
    //! i function make_id(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "0" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end
	//******************************
	// Health Potion Constants *****
	//******************************
	//total health potions
	//! i HEALTH_TOTAL = 4
	//amount healed
	//! i HEALTH_Rej1 = {"75.0", "150.00", "300.00", "600.00"}
	//mana cost - 0 for now
	//! i HEALTH_amcs = "0"
	//gold cost
	//! i HEALTH_igol = {"30", "75", "225", "450"}
	//icons
	//! i HEALTH_iico = {"ReplaceableTextures\\CommandButtons\\BTNPotionGreenSmall.blp", "BTNPotionBlueSmall2.blp", "ReplaceableTextures\\CommandButtons\\BTNPotionGreen.blp", "BTN_Potion_BigGreen.blp"}
	//models
	//! i HEALTH_ifil = {"Item_Potion_TinyGreen_v2.mdx", "Item_Potion_SmallGreen_v2.mdx", "Item_Potion_BigGreen_v2.mdx", "Item_Potion_LargeGreen_v2.mdx"}
	//names
	//! i HEALTH_ides = "Restores lost hit points over time."
	//! i HEALTH_unam = {"Herbwater", "Lovewater", "Earthwater", "Sunwater"}
	
	//*********************
	// Health Potions *****
	//*********************
	//! i for i=1, HEALTH_TOTAL do
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi)
		//! i setobjecttype("abilities")
		//! i createobject(BASE_ABIL_ID, abilId)
		//! i makechange(current, 'Rej1', '1', HEALTH_Rej1[i])
		//! i makechange(current, 'aran', '1', ARAN)
		//! i makechange(current, 'acdn', '1', ACDN)
		//! i makechange(current, 'ahdu', '1', ADUR)
		//! i makechange(current, 'adur', '1', ADUR)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'amcs', '1', HEALTH_AMCS)
		//! i makechange(current, 'anam', HEALTH_unam[i] .. " (" .. upoi .. ")")
		//make the item
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(BASE_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', abilId)
		//! i makechange(current, 'iico', HEALTH_iico[i])
		//! i makechange(current, 'ifil', HEALTH_ifil[i])
		//! i makechange(current, 'igol', HEALTH_igol[i])
		//! i makechange(current, 'iuse', CHARGES)
		//! i makechange(current, 'ides', HEALTH_ides)
		//! i makechange(current, 'unam', HEALTH_unam[i])
		//! i makechange(current, 'utip', "Purchase " .. HEALTH_unam[i])
		//! i makechange(current, 'utub', "Heals " .. HEALTH_Rej1[i] .. " hit points over " .. ADUR .. " seconds when used.")
		//! i makechange(current, 'ilev', "1")
		//! i upoi = upoi + 1
	//! i end
	
	//******************************
	// Mana Potion Constants *******
	//******************************
	//total MANA potions
	//! i MANA_TOTAL = 4
	//amount healed
	//! i MANA_Rej2 = {"75.00", "150.00", "300.00", "600.00"}
	//mana cost - 0 for now
	//! i MANA_amcs = "0"
	//gold cost
	//! i MANA_igol = {"60", "120", "240", "480"}
	//icons
	//! i MANA_iico = {"BTNPotionGreenSmall2.blp", "ReplaceableTextures\\CommandButtons\\BTNPotionBlueSmall.blp", "ReplaceableTextures\\CommandButtons\\BTNPotionBlue.blp", "ReplaceableTextures\\CommandButtons\\BTNPotionBlueBig.blp"}
	//models
	//! i MANA_ifil = {"Item_Potion_TinyBlue_v2.mdx", "Item_Potion_SmallBlue_v2.mdx", "Item_Potion_BigBlue_v2.mdx", "Item_Potion_LargeBlue_v2.mdx"}
	//names
	//! i MANA_ides = "Restores lost mana over time."
	//! i MANA_unam = {"Potion", "Elfwater", "Oceanwater", "Moonwater"}
	
	//*********************
	// MANA Potions *****
	//*********************
	//! i for i=1, MANA_TOTAL do
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi)
		//! i setobjecttype("abilities")
		//! i createobject(BASE_ABIL_ID, abilId)
		//! i makechange(current, 'Rej1', '1', "0")
		//! i makechange(current, 'Rej2', '1', MANA_Rej2[i])
		//! i makechange(current, 'aran', '1', ARAN)
		//! i makechange(current, 'acdn', '1', ACDN)
		//! i makechange(current, 'ahdu', '1', ADUR)
		//! i makechange(current, 'adur', '1', ADUR)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'amcs', '1', MANA_AMCS)
		//! i makechange(current, 'anam', MANA_unam[i] .. " (" .. upoi .. ")")
		//make the item
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(BASE_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', abilId)
		//! i makechange(current, 'iico', MANA_iico[i])
		//! i makechange(current, 'ifil', MANA_ifil[i])
		//! i makechange(current, 'igol', MANA_igol[i])
		//! i makechange(current, 'iuse', CHARGES)
		//! i makechange(current, 'ides', MANA_ides)
		//! i makechange(current, 'unam', MANA_unam[i])
		//! i makechange(current, 'utip', "Purchase " .. MANA_unam[i])
		//! i makechange(current, 'utub', "Restores " .. MANA_Rej2[i] .. " mana over " .. ADUR .. " seconds when used.")
		//! i makechange(current, 'ilev', "1")
		//! i upoi = upoi + 1
	//! i end

	//******************************
	// Restore Potion Constants ****
	//******************************
	//total MANA potions
	//! i RESTORE_TOTAL = 4
	//amount healed
	//! i RESTORE_Rej1 = {"50", "100", "200", "400"}
	//mana restored
	//! i RESTORE_Rej2 = {"50", "100", "200", "400"}
	//RESTORE cost - 0 for now
	//! i RESTORE_amcs = "0"
	//gold cost
	//! i RESTORE_igol = {"30", "150", "300", "600"}
	//icons
	//! i RESTORE_iico = {"ReplaceableTextures\\CommandButtons\\BTNMinorRejuvPotion.blp", "ReplaceableTextures\\CommandButtons\\BTNLesserRejuvPotion.blp", "ReplaceableTextures\\CommandButtons\\BTNRejuvPotion.blp", "ReplaceableTextures\\CommandButtons\\BTNGreaterRejuvPotion.blp"}
	//models
	//! i RESTORE_ifil = {"Item_Potion_TinyPurple_v2.mdx", "Item_Potion_SmallPurple_v2.mdx", "Item_Potion_BigPurple_v2.mdx", "Item_Potion_LargePurple_v2.mdx"}
	//names
	//! i RESTORE_ides = "Restores lost health and mana over time."
	//! i RESTORE_unam = {"Herb Dew", "Elf Dew", "Moon Dew", "World Dew"}
	
	//*********************
	// RESTORE Potions *****
	//*********************
	//! i for i=1, RESTORE_TOTAL do
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi)
		//! i setobjecttype("abilities")
		//! i createobject(BASE_ABIL_ID, abilId)
		//! i makechange(current, 'Rej1', '1', RESTORE_Rej1[i])
		//! i makechange(current, 'Rej2', '1', RESTORE_Rej2[i])
		//! i makechange(current, 'aran', '1', ARAN)
		//! i makechange(current, 'acdn', '1', ACDN)
		//! i makechange(current, 'ahdu', '1', ADUR)
		//! i makechange(current, 'adur', '1', ADUR)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'amcs', '1', RESTORE_AMCS)
		//! i makechange(current, 'anam', RESTORE_unam[i] .. " (" .. upoi .. ")")
		//make the item
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(BASE_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', abilId)
		//! i makechange(current, 'iico', RESTORE_iico[i])
		//! i makechange(current, 'ifil', RESTORE_ifil[i])
		//! i makechange(current, 'igol', RESTORE_igol[i])
		//! i makechange(current, 'iuse', CHARGES)
		//! i makechange(current, 'ides', RESTORE_ides)
		//! i makechange(current, 'unam', RESTORE_unam[i])
		//! i makechange(current, 'utip', "Purchase " .. RESTORE_unam[i])
		//! i makechange(current, 'utub', "Restores " .. RESTORE_Rej1[i] .. " health and " .. RESTORE_Rej2[i] .. " mana over " .. ADUR .. " seconds when used.")
		//! i makechange(current, 'ilev', "1")
		//! i upoi = upoi + 1
	//! i end
//! endexternalblock
