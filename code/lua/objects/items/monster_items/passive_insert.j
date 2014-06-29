//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i abilId = 'z000'
	//! i itemId = 's000'
	//! i itemBaseId = 'ratc'
	
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
	
	//! i function write_item(unam, ides, ifil, iico, igol, i)
		//! i setobjecttype("items")
		//! i createobject(itemBaseId, itemId)
		//! i makechange(current, "ides", ides)
		//! i makechange(current, "ifil", ifil)
		//! i makechange(current, "iico", iico)
		//! i makechange(current, 'unam', unam .. " (+" .. i .. ")")
		//! i makechange(current, 'utip', "Purchase " .. unam)
		//! i makechange(current, 'igol', "" .. (igol * i))
		//! i makechange(current, 'ilev', "0")
		//! i itemId = add(itemId, "")
	//! i end
	
	//! i function write_abils(baseId, baseField, idArr, bonusArr, total, bonus)
		//! i for i=1, total do
			//! i idArr[i] = abilId
			//! i bonusArr[i] = bonus * i
			//! i setobjecttype("abilities")
			//! i createobject(baseId, abilId)
			//! i makechange(current, 'ansf', "(" .. (bonus * i) .. ")")
			//! i makechange(current, baseField, "1", "" .. (bonus * i))
			//! i makechange(current, 'aite', "1")
			//! i abilId = add(abilId, "")
		//! i end
	//! i end
	
	//***************
	// DAMAGE 
	//***************
	//! i DAMAGE_IDS = {}
	//! i DAMAGE_BONUS = {}
	//! i DAMAGE_ID = 'AItc'
	//! i write_abils(DAMAGE_ID, 'Iatt', DAMAGE_IDS, DAMAGE_BONUS, 100, 1)

	//***************
	// HEALTH 
	//***************
	//! i HEALTH_IDS = {}
	//! i HEALTH_BONUS = {}
	//! i HEALTH_ID = 'AIlf'
	//! i write_abils(HEALTH_ID, 'Ilif', HEALTH_IDS, HEALTH_BONUS, 100, 5)

	//***************
	// MANA 
	//***************
	//! i MANA_IDS = {}
	//! i MANA_BONUS = {}
	//! i MANA_ID = 'AImb'
	//! i write_abils(MANA_ID, 'Iman', MANA_IDS, MANA_BONUS, 100, 5)

	//***************
	// ARMOR 
	//***************
	//! i ARMOR_IDS = {}
	//! i ARMOR_BONUS = {}
	//! i ARMOR_ID = 'AId2'
	//! i write_abils(ARMOR_ID, 'Idef', ARMOR_IDS, ARMOR_BONUS, 100, 1)

	//***************
	// AGILITY (DEFENSE)
	//***************
	//! i AGI_IDS = {}
	//! i AGI_BONUS = {}
	//! i AGI_ID = 'AIa1'
	//! i write_abils(AGI_ID, 'Iagi', AGI_IDS, AGI_BONUS, 100, 1)

	//***************
	// STRENGTH
	//***************
	//! i STR_IDS = {}
	//! i STR_BONUS = {}
	//! i STR_ID = 'AIs1'
	//! i write_abils(STR_ID, 'Istr', STR_IDS, STR_BONUS, 100, 1)
	
	//***************
	// INTELLIGENCE
	//***************
	//! i INT_IDS = {}
	//! i INT_BONUS = {}
	//! i INT_ID = 'AIi1'
	//! i write_abils(INT_ID, 'Iint', INT_IDS, INT_BONUS, 100, 1)

	//***************
	// HEALTH REGENERATION
	//***************
	//! i HREGEN_IDS = {}
	//! i HREGEN_BONUS = {}
	//! i HREGEN_ID = 'Arel'
	//! i write_abils(HREGEN_ID, 'Ihpr', HREGEN_IDS, HREGEN_BONUS, 100, 1)

	//***************
	// MANA REGENERATION
	//***************
	//! i MREGEN_IDS = {}
	//! i MREGEN_BONUS = {}
	//! i MREGEN_ID = 'AIrm'
	//! i write_abils(MREGEN_ID, 'Imrp', MREGEN_IDS, MREGEN_BONUS, 100, 0.05)

	//***************
	// MOVEMENT SPEED
	//***************
	//! i MSPEED_IDS = {}
	//! i MSPEED_BONUS = {}
	//! i MSPEED_ID = 'AIms'
	//! i write_abils(MSPEED_ID, 'Imvb', MSPEED_IDS, MSPEED_BONUS, 25, 10)

	//***************
	// SIGHT RANGE
	//***************
	//! i SIGHT_IDS = {}
	//! i SIGHT_BONUS = {}
	//! i SIGHT_ID = 'AIsi'
	//! i write_abils(SIGHT_ID, 'Isib', SIGHT_IDS, SIGHT_BONUS, 10, 100)

	//***************
	// LIFE STEAL
	//***************
	//! i LSTEAL_IDS = {}
	//! i LSTEAL_BONUS = {}
	//! i LSTEAL_ID = 'AIva'
	//! i write_abils(LSTEAL_ID, 'Ivam', LSTEAL_IDS, LSTEAL_BONUS, 100, 0.03)

	//***************
	// ATTACK SPEED
	//***************
	//! i ASPEED_IDS = {}
	//! i ASPEED_BONUS = {}
	//! i ASPEED_ID = 'AIsx'
	//! i write_abils(ASPEED_ID, 'Isx1', ASPEED_IDS, ASPEED_BONUS, 100, 0.03)

	//***************
	// EVASION
	//***************
	//! i EVASION_IDS = {}
	//! i EVASION_BONUS = {}
	//! i EVASION_ID = 'AIev'
	//! i write_abils(EVASION_ID, 'Eev1', EVASION_IDS, EVASION_BONUS, 25, 0.02)

	//***************
	// CRITICAL STRIKE
	//***************
	//! i CRIT_IDS = {}
	//! i CRIT_BONUS = {}
	//! i CRIT_ID = 'AIcs'
	//! i write_abils(CRIT_ID, 'Ocr1', CRIT_IDS, CRIT_BONUS, 8, 5)

	//***************
	// BASH
	//***************
	//! i BASH_IDS = {}
	//! i BASH_BONUS = {}
	//! i BASH_ID = 'AIbx'
	//! i write_abils(BASH_ID, 'Hbh3', BASH_IDS, BASH_BONUS, 20, 10)

	//***************
	// BERSERK
	//***************
	//! i BERSERK_IDS = {}
	//! i BERSERK_BONUS = {}
	//! i BERSERK_ID = 'AIxk'
	//! i write_abils(BERSERK_ID, 'bsk2', BERSERK_IDS, BERSERK_BONUS, 20, 0.10)
	
		//[[ Basic Sword
	//! i total = 30
	//! i igol = 100
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNSteelMelee.blp"
	//! i ifil = "SteelMelee_v2.mdx"
	//! i ides = "Increases attack damage."
	//! i unam = "Basic Sword"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. DAMAGE_BONUS[i]
		//! i itemBonusId1 = DAMAGE_IDS[i]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases attack damage by " .. itemBonus1 .. " when worn.")
	//! i end
	//]]

	//[[ Boots of Speed
	//! i total = 10
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNBootsOfSpeed.blp"
	//! i ifil = "BootsofSpeed_v2.mdx"
	//! i ides = "Increases movement speed."
	//! i unam = "Boots of Speed"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. MSPEED_BONUS[i * 2]
		//! i itemBonusId1 = MSPEED_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases movement speed by " .. itemBonus1 .. " points when worn.")
	//! i end
	//]]

	//[[ Dagger
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNDaggerOfEscape.blp"
	//! i ifil = "DaggerOfEscape_v2.mdx"
	//! i ides = "Increases attack speed and damage."
	//! i unam = "Dagger"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. ASPEED_BONUS[i]
		//! i itemBonusId1 = ASPEED_IDS[i]
		//! i itemBonus2 = "" .. DAMAGE_BONUS[math.ceil(i / 2)]
		//! i itemBonusId2 = DAMAGE_IDS[math.ceil(i / 2)]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1 .. "," .. itemBonusId2)
		//! i makechange(current, 'utub', "Increases attack speed by " .. itemBonus1 * 100 .. "% and damage by " .. itemBonus2 .. " when worn.")
	//! i end
	//]]

	//[[ Elven Boots
	//! i total = 20
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNBoots.blp"
	//! i ifil = "ElvenBoots_v2.mdx"
	//! i ides = "Increases attack and movement speed."
	//! i unam = "Elven Boots"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. MSPEED_BONUS[i]
		//! i itemBonusId1 = MSPEED_IDS[i]
		//! i itemBonus2 = "" .. ASPEED_BONUS[i]
		//! i itemBonusId2 = ASPEED_IDS[i]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases movement speed by " .. itemBonus1 .. " points and attack speed by " .. itemBonus2 * 100 .. "% when worn.")
	//! i end
	//]]

	//[[ Gem of Health
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPeriapt.blp"
	//! i ifil = "Periapt_v2.mdx"
	//! i ides = "Increases health."
	//! i unam = "Gem of Health"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. HEALTH_BONUS[i * 2]
		//! i itemBonusId1 = HEALTH_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases health by " .. itemBonus1 .. " when worn.")
	//! i end
	//]]
	//[[ Greenstone Circlet
	//! i total = 30
	//! i igol = 175
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNCirclet.blp"
	//! i ifil = "Circlet_v2.mdx"
	//! i ides = "Increases strength, defense, and intelligence."
	//! i unam = "Greenstone Circlet"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. STR_BONUS[i]
		//! i itemBonusId1 = STR_IDS[i]
		//! i itemBonus2 = "" .. AGI_BONUS[i]
		//! i itemBonusId2 = AGI_IDS[i]
		//! i itemBonus3 = "" .. INT_BONUS[i]
		//! i itemBonusId3 = INT_IDS[i]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1 .. "," .. itemBonusId2 .. "," .. itemBonusId3)
		//! i makechange(current, 'utub', "Increases strength, defense, and intelligence by " .. itemBonus1 .. " when worn.")
	//! i end

	//[[ Health Stone
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNHealthStone.blp"
	//! i ifil = "HealthStone_v2.mdx"
	//! i ides = "Increases health regeneration."
	//! i unam = "Health Stone"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. HREGEN_BONUS[i * 2]
		//! i itemBonusId1 = HREGEN_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases health regeneration by " .. itemBonus1 .. " points per second when worn.")
	//! i end
	//]]

	//[[ Leather Armor
	//! i LEATHER_ides = "Increases armor and health."
	//! i LEATHER_unam = "Leather Armor"
	//! i total = 30
	//! i igol = 200
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNLeatherUpgradeOne.blp"
	//! i ifil = "LeatherUpgradeOne_v2.mdx"
	//! i ides = "Increases armor and health."
	//! i unam = "Leather Armor"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. HEALTH_BONUS[i]
		//! i itemBonusId1 = HEALTH_IDS[i]
		//! i itemBonus2 = "" .. ARMOR_BONUS[math.ceil(i / 2)]
		//! i itemBonusId2 = ARMOR_IDS[math.ceil(i / 2)]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1 .. "," .. itemBonusId2)
		//! i makechange(current, 'utub', "Increases armor by " .. itemBonus1 .. " and health by " .. itemBonus2 .. " when worn.")
	//! i end
	//]]

	//[[ Mage Staff
	//! i total = 30
	//! i igol = 175
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNBrilliance.blp"
	//! i ifil = "Brilliance_v2.mdx"
	//! i ides = "Increases intelligence and mana."
	//! i unam = "Mage Staff"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. INT_BONUS[i]
		//! i itemBonusId1 = INT_IDS[i]
		//! i itemBonus2 = "" .. MANA_BONUS[i]
		//! i itemBonusId2 = MANA_IDS[i]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1 .. "," .. itemBonusId2)
		//! i makechange(current, 'utub', "Increases intelligence by " .. itemBonus1 .. " and mana by " .. itemBonus2 .. " when worn.")
	//! i end
	//]]
	//[[ Mana Stone
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNManaStone.blp"
	//! i ifil = "ManaStone_v2.mdx"
	//! i ides = "Increases mana regeneration."
	//! i unam = "Mana Stone"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. MREGEN_BONUS[i * 2]
		//! i itemBonusId1 = MREGEN_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases mana regeneration by " .. itemBonus1 * 100 .. "% when worn.")
	//! i end
	//]]

	//[[ Pendant of Energy
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPendantOfEnergy.blp"
	//! i ifil = "PendantOfEnergy_v2.mdx"
	//! i ides = "Increases mana."
	//! i unam = "Pendant of Energy"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. MANA_BONUS[i * 2]
		//! i itemBonusId1 = MANA_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases mana by " .. itemBonus1 .. " when worn.")
	//! i end
	//]]

	//[[ War Axe
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNOrcMeleeUpOne.blp"
	//! i ifil = "OrcMeleeUpOne_v2.mdx"
	//! i ides = "Increases damage and strength."
	//! i unam = "War Axe"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. STR_BONUS[i]
		//! i itemBonusId1 = STR_IDS[i]
		//! i itemBonus2 = "" .. DAMAGE_BONUS[math.ceil(i / 2)]
		//! i itemBonusId2 = DAMAGE_IDS[math.ceil(i / 2)]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1 .. "," .. itemBonusId2)
		//! i makechange(current, 'utub', "Increases strength by " .. itemBonus1 .. " and damage by " .. itemBonus2 .. " when worn.")
	//! i end
	//]]


	
	
//! endexternalblock
