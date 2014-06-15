	//[[ Dagger
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\CommandButtons\BTNOrcMeleeUpOne.blp"
	//! i ifil = "AXE_v2.mdx"
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
