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
