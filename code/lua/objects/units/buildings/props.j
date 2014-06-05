//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Warps *************************
    //********************************************
    //base object for warps
    //! i BASE_ID = "nmgv"
    //index for each point value, incremented by 1 each time
    //! i upoi = 0
    //String for the custom object id
    //! i CUSTOM_ID = "p"
    //use this function to make each PC's custom object id
    //based on the unit point value (upoi)
    //! i function make_id(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "0" .. "0" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. "0" .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end
    //********************************************
    //************ Agon Fountain *****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "unsf", "(Prop)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFountainOfLife.blp")
    //! i makechange(current, "umdl", "Doodads\\Ruins\\Props\\RuinFountain\\RuinFountain")
    //! i makechange(current, "unam", "Fountain")
    //teamcolor to black
    //! i makechange(current, "utco", "\12")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //tints
    //! i makechange(current, "uclr", "0")
    //! i makechange(current, "uclg", "255")
    //! i makechange(current, "uclb", "0")
    //! i upoi = upoi + 1
 
//! endexternalblock
