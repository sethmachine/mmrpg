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
	
	    //********************************************
    //************  Castle Cazbar ****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "Doodads\\LordaeronSummer\\Terrain\\Gate\\Gate")
	//! i makechange(current, "upat", "PathTextures\\Gate1Path.tga")
    //! i makechange(current, "unam", "Castle Cazbar")
   //! i makechange(current, "ucol", "160.00")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Castle Cazbar Exit ***********
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Castle Cazbar)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "buildings\\other\\CircleOfPower\\CircleOfPower")
    //! i makechange(current, "unam", "Exit")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Cazbar (Oasis city) **********
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
	//! i makechange(current, "upat", "PathTextures\\16x16Simple.tga")
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCastle.blp")
    //! i makechange(current, "umdl", "AlgarvTownhall.mdx")
    //! i makechange(current, "unam", "Cazbar")
   //! i makechange(current, "ucol", "200.00")
    //set the teamcolor to yellow
    //! i makechange(current, "utco", "\4")
    //so we get the castle model
    //! i makechange(current, "uani", "upgrade,second")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Cazbar Exit ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Cazbar)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "buildings\\other\\CircleOfPower\\CircleOfPower")
    //! i makechange(current, "unam", "Exit")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Cazbar Well ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Cazbar Well)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "Doodads\\LordaeronSummer\\Structures\\well\\well")
    //! i makechange(current, "unam", "Well")
	//! i makechange(current, "upat", "PathTextures\\4x4Default.tga")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************ Cazbar Well Exit **************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Cazbar Well)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "buildings\\other\\CircleOfPower\\CircleOfPower")
    //! i makechange(current, "unam", "Exit")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Desert Temple ****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNMageTower.blp")
    //! i makechange(current, "umdl", "buildings\\other\\MageTower\\MageTower")
    //! i makechange(current, "unam", "Desert Temple")
    //set the teamcolor to yellow
    //! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.5")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************ Kalka (Oasis village) *********
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
	//! i makechange(current, "upat", "PathTextures\\16x16Simple.tga")
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTownHall.blp")
    //! i makechange(current, "umdl", "AlgarvTownhall.mdx")
    //! i makechange(current, "unam", "Kalka")
    //! i makechange(current, "ucol", "200.00")
    //set the teamcolor to yellow
    //! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Kalka Exit *******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Kalka)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "buildings\\other\\CircleOfPower\\CircleOfPower")
    //! i makechange(current, "unam", "Exit")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Kalka Sewers *****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "Doodads\\Dungeon\\Terrain\\DungeonPorticulisGate\\DungeonPorticulisGate")
    //! i makechange(current, "unam", "Sewers")
   //! i makechange(current, "ucol", "160.00")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Kalka Sewer Exit *************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Kalka Sewer)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "buildings\\other\\CircleOfPower\\CircleOfPower")
    //! i makechange(current, "unam", "Exit")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")
    //********************************************
    //************  Mirage Lake ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "buildings\\other\\FountainOfLife\\FountainOfHealth")
    //! i makechange(current, "unam", "Mirage Lake")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1
	//! i unitId = add(unitId, "")

    //********************************************
    //************  Mirage Lake Exit *************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(baseId, unitId)
    //! i makechange(current, "unsf", "(Mirage Lake)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCOP.blp")
    //! i makechange(current, "umdl", "buildings\\other\\CircleOfPower\\CircleOfPower")
    //! i makechange(current, "unam", "Exit")
    //pathing changes - can place anywhere
    //! i makechange(current, "upap", "")
    //! i makechange(current, "upat", "")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
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

//! endexternalblock

