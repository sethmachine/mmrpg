//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    //! i destBaseId = 'LTrc'
	//! i destId = 'B000'
	//! i unitBaseId = 'nmgv'
	//! i unitId = 'p000'

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
	//! i makechange(current, "urac", "other")
    //! i makechange(current, "unam", "Fountain")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")

//! endexternalblock


