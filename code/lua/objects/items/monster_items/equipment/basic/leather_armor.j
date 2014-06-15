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
