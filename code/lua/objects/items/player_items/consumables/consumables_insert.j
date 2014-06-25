//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i itemId = 'c000'
	//health potion as base object for consumables
	//! i baseId = 'pghe'
	//item is for player using/holding
	//! i PLAYER_ITEM = 1
	//number of uses per item
	//! i MEAT_CHARGES = 3
	//! i POTION_CHARGES = 3
	//! i ADUR = 10
	
	//think about importing these values/arrays
	//that way we don't have to write specific rawcodes
	//and we don't need to go back and change everything
	//if an item ability's value does change
	//import! "ADUR" item_abils\potions.j
	//import! "HEALTH_Rej1" item_abils\potions.j
	
	
	//! i function add(value, result)
		//! i if value == "" then
			//! i value = "0"
		//! i end
		//! i local lastValue = string.sub(value, string.len(value), string.len(value))
		//! i local lastBase = string.sub(BASE_62, string.len(BASE_62), string.len(BASE_62))
		//! i if lastValue ~= lastBase then
			//! i local nextBase = string.sub(BASE_62, string.find(BASE_62, lastValue) + 1, string.find(BASE_62, lastValue) + 1)
			//! i return string.sub(value, 1, string.len(value) - 1) .. nextBase .. result
		//! i else
			//! i return add(string.sub(value, 1, string.len(value) - 1), result .. "0")
		//! i end
	//! i end
	
	//! i function write_item(unam, ides, ifil, iico, igol, ilev, iuse)
		//! i setobjecttype("items")
		//! i createobject(baseId, itemId)
		//! i makechange(current, "ides", ides)
		//! i makechange(current, "ifil", ifil)
		//! i makechange(current, "iico", iico)
		//! i makechange(current, "igol", igol)
		//! i makechange(current, 'unam', unam)
		//! i makechange(current, 'ilev', ilev)
		//! i makechange(current, 'iuse', iuse)
		//! i makechange(current, 'ipri', "0")
		//! i makechange(current, 'istr', "1")
		//! i makechange(current, 'ilvo', "0")
		//! i makechange(current, 'utip', "Purchase " .. unam)
		//! i itemId = add(itemId, "")
	//! i end
	
		//[[ Monster Feed
	//! i igol = 75
	//! i iico = "BTNFood.blp"
	//! i ifil = "Meat.mdx"
	//! i ides = "Slightly increases the chance of a defeated monster joining you."
	//! i unam = "Monster Feed"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, MEAT_CHARGES)
	//! i makechange(current, 'utub', ides)
	//! i makechange(current, 'iabi', 'AF01')
	//]]
	//[[ Porkchop
	//! i igol = 150
	//! i iico = "BTNNuggets.blp"
	//! i ifil = "Meat.mdx"
	//! i ides = "Increases the chance of a defeated monster joining you."
	//! i unam = "Porkchop"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, MEAT_CHARGES)
	//! i makechange(current, 'utub', ides)
	//! i makechange(current, 'iabi', 'AF02')
	//]]
	//[[ Rib
	//! i igol = 300
	//! i iico = "BTNHam.blp"
	//! i ifil = "Meat.mdx"
	//! i ides = "Greatly increases the chance of a defeated monster joining you."
	//! i unam = "Rib"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, MEAT_CHARGES)
	//! i makechange(current, 'utub', ides)
	//! i makechange(current, 'iabi', 'AF03')
	//]]
	//[[ Siloin
	//! i igol = 600
	//! i iico = "BTNFilet.blp"
	//! i ifil = "Meat.mdx"
	//! i ides = "Massively increases the chance of a defeated monster joining you."
	//! i unam = "Sirloin"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, MEAT_CHARGES)
	//! i makechange(current, 'utub', ides)
	//! i makechange(current, 'iabi', 'AF04')
	//]]
	//[[ Earthwater
	//! i igol = 225
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPotionGreen.blp"
	//! i ifil = "Item_Potion_BigGreen_v2.mdx"
	//! i ides = "Restores lost hit points over time."
	//! i unam = "Earthwater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap02')
	//! i makechange(current, 'utub', "Heals " .. 300 .. " hit points over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Elfwater
	//! i igol = 120
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPotionBlueSmall.blp"
	//! i ifil = "Item_Potion_SmallBlue_v2.mdx"
	//! i ides = "Restores mana over time."
	//! i unam = "Elfwater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap05')
	//! i makechange(current, 'utub', "Restores " .. 150 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Elf Dew
	//! i igol = 150
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNLesserRejuvPotion.blp"
	//! i ifil = "Item_Potion_SmallPurple_v2.mdx"
	//! i ides = "Restores health and mana over time."
	//! i unam = "Elf Dew"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap09')
	//! i makechange(current, 'utub', "Restores " .. 100 .. " health and " .. 100 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Herbwater
	//! i igol = 30
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPotionGreenSmall.blp"
	//! i ifil = "Item_Potion_TinyGreen_v2.mdx"
	//! i ides = "Restores lost hit points over time."
	//! i unam = "Herbwater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap00')
	//! i makechange(current, 'utub', "Heals " .. 75 .. " hit points over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Herb Dew
	//! i igol = 30
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNMinorRejuvPotion.blp"
	//! i ifil = "Item_Potion_TinyPurple_v2.mdx"
	//! i ides = "Restores health and mana over time."
	//! i unam = "Herb Dew"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap08')
	//! i makechange(current, 'utub', "Restores " .. 50 .. " health and " .. 50 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Lovewater
	//! i igol = 75
	//! i iico = "BTNPotionBlueSmall2.blp"
	//! i ifil = "Item_Potion_SmallGreen_v2.mdx"
	//! i ides = "Restores lost hit points over time."
	//! i unam = "Lovewater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap01')
	//! i makechange(current, 'utub', "Heals " .. 150 .. " hit points over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Moonwater
	//! i igol = 480
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPotionBlueBig.blp"
	//! i ifil = "Item_Potion_LargeBlue_v2.mdx"
	//! i ides = "Restores mana over time."
	//! i unam = "Moonwater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap08')
	//! i makechange(current, 'utub', "Restores " .. 600 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Moon Dew
	//! i igol = 300
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNRejuvPotion.blp"
	//! i ifil = "Item_Potion_BigPurple_v2.mdx"
	//! i ides = "Restores health and mana over time."
	//! i unam = "Elf Dew"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap10')
	//! i makechange(current, 'utub', "Restores " .. 200 .. " health and " .. 200 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Oceanwater
	//! i igol = 240
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNPotionBlue.blp"
	//! i ifil = "Item_Potion_BigBlue_v2.mdx"
	//! i ides = "Restores mana over time."
	//! i unam = "Oceanwater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap06')
	//! i makechange(current, 'utub', "Restores " .. 300 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Potion
	//! i igol = 60
	//! i iico = "BTNPotionGreenSmall2.blp"
	//! i ifil = "Item_Potion_TinyBlue_v2.mdx"
	//! i ides = "Restores mana over time."
	//! i unam = "Potion"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap04')
	//! i makechange(current, 'utub', "Restores " .. 75 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Sunwater
	//! i igol = 450
	//! i iico = "BTN_Potion_BigGreen.blp"
	//! i ifil = "Item_Potion_LargeGreen_v2.mdx"
	//! i ides = "Restores lost hit points over time."
	//! i unam = "Sunwater"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap03')
	//! i makechange(current, 'utub', "Heals " .. 600 .. " hit points over " .. ADUR .. " seconds when used.")
	//]]
	//[[ World Dew
	//! i igol = 600
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNGreaterRejuvPotion.blp"
	//! i ifil = "Item_Potion_LargePurple_v2.mdx"
	//! i ides = "Restores health and mana over time."
	//! i unam = "World Dew"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, POTION_CHARGES)
	//! i makechange(current, 'iabi', 'ap11')
	//! i makechange(current, 'utub', "Restores " .. 400 .. " health and " .. 400 .. " mana over " .. ADUR .. " seconds when used.")
	//]]
	//[[ Warp Staff
	//! i igol = 75
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNAlleriaFlute.blp"
	//! i ifil = "AlleriasFlute_v2.mdx"
	//! i ides = "Teleports the player and party back to GreatBark."
	//! i unam = "Warp Staff"
	//! i ilev = PLAYER_ITEM
	//! i write_item(unam, ides, ifil, iico, igol, ilev, WARP_STAFF_CHARGES)
	//! i makechange(current, 'iabi', 'sw00')
	//! i makechange(current, 'utub', "Teleports the player and party back to GreatBark.")
	//]]

//! endexternalblock
