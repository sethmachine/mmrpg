//! externalblock extension=lua ObjectMerger $FILENAME$
	//item ids
    //! i ATTACK_ITEM_ID = "ratc"
    //! i CUSTOM_ID1 = "i"
	//item ability ids
	//id for bonus attack damage
	//! i ATTACK_ABIL_ID = "AItc"
	//id for bonus health
	//! i HP_ABIL_ID = "AIlf"
	//id for bonus armor
	//! i ARMOR_ABIL_ID = "AId2"
	//! i CUSTOM_ID2 = "z"
	//! i upoi = 0
	//! i upoi2 = 0
    //use this function to make each custom object id
    //based on the unit point value (upoi)
    //! i function make_id(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "00" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. "0" .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end
	
	//! i function add(value, basedigits, result = "")
		//! i if value == "" then
			//! i value = "0"
		//! i end
		//! i if value[-1] != baseDigits[-1] then
			//! i next_digit = baseDigits.find(value[-1]) + 1
			//! i return value[:-1] + baseDigits[next_digit] + result
		//! i else
			//! i return add(value[:-1], baseDigits, result + "0")
		//! i end
	//! i end
	//******************************
	// Attack Constants ************
	//******************************
	//total damage abilities
	//! i ATTACK_TOTAL = 50
	//! i ATTACK_ABIL_ID = "AItc"
	//! i ATTACK_anam = "Damage "
	//! i ATTACK_ids = {}
	//! i ATTACK_bonus = {}
	//*********************
	// Attack Abilities ***
	//*********************
	//! i for i=1, ATTACK_TOTAL do
		//! i damage = "" .. i
		//! i name = ATTACK_anam .. damage
		//! i ATTACK_bonus[i] = damage
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i ATTACK_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(ATTACK_ABIL_ID, abilId)
		//! i makechange(current, 'Iatt', '1', damage)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	//******************************
	// Armor Constants *************
	//******************************
	//total damage abilities
	//! i ARMOR_TOTAL = 30
	//! i ARMOR_ABIL_ID = "AId2"
	//! i ARMOR_anam = "Armor "
	//! i ARMOR_ids = {}
	//! i ARMOR_bonus = {}
	//*********************
	// Armor Abilities ****
	//*********************
	//! i for i=1, ARMOR_TOTAL do
		//! i damage = "" .. i
		//! i name = ARMOR_anam .. damage
		//! i ARMOR_bonus[i] = damage
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i ARMOR_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(ARMOR_ABIL_ID, abilId)
		//! i makechange(current, 'Idef', '1', damage)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	//******************************
	// HP Constants ****************
	//******************************
	//total damage abilities
	//! i HP_TOTAL = 30
	//! i HP_ABIL_ID = "AIlf"
	//! i HP_anam = "HP "
	//! i HP_ids = {}
	//! i HP_bonus = {}
	//*********************
	// HP Abilities ****
	//*********************
	//! i for i=1, HP_TOTAL do
		//! i bonus = "" .. (i * 10)
		//! i name = HP_anam .. bonus
		//! i HP_bonus[i] = bonus
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i HP_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(HP_ABIL_ID, abilId)
		//! i makechange(current, 'Ilif', '1', bonus)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	//******************************
	// MANA Constants **************
	//******************************
	//total abilities of this type
	//! i MANA_TOTAL = 50
	//! i MANA_ABIL_ID = "AImb"
	//! i MANA_anam = "Mana "
	//! i MANA_ids = {}
	//! i MANA_bonus = {}
	//*********************
	// Mana Abilities ****
	//*********************
	//! i for i=1, MANA_TOTAL do
		//! i bonus = "" .. (i * 25)
		//! i name = MANA_anam .. bonus
		//! i MANA_bonus[i] = bonus
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i MANA_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(MANA_ABIL_ID, abilId)
		//! i makechange(current, 'Iman', '1', bonus)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	//******************************
	// Intelligence Constants ******
	//******************************
	//total abilities of this type
	//! i INTELLIGENCE_TOTAL = 40
	//! i INTELLIGENCE_ABIL_ID = "AIi1"
	//! i INTELLIGENCE_anam = "Intelligence "
	//! i INTELLIGENCE_ids = {}
	//! i INTELLIGENCE_bonus = {}
	//***************************
	// Intelligence Abilities ***
	//***************************
	//! i for i=1, INTELLIGENCE_TOTAL do
		//! i bonus = "" .. (i * 1)
		//! i name = INTELLIGENCE_anam .. bonus
		//! i INTELLIGENCE_bonus[i] = bonus
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i INTELLIGENCE_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(INTELLIGENCE_ABIL_ID, abilId)
		//! i makechange(current, 'Iint', '1', bonus)
		//! i makechange(current, 'Iagi', '1', "0")
		//! i makechange(current, 'Istr', '1', "0")
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	//******************************
	// AGILITY Constants ***********
	//******************************
	//total abilities of this type
	//! i AGILITY_TOTAL = 40
	//! i AGILITY_ABIL_ID = "AIi1"
	//! i AGILITY_anam = "Agility "
	//! i AGILITY_ids = {}
	//! i AGILITY_bonus = {}
	//***************************
	// AGILITY Abilities ********
	//***************************
	//! i for i=1, AGILITY_TOTAL do
		//! i bonus = "" .. (i * 1)
		//! i name = AGILITY_anam .. bonus
		//! i AGILITY_bonus[i] = bonus
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i AGILITY_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(AGILITY_ABIL_ID, abilId)
		//! i makechange(current, 'Iint', '1', "0")
		//! i makechange(current, 'Iagi', '1', bonus)
		//! i makechange(current, 'Istr', '1', "0")
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	//******************************
	// STRENGTH Constants **********
	//******************************
	//total abilities of this type
	//! i STRENGTH_TOTAL = 40
	//! i STRENGTH_ABIL_ID = "AIi1"
	//! i STRENGTH_anam = "Strength "
	//! i STRENGTH_ids = {}
	//! i STRENGTH_bonus = {}
	//***************************
	// STRENGTH Abilities ***
	//***************************
	//! i for i=1, STRENGTH_TOTAL do
		//! i bonus = "" .. (i * 1)
		//! i name = STRENGTH_anam .. bonus
		//! i STRENGTH_bonus[i] = bonus
		//make the ability
		//! i abilId = make_id(CUSTOM_ID2, upoi2)
		//! i STRENGTH_ids[i] = abilId
		//! i setobjecttype("abilities")
		//! i createobject(STRENGTH_ABIL_ID, abilId)
		//! i makechange(current, 'Iint', '1', "0")
		//! i makechange(current, 'Iagi', '1', "0")
		//! i makechange(current, 'Istr', '1', bonus)
		//! i makechange(current, 'aite', AITE)
		//! i makechange(current, 'anam', name)
		//! i makechange(current, 'ansf', "")
		//! i upoi2 = upoi2 + 1
	//! i end
	
	//******************************
	// Sword Constants *************
	//******************************
	//total health potions
	//! i SWORD_TOTAL = 30
	//base gold cost
	//! i SWORD_igol = 100
	//icons
	//! i SWORD_iico = "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp"
	//models
	//! i SWORD_ifil = "SteelMelee_v2.mdx"
	//names
	//! i SWORD_ides = "Boosts attack damage"
	//! i SWORD_unam = "Basic Sword"
	//*********************
	// Sword **************
	//*********************
	//! i for i=1, SWORD_TOTAL do
		//make the item
		//! i damage = "" .. ATTACK_bonus[i]
		//! i name = SWORD_unam .. " +" .. damage
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(ATTACK_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', ATTACK_ids[i])
		//! i makechange(current, 'iico', SWORD_iico)
		//! i makechange(current, 'ifil', SWORD_ifil)
		//! i makechange(current, 'igol', "" .. (SWORD_igol * i))
		//! i makechange(current, 'ides', SWORD_ides)
		//! i makechange(current, 'unam', name)
		//! i makechange(current, 'utip', "Purchase " .. name)
		//! i makechange(current, 'utub', "Increases attack damage by " .. damage .. " when worn.")
		//! i upoi = upoi + 1
	//! i end
	//******************************
	// Leather Armor ***************
	//******************************
	//total items of this type
	//! i LEATHER_TOTAL = 30
	//base gold cost
	//! i LEATHER_igol = 200
	//icons
	//! i LEATHER_iico = "ReplaceableTextures\\CommandButtons\\BTNLeatherUpgradeOne.blp"
	//models
	//! i LEATHER_ifil = "LeatherUpgradeOne_v2.mdx"
	//names
	//! i LEATHER_ides = "Increases armor and health."
	//! i LEATHER_unam = "Leather Armor"
	//*********************
	// Leather Armor ******
	//*********************
	//! i for i=1, LEATHER_TOTAL do
		//make the item
		//! i bonus_1 = "" .. ARMOR_bonus[i]
		//! i bonus_2 = "" .. HP_bonus[i]
		//! i name = LEATHER_unam .. " +" .. i
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(ATTACK_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', ARMOR_ids[i] .. "," .. HP_ids[i])
		//! i makechange(current, 'iico', LEATHER_iico)
		//! i makechange(current, 'ifil', LEATHER_ifil)
		//! i makechange(current, 'igol', "" .. (LEATHER_igol * i))
		//! i makechange(current, 'ides', LEATHER_ides)
		//! i makechange(current, 'unam', name)
		//! i makechange(current, 'utip', "Purchase " .. name)
		//! i makechange(current, 'utub', "Increases armor by " .. bonus_1 .. " and health by ".. bonus_2 .. " when worn.")
		//! i upoi = upoi + 1
	//! i end
	//******************************
	// Mindstaff *******************
	//******************************
	//total items of this type
	//! i STAFF_TOTAL = 30
	//base gold cost
	//! i STAFF_igol = 175
	//icons
	//! i STAFF_iico = "ReplaceableTextures\\CommandButtons\\BTNBrilliance.blp"
	//models
	//! i STAFF_ifil = "Brilliance_v2.mdx"
	//names
	//! i STAFF_ides = "Increases intelligence and mana."
	//! i STAFF_unam = "Mind Staff"
	//*********************
	// Mindstaff **********
	//*********************
	//! i for i=1, STAFF_TOTAL do
		//make the item
		//! i bonus_1 = "" .. MANA_bonus[i]
		//! i bonus_2 = "" .. INTELLIGENCE_bonus[i]
		//! i name = STAFF_unam .. " +" .. i
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(ATTACK_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', MANA_ids[i] .. "," .. INTELLIGENCE_ids[i])
		//! i makechange(current, 'iico', STAFF_iico)
		//! i makechange(current, 'ifil', STAFF_ifil)
		//! i makechange(current, 'igol', "" .. (STAFF_igol * i))
		//! i makechange(current, 'ides', STAFF_ides)
		//! i makechange(current, 'unam', name)
		//! i makechange(current, 'utip', "Purchase " .. name)
		//! i makechange(current, 'utub', "Increases mana by " .. bonus_1 .. " and intelligence by ".. bonus_2 .. " when worn.")
		//! i upoi = upoi + 1
	//! i end
	//******************************
	// Circlet *********************
	//******************************
	//total items of this type
	//! i CIRCLET_TOTAL = 30
	//base gold cost
	//! i CIRCLET_igol = 250
	//icons
	//! i CIRCLET_iico = "ReplaceableTextures\\CommandButtons\\BTNCirclet.blp"
	//models
	//! i CIRCLET_ifil = "Circlet_v2.mdx"
	//names
	//! i CIRCLET_ides = "Increases strength, defense, and intelligence."
	//! i CIRCLET_unam = "Greenstone Circlet"
	//*********************
	// Circlet ************
	//*********************
	//! i for i=1, CIRCLET_TOTAL do
		//make the item
		//! i bonus_1 = "" .. STRENGTH_bonus[i]
		//! i bonus_2 = "" .. AGILITY_bonus[i]
		//! i bonus_3 = "" .. INTELLIGENCE_bonus[i]
		//! i name = CIRCLET_unam .. " +" .. i
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(ATTACK_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', STRENGTH_ids[i] .. "," .. INTELLIGENCE_ids[i] .. "," .. AGILITY_ids[i])
		//! i makechange(current, 'iico', CIRCLET_iico)
		//! i makechange(current, 'ifil', CIRCLET_ifil)
		//! i makechange(current, 'igol', "" .. (CIRCLET_igol * i))
		//! i makechange(current, 'ides', CIRCLET_ides)
		//! i makechange(current, 'unam', name)
		//! i makechange(current, 'utip', "Purchase " .. name)
		//! i makechange(current, 'utub', "Increases strength, defense, and intelligence by " .. bonus_1 .. " when worn.")
		//! i upoi = upoi + 1
	//! i end
	//******************************
	// War Axe *********************
	//******************************
	//total items of this type
	//! i AXE_TOTAL = 30
	//base gold cost
	//! i AXE_igol = 250
	//icons
	//! i AXE_iico = "ReplaceableTextures\CommandButtons\BTNOrcMeleeUpOne.blp"
	//models
	//! i AXE_ifil = "AXE_v2.mdx"
	//names
	//! i AXE_ides = "Increases strength and damage."
	//! i AXE_unam = "War Axe"
	//*********************
	// AXE ************
	//*********************
	//! i for i=1, AXE_TOTAL do
		//make the item
		//! i bonus_1 = "" .. STRENGTH_bonus[i]
		//! i bonus_2 = "" .. AGILITY_bonus[i]
		//! i bonus_3 = "" .. INTELLIGENCE_bonus[i]
		//! i name = AXE_unam .. " +" .. i
		//! i setobjecttype("items")
		//! i itemId = make_id(CUSTOM_ID1, upoi)
		//! i createobject(ATTACK_ITEM_ID, itemId)
		//! i makechange(current, 'iabi', STRENGTH_ids[i] .. "," .. INTELLIGENCE_ids[i] .. "," .. AGILITY_ids[i])
		//! i makechange(current, 'iico', AXE_iico)
		//! i makechange(current, 'ifil', AXE_ifil)
		//! i makechange(current, 'igol', "" .. (AXE_igol * i))
		//! i makechange(current, 'ides', AXE_ides)
		//! i makechange(current, 'unam', name)
		//! i makechange(current, 'utip', "Purchase " .. name)
		//! i makechange(current, 'utub', "Increases strength, defense, and intelligence by " .. bonus_1 .. " when worn.")
		//! i upoi = upoi + 1
	//! i end
//! endexternalblock
