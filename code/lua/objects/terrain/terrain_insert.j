//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    //! i destBaseId = 'LTrc'
	//! i destId = 'B000'
	//! i sunkenArchwayId = 'ZSas'
	//! i unitBaseId = 'nmgv'
	//! i unitId = 't000'
	//! i LEVER_HEALTH = "250"

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
    
        //***************************
    //* Barrens Rockspire Tree
    //***************************
    //! i setobjecttype("destructables")
    //! i createobject(destBaseId, destId)
    //! i makechange(current, "bfil", "Doodads\\Barrens\\Rocks\\Barrens_Spires\\Barrens_Spires.mdl")
    //! i makechange(current, "bvar", "8")
	//! i makechange(current, "bgse", "0")
    //! i makechange(current, "btar", "invulnerable")
    //! i makechange(current, "btil", "B")
    //! i makechange(current, "bptx", "PathTextures\\LargeRockSpire.tga")
    //! i makechange(current, "bsuf", "(Desert)")
    //! i makechange(current, "bnam", "Mountains")
    //! i destId = add(destId, "")
    //********************************************
    //************ Agon Fountain *****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(unitBaseId, unitId)
    //! i makechange(current, "unsf", "(Desert)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFountainOfLife.blp")
    //! i makechange(current, "umdl", "Doodads\\Ruins\\Props\\RuinFountain\\RuinFountain")
	//! i makechange(current, "ucam", "0")
	//! i makechange(current, "urac", "human")
    //! i makechange(current, "unam", "Fountain")
    //! i makechange(current, "uclr", "75")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "75")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //! i unitId = add(unitId, "")
    //***************************
    //* Sunken Ruins Archway (small)
    //***************************
    //! i setobjecttype("doodads")
    //! i createobject(sunkenArchwayId, destId)
	//! i makechange(current, "dfil", "Doodads\\Ruins\\Structures\\RuinsArchway0_\\RuinsArchway0_")
	//! i makechange(current, "dmis", "0.20")
	//! i makechange(current, "dcpr", "1")
    //! i makechange(current, "dptx", "")
    //! i makechange(current, "dnam", "Archway (Sunken Ruins Small)")
    //! i destId = add(destId, "")
    //***************************
    //* Invisible Destructable
    //***************************
    //! i setobjecttype("destructables")
    //! i createobject(destBaseId, destId)
    //! i makechange(current, "bfil", "Doodads\\Terrain\\LOSBlocker\\LOSBlocker")
    //! i makechange(current, "bvar", "1")
    //! i makechange(current, "btar", "invulnerable")
    //! i makechange(current, "btil", "*")
    //! i makechange(current, "bptx", "PathTextures\\LargeRockSpire.tga")
    //! i makechange(current, "bsuf", "(No Model)")
	//! i makechange(current, "buch", "1")
	//! i makechange(current, "bgse", "0")
	//! i makechange(current, "bshd", "")
	//! i makechange(current, "bsmm", "0")
    //! i makechange(current, "bnam", "Invisible Destructable")
    //! i destId = add(destId, "")
    //***************************
    //* Sunchamber Mirror
    //***************************
    //! i setobjecttype("doodads")
    //! i createobject(sunkenArchwayId, destId)
	//! i makechange(current, "dfil", "Mirror.mdx")
	//! i makechange(current, "dmas", "5.0")
	//! i makechange(current, "dmis", "4.0")
	//! i makechange(current, "dcpr", "1")
    //! i makechange(current, "dptx", "")
    //! i makechange(current, "dnam", "Sunchamber Mirror")
    //! i destId = add(destId, "")
    //********************************************
    //************ Sunchamber Lever **************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(unitBaseId, unitId)
    //! i makechange(current, "unsf", "(Sunchamber A)")
    //! i makechange(current, "umdl", "Doodads\\Cinematic\\DungeonLever\\DungeonLever.mdl")
	//! i makechange(current, "uhpm", LEVER_HEALTH)
	//! i makechange(current, "ucam", "0")
	//! i makechange(current, "urac", "other")
	//! i makechange(current, "util", "*")
	//! i makechange(current, "utyp", "Mechanical,neutral")
    //! i makechange(current, "unam", "Lever")
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "0")
	//! i makechange(current, "ushb", "")
	//! i makechange(current, "unbm", "0")
	//! i makechange(current, "upat", "PathTextures\\2x2Default.tga")
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //! i unitId = add(unitId, "")
    //********************************************
    //************ Sunchamber Lever **************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(unitBaseId, unitId)
    //! i makechange(current, "unsf", "(Sunchamber B)")
    //! i makechange(current, "umdl", "Doodads\\Cinematic\\DungeonLever\\DungeonLever.mdl")
	//! i makechange(current, "uhpm", LEVER_HEALTH)
	//! i makechange(current, "ucam", "0")
	//! i makechange(current, "urac", "other")
	//! i makechange(current, "util", "*")
	//! i makechange(current, "utyp", "Mechanical,neutral")
    //! i makechange(current, "unam", "Lever")
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "0")
	//! i makechange(current, "ushb", "")
	//! i makechange(current, "unbm", "0")
	//! i makechange(current, "upat", "PathTextures\\2x2Default.tga")
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //! i unitId = add(unitId, "")
    //********************************************
    //************ Sunchamber Lever **************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(unitBaseId, unitId)
    //! i makechange(current, "unsf", "(Sunchamber C)")
    //! i makechange(current, "umdl", "Doodads\\Cinematic\\DungeonLever\\DungeonLever.mdl")
	//! i makechange(current, "uhpm", LEVER_HEALTH)
	//! i makechange(current, "ucam", "0")
	//! i makechange(current, "urac", "other")
	//! i makechange(current, "util", "*")
	//! i makechange(current, "utyp", "Mechanical,neutral")
    //! i makechange(current, "unam", "Lever")
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "0")
	//! i makechange(current, "ushb", "")
	//! i makechange(current, "unbm", "0")
	//! i makechange(current, "upat", "PathTextures\\2x2Default.tga")
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //! i unitId = add(unitId, "")
    //********************************************
    //************ Sunchamber Lever **************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(unitBaseId, unitId)
    //! i makechange(current, "unsf", "(Sunchamber D)")
    //! i makechange(current, "umdl", "Doodads\\Cinematic\\DungeonLever\\DungeonLever.mdl")
	//! i makechange(current, "uhpm", LEVER_HEALTH)
	//! i makechange(current, "ucam", "0")
	//! i makechange(current, "urac", "other")
	//! i makechange(current, "util", "*")
	//! i makechange(current, "utyp", "Mechanical,neutral")
    //! i makechange(current, "unam", "Lever")
    //! i makechange(current, "uclr", "255")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "0")
	//! i makechange(current, "ushb", "")
	//! i makechange(current, "unbm", "0")
	//! i makechange(current, "upat", "PathTextures\\2x2Default.tga")
    //the scaling of the model
    //! i makechange(current, "usca", "1.30")
    //! i unitId = add(unitId, "")

//! endexternalblock


