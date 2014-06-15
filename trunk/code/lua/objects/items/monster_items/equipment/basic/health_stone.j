	//[[ Health Stone
	//! i total = 30
	//! i igol = 150
	//! i iico = "ReplaceableTextures\CommandButtons\BTNOrcMeleeUpOne.blp"
	//! i ifil = "AXE_v2.mdx"
	//! i ides = "Increases health regeneration."
	//! i unam = "Health Stone"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. HREGEN_BONUS[i * 2]
		//! i itemBonusId1 = HREGEN_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases health regeneration by " .. itemBonus1 * 100 .. "% when worn.")
	//! i end
	//]]
