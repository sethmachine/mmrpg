//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Warps *************************
    //********************************************
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i baseId = "nmgv"
	//! i unitId = 'w000'
    //! i WARP_CONS = 500
    //! i upoi = 0
	
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
	
		//[[ Desert Flowers
	//! i igol = 0
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNDryadDispelMagic.blp"
	//! i ifil = "Objects\\InventoryItems\\Shimmerweed\\Shimmerweed.mdl"
	//! i ides = "A gathering of rare desert flowers."
	//! i unam = "Desert Flowers"
	//! i write_item(unam, ides, ifil, iico, igol)
	//! i makechange(current, "ipaw", "0")
	//! i makechange(current, "idraw", "0")
	//! i makechange(current, 'utub', "A gathering of rare desert flowers.")
	//! i end
	//]]
    //********************************************
    //************  Ferry ************************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGoblinShipyard.blp")
    //! i makechange(current, "umdl", "buildings\\other\\GoblinShipyard\\GoblinShipyard")
    //! i makechange(current, "unam", "Ferry (Monster Farm)")
    //set the teamcolor to yellow
    //! i makechange(current, "utco", "\12")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")

    //********************************************
    //************  Ferry ************************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGoblinShipyard.blp")
    //! i makechange(current, "umdl", "buildings\\other\\GoblinShipyard\\GoblinShipyard")
    //! i makechange(current, "unam", "Ferry (GreatBark)")
    //set the teamcolor to yellow
    //! i makechange(current, "utco", "\12")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************ Magic Door Shrine *************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Portal)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNWaygate.blp")
    //! i makechange(current, "umdl", "buildings\\other\\Waygate\\Waygate")
    //! i makechange(current, "unam", "Magic Door Shrine")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //teamcolor to black
    //! i makechange(current, "utco", "\12")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //***************
    // Generic Inn
    //***************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "ReplaceableTextures\\CommandButtons\\BTNGenericHumanBuilding.blp")
    //! i makechange(current, "umdl", "Doodads\\Cityscape\\Structures\\Tavern\\Tavern")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNGenericHumanBuilding.blp")
    //! i makechange(current, "unam", "Inn")
    //the scaling of the model
    //! i makechange(current, "ucol", "150.00")
    //! i makechange(current, "usca", "1.50")
    //selection circle size
    //! i makechange(current, "ussc", "1.30")
    //! i makechange(current, "ushx", "15.00")
    //! i makechange(current, "ushy", "15.00")
    //! i makechange(current, "ushh", "30.00")
    //! i makechange(current, "ushw", "30.00")
    //! i makechange(current, "ucol", "16.00")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")

//! endexternalblock

