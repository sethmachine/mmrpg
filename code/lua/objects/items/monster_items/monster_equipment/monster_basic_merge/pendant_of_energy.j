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
