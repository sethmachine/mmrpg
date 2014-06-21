	//[[ Boots of Speed
	//! i total = 10
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNBootsOfSpeed.blp"
	//! i ifil = "BootsofSpeed_v2.mdx"
	//! i ides = "Increases movement speed."
	//! i unam = "Boots of Speed"
	//! i for i=1, total do
		//make the item
		//! i itemBonus1 = "" .. MSPEED_BONUS[i * 2]
		//! i itemBonusId1 = MSPEED_IDS[i * 2]
		//! i write_item(unam, ides, ifil, iico, igol, i)
		//! i makechange(current, 'iabi', itemBonusId1)
		//! i makechange(current, 'utub', "Increases movement speed by " .. itemBonus1 .. " points when worn.")
	//! i end
	//]]
