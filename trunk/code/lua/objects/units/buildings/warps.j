//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Warps *************************
    //********************************************
    //base object for warps
    //! i BASE_ID = "nmgv"
    //constant for detecting warps
    //! i WARP_CONS = 500
    //ids for the dummy warp
    ////! i DUMMY_WARP = "w000"
    //priority - so it doesnt get attacked immediately
    //! i UPRI = "0"
    //index for each point value, incremented by 1 each time
    //! i upoi = 0
    //String for the custom object id
    //! i CUSTOM_ID = "w"
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
    //************ Magic Door Shrine *************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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
    
    //********************************************
    //************ Kalka (Oasis village) *********
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNTownHall.blp")
    //! i makechange(current, "umdl", "AlgarvTownhall.mdx")
    //! i makechange(current, "unam", "Kalka")
    //! i makechange(current, "ucol", "250.00")
    //set the teamcolor to yellow
    //! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1

    //********************************************
    //************  Cazbar (Oasis city) **********
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNCastle.blp")
    //! i makechange(current, "umdl", "AlgarvTownhall.mdx")
    //! i makechange(current, "unam", "Cazbar")
   //! i makechange(current, "ucol", "400.00")
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

    //********************************************
    //************  Mirage Lake ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "buildings\\other\\FountainOfLife\\FountainOfHealth")
    //! i makechange(current, "uico", "ReplaceableTextures\\CommandButtons\\BTNFountainOfLife.blp")
    //! i makechange(current, "unam", "Mirage Lake")
    //set the teamcolor to yellow
    ////! i makechange(current, "utco", "\4")
    //! i makechange(current, "upoi", (upoi + WARP_CONS) .. "")
    //the scaling of the model
    //! i makechange(current, "usca", "1.0")
    //remove the building's shadow
    //! i makechange(current, "ushb", "")
    //! i upoi = upoi + 1

    //********************************************
    //************  Desert Temple ****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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

    //********************************************
    //************  Ferry ************************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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

    //********************************************
    //************  Ferry ************************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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

    //********************************************
    //************  Kalka Sewers *****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "unsf", "(Warp)")
    //! i makechange(current, "uabi", "Avul")
    //! i makechange(current, "umdl", "Doodads\\Dungeon\\Terrain\\DungeonPorticulisGate\\DungeonPorticulisGate")
    //! i makechange(current, "unam", "Dungeon")
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

    //***************
    // Generic Inn
    //***************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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
    
    //********************************************
    //************  Kalka Exit *******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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
    
    //********************************************
    //************  Cazbar Exit ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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

    //********************************************
    //************  Kalka Sewer Exit *************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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

    //********************************************
    //************  Mirage Lake Exit *************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID, make_id(CUSTOM_ID, upoi))
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
//! endexternalblock
