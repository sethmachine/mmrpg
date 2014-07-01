//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i id = 'H000'
	//human paladin
	//! i paladinId = 'Hpal'
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
	//! i function write_unit(uico, umdl, unam, upro, baseId)
		//! i setobjecttype("units")
		//! i createobject(baseId, id)
		//! i makechange(current, "uabi", "Avul")
		//! i makechange(current, "uico", uico)
		//! i makechange(current, "umdl", umdl)
		//! i makechange(current, "unam", unam)
		//! i makechange(current, "upro", upro)
		//! i makechange(current, "upoi", upoi)
		//! i id = add(id, "")
	//! i end
	//! i function set_color(red, green, blue)
		//! i makechange(current, "uclr", red)
		//! i makechange(current, "uclg", green)
		//! i makechange(current, "uclb", blue)
	//! i end
	//[[ The King
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNHeroPaladin.blp"
    //! i umdl = "units\\human\\HeroPaladinBoss2\\HeroPaladinBoss2"
    //! i unam = "King of Greatbark"
	//! i upro = "The King"
	//! i write_unit(uico, umdl, unam, upro, paladinId)
	//]]
	//[[ Old Oak
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNHeroPaladin.blp"
    //! i umdl = "units\\human\\Uther\\Uther"
    //! i unam = "Monster General"
	//! i upro = "Old-Oak"
	//! i write_unit(uico, umdl, unam, upro, paladinId)
	//]]
	//[[ Abu Dhabi
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNArthas.blp"
    //! i umdl = "units\\human\\Arthas\\Arthas"
    //! i unam = "Prince of Agon"
	//! i upro = "Abu Dhabi"
	//! i write_unit(uico, umdl, unam, upro, paladinId)
	//! i set_color("255", "125", "75")
	//make teamcolor yellow
    //! i makechange(current, "utco", "\4")
	//]]
	//[[ Jaffar
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNBanditLord.blp"
    //! i umdl = "units\\creeps\\BanditLord\\BanditLord"
    //! i unam = "Bandit Lord"
	//! i upro = "Jaffar"
	//! i write_unit(uico, umdl, unam, upro, paladinId)
	//make teamcolor black
    //! i makechange(current, "utco", "\12")
	//]]

//! endexternalblock
