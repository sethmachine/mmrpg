	//[[ Elven Boots
	//! i total = 20
	//! i igol = 150
	//! i iico = "ReplaceableTextures\CommandButtons\BTNOrcMeleeUpOne.blp"
	//! i ifil = "AXE_v2.mdx"
	//! i ides = "Increases attack and movement speed."
	//! i unam = "Mana Stone"
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
