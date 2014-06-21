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