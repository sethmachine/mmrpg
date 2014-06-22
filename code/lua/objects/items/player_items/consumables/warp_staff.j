//! externalblock extension=lua ObjectMerger $FILENAME$
	//item ids
    //! i BASE_ITEM_ID = "pghe"
    //! i CUSTOM_ID1 = "IS"
	//item ability ids
	//! i BASE_ABIL_ID = "ANcl"
	//! i CUSTOM_ID2 = "sw"
	//! i ARAN = "200.00"
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
	//gold cost
	//! i WARP_igol = "75"
	//icons
	//! i WARP_iico = "ReplaceableTextures\\CommandButtons\\BTNAlleriaFlute.blp"
	//models
	//! i WARP_ifil = "AlleriasFlute_v2.mdx"
	//names
	//! i WARP_ides = "Teleports the player and party back to GreatBark."
	//! i WARP_unam = "Warp Staff"
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
	//! i makechange(current, "alev", "0")
	//! i makechange(current, "amcs", "1", "0")
    //! i makechange(current, "anam", WARP_unam)
    //! i makechange(current, "Ncl6", "1", "massteleport")
    //! i makechange(current, "aord", "massteleport")
	//the item
	//! i setobjecttype("items")
	//! i itemId = make_id(CUSTOM_ID1, upoi)
	//! i createobject(BASE_ITEM_ID, itemId)
	//! i makechange(current, 'iabi', abilId)
	//! i makechange(current, 'iico', WARP_iico)
	//! i makechange(current, 'ifil', WARP_ifil)
	//! i makechange(current, 'igol', WARP_igol)
	//! i makechange(current, 'iuse', CHARGES)
	//! i makechange(current, 'ides', WARP_ides)
	//! i makechange(current, 'unam', WARP_unam)
	//! i makechange(current, 'utip', "Purchase " .. WARP_unam)
	//! i makechange(current, 'utub', "Teleports the player and party back to GreatBark.")
	//! i makechange(current, 'ilev', "1")
	//! i upoi = upoi + 1
	
	
	
	
	
//! endexternalblock