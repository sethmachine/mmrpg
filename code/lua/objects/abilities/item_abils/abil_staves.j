//! externalblock extension=lua ObjectMerger $FILENAME$
	//item ability ids
	//! i BASE_ABIL_ID = "ANcl"
	//! i CUSTOM_ID2 = "sw"
	//! i ARAN = "200.00"
	//! i WARP_unam = "Warp Staff Ability"
	//! i WARP_iico = "ReplaceableTextures\\CommandButtons\\BTNAlleriaFlute.blp"
	//duration
	//! i AITE = "1"
	//! i AHER = "0"
    //charges
    //! i CHARGES = 1
	//! i upoi = 0
    //use this function to make each custom object id
    //based on the unit point value (upoi)
    //! i function make_id(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "0" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end

	//******************************
	// Warp Staff Constants ********
	//******************************
	//mana cost - 0 for now
	//! i WARP_amcs = "0"
	//the ability
	//! i abilId = make_id(CUSTOM_ID2, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(BASE_ABIL_ID, abilId)
	//! i makechange(current, "aani", "attack")
	//! i makechange(current, "acat", "")
	//! i makechange(current, "acap", "")
    //! i makechange(current, "aart", WARP_iico)
	//! i makechange(current, "atat", "")
	//! i makechange(current, "ata0", "")
	//! i makechange(current, "Ncl1", "1", "0.01")
	//! i makechange(current, "aran", "1", "0.00")
	//! i makechange(current, "aher", AHER)
	//! i makechange(current, "aite", AITE)
	//! i makechange(current, "alev", "1")
	//! i makechange(current, "amcs", "1", "0")
    //! i makechange(current, "anam", WARP_unam)
    //! i makechange(current, "Ncl6", "1", "massteleport")
    //! i makechange(current, "aord", "massteleport")
//! endexternalblock