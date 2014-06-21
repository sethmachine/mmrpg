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
