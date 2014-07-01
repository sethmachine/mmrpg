//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i id = 'n000'
	//neutral high elf male
	//! i unitId = 'nhem'
	//neutral magic vault
	//! i buildingId = 'nmgv'
	//a unique unit point value for all npcs
	//! i upoi = 300
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
	//! i function write_unit(uico, umdl, unam, baseId)
		//! i setobjecttype("units")
		//! i createobject(baseId, id)
		//! i makechange(current, "uabi", "Avul")
		//! i makechange(current, "uico", uico)
		//! i makechange(current, "umdl", umdl)
		//! i makechange(current, "ucam", "0")
		//! i makechange(current, "uspe", "1")
		//! i makechange(current, 'unam', unam)
		//! i makechange(current, "upoi", upoi)
		//! i if baseId == buildingId then
			//! i makechange(current, "ushb", "")
		//! i end
		//! i id = add(id, "")
	//! i end
	//! i function set_color(red, green, blue)
		//! i makechange(current, "uclr", red)
		//! i makechange(current, "uclg", green)
		//! i makechange(current, "uclb", blue)
	//! i end
	//[[ Isaiah
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNFemaleElfVillager.blp"
    //! i umdl = "units\\critters\\ElfVillagerWoman\\ElfVillagerWoman"
	//! i unam = "Isaiah"
	//! i write_unit(uico, umdl, unam, unitId)
	//! i set_color("255", "125", "75")
	//]]
	//[[ Monster Breeder
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNMedivh.blp"
    //! i umdl = "units\\creeps\\Medivh\\Medivh"
    //! i unam = "Monster Breeder"
	//! i write_unit(uico, umdl, unam, unitId)
	//]]
	//[[ Priest
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNPriest.blp"
    //! i umdl = "units\\human\\Priest\\Priest"
    //! i unam = "Priest"
	//! i write_unit(uico, umdl, unam, unitId)
	//]]
	//[[ Inn
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNGenericHumanBuilding.blp"
    //! i umdl = "Doodads\\Cityscape\\Structures\\Tavern\\Tavern"
    //! i unam = "Inn"
	//! i write_unit(uico, umdl, unam, buildingId)
	//]]
	//[[ Monster Farmer
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNPeasant.blp"
    //! i umdl = "units\\human\\Peasant\\Peasant"
    //! i unam = "Monster Farmer"
	//! i write_unit(uico, umdl, unam, unitId)
	//]]
	//[[ Monster Librarian
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNBloodElfPeasant.blp"
    //! i umdl = "units\\critters\\HighElfPeasant\\HighElfPeasant"
    //! i unam = "Monster Librarian"
	//! i write_unit(uico, umdl, unam, unitId)
	//]]
	//[[ Royal Chaplain Ricard
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNBanditMage.blp"
    //! i umdl = "units\\creeps\\HumanMage\\HumanMage"
    //! i unam = "Royal Chaplain Ricard"
	//! i write_unit(uico, umdl, unam, unitId)
	//]]
	//[[ Item Vault
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNArcaneVault.blp"
    //! i umdl = "buildings\\human\\ArcaneVault\\ArcaneVault"
    //! i unam = "Item Vault"
	//! i write_unit(uico, umdl, unam, buildingId)
	//]]
	//[[ Tombstone
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNGraveyard.blp"
    //! i umdl = "Doodads\\LordaeronSummer\\Props\\Grave\\Grave"
    //! i unam = "Tombstone"
	//! i write_unit(uico, umdl, unam, buildingId)
	//! i makechange(current, "unsf", "(Al-Jernan)")
	//]]
	//[[ Alfonzo
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNHeroDreadLord.blp"
    //! i umdl = "Leprekon.mdx"
    //! i unam = "Alfonzo"
	//! i write_unit(uico, umdl, unam, unitId)
	//! i makechange(current, "usca", "1.30")
	//]]
	//[[ Sage Athos
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNPriest.blp"
    //! i umdl = "units\\human\\Priest\\Priest"
    //! i unam = "Sage Athos"
	//! i write_unit(uico, umdl, unam, unitId)
	//! i set_color("255", "125", "75")
	//! i makechange(current, "usca", "1.15")
	//makes teamcolor yellow
    //! i makechange(current, "utco", "\4")
	//]]
	//[[ Hungry Bandit
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNBandit.blp"
    //! i umdl = "units\\creeps\\Bandit\\Bandit"
    //! i unam = "Hungry Bandit"
	//! i write_unit(uico, umdl, unam, unitId)
	//makes teamcolor black
    //! i makechange(current, "utco", "\12")
	//]]

//! endexternalblock
