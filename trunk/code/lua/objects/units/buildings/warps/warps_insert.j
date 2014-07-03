//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Warps *************************
    //********************************************
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i baseId = "nmgv"
	//! i id = 'w000'
    //! i upoi = 500
	//! i exit_uico = "ReplaceableTextures\\CommandButtons\\BTNCOP.blp"
	//! i exit_umdl = "buildings\\other\\CircleOfPower\\CircleOfPower"
	//! i exit_unam = "Exit"
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
	//! i function write_unit(uico, umdl, unsf, unam, baseId)
		//! i setobjecttype("units")
		//! i createobject(baseId, id)
		//! i makechange(current, "uabi", "Avul")
		//! i makechange(current, "uico", uico)
		//! i makechange(current, "umdl", umdl)
		//! i makechange(current, "utco", "\12")
		//! i makechange(current, "unsf", unsf)
		//! i makechange(current, "upat", "")
		//! i makechange(current, "unam", unam)
		//! i makechange(current, "ushb", "")
		//! i makechange(current, "upoi", upoi)
		//! i id = add(id, "")
	//! i end
	//! i function set_color(red, green, blue)
		//! i makechange(current, "uclr", red)
		//! i makechange(current, "uclg", green)
		//! i makechange(current, "uclb", blue)
	//! i end
	//[[ Ferry to Farm|false
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNGoblinShipyard.blp"
    //! i umdl = "buildings\\other\\GoblinShipyard\\GoblinShipyard"
	//! i unsf = "(Warp)"
    //! i unam = "Ferry (Monster Farm)"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    //! i makechange(current, "usca", "1.0")
	//]]
	//[[ Ferry to Greatbark
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNGoblinShipyard.blp"
    //! i umdl = "buildings\\other\\GoblinShipyard\\GoblinShipyard"
	//! i unsf = "(Warp)"
    //! i unam = "Ferry (Greatbark)"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    //! i makechange(current, "usca", "1.0")
	//]]
	//[[ Magic Door Shrine
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNWaygate.blp"
    //! i umdl = "buildings\\other\\Waygate\\Waygate"
	//! i unsf = "(Warp)"
    //! i unam = "Magic Door Shrine"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    //! i makechange(current, "usca", "1.0")
	//]]
	//[[ Castle Cazbar|false
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNGenericHumanBuilding.blp"
    //! i umdl = "Doodads\\LordaeronSummer\\Terrain\\Gate\\Gate"
	//! i unsf = "(Warp)"
    //! i unam = "Castle Cazbar"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    //! i makechange(current, "usca", "1.0")
	//! i makechange(current, "upat", "")
	//]]
	//[[ Castle Cazbar Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]
	//[[ Cazbar
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNCastle.blp"
    //! i umdl = "AlgarvTownhall.mdx"
	//! i unsf = "(Warp)"
    //! i unam = "Cazbar"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    //! i makechange(current, "usca", "1.0")
	//! i makechange(current, "uani", "upgrade,second")
	//! i makechange(current, "upat", "PathTextures\\16x16Simple.tga")
	//]]
	//[[ Cazbar Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]
	//[[ Cazbar Well|false
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNMoonWell.blp"
    //! i umdl = "Doodads\\LordaeronSummer\\Structures\\well\\well"
	//! i unsf = "(Cazbar Warp)"
    //! i unam = "Well"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
	//! i makechange(current, "upat", "PathTextures\\4x4Default.tga")
	//]]
	//[[ Cazbar Well Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]
	//[[ Desert Temple
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNMageTower.blp"
    //! i umdl = "buildings\\other\\MageTower\\MageTower"
	//! i unsf = "(Warp)"
    //! i unam = "Desert Temple"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    //! i makechange(current, "usca", "1.75")
    //! i makechange(current, "utco", "\4")
	//]]
	//[[ Desert Temple Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]
	//[[ Kalka
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNTownHall.blp"
    //! i umdl = "AlgarvTownhall.mdx"
	//! i unsf = "(Warp)"
    //! i unam = "Kalka"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
    ////! i makechange(current, "usca", "1.75")
	//! i makechange(current, "upat", "PathTextures\\16x16Simple.tga")
	//]]
	//[[ Kalka Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]
	//[[ Kalka Sewers|false
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNGenericHumanBuilding.blp"
    //! i umdl = "Doodads\\Dungeon\\Terrain\\DungeonPorticulisGate\\DungeonPorticulisGate"
	//! i unsf = "(Warp)"
    //! i unam = "Kalka Sewers"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
	//]]
	//[[ Kalka Sewers Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]
	//[[ Mirage Lake
    //! i uico = "ReplaceableTextures\\CommandButtons\\BTNFountainOfLife.blp"
    //! i umdl = "buildings\\other\\FountainOfLife\\FountainOfHealth"
	//! i unsf = "(Warp)"
    //! i unam = "Mirage Lake"
	//! i write_unit(uico, umdl, unsf, unam, baseId)
	//]]
	//[[ Mirage Lake Exit
	//! i write_unit(exit_uico, exit_umdl, "(" .. unam .. ")", exit_unam, baseId)
	//]]

//! endexternalblock

