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
