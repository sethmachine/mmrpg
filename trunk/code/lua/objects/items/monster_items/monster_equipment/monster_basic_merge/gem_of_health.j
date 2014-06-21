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