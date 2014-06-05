//! externalblock extension=lua ObjectMerger $FILENAME$
    //passive base buff ID
    //passive base abilities ID
    //! i HWARD_AURA_ID = 'Aoar'
    //! i HWARD_UNIT_ID = 'ohwd'
    //total levels for the aura(= 6)
    //! i ALEV = "6"
    //race of healing abilities
    //! i ARAC = "other"
    //classify healing abilities as unit
    //! i AHER = "0"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //prefix for all passives
    //! i CUSTOM_ID = "Aw"
    //! i CUSTOM_UNIT_ID = "uw"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Bw"
    //atp1 tool tip writing function
    //! i function fill_arr(maxLvls, name, lvlStr, arr)
        //! i for i=1, maxLvls do
            //! i arr[i] = name .. " " .. lvlStr .. " " .. i .. "|r]"
        //! i end
    //! i  end
    //a function that writes in the ability's leveled fields
    //! i function write_fieldArr(maxLvls, fieldName, fieldVariableArray)
        //! i for i=1, maxLvls do
            //! i makechange(current, fieldName, "" .. i, fieldVariableArray[i])
        //! i end
    //! i end
    //! i function write_fieldVar(maxLvls, fieldName, fieldVariable)
        //! i for i=1, maxLvls do
            //! i makechange(current, fieldName, "" .. i, fieldVariable)
        //! i end
    //! i end
    //use this function to make each PC's custom object id
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
    //! i upoi = 0
    //! i upoi2 = 0
    //*************************
    //***** Healing Ward Aura *
    //*************************
    //! i HWARD_Oar1 = {}
    //! i HWARD_Oar1[1] = "0.01"
    //! i HWARD_Oar1[2] = "0.02"
    //! i HWARD_Oar1[3] = "0.03"
    //! i HWARD_Oar1[4] = "0.04"
    //! i HWARD_Oar1[5] = "0.05"
    //! i HWARD_Oar1[6] = "0.06"
    //! i for i=1, 6 do
        //! i setobjecttype("abilities")
        //! i createobject(HWARD_AURA_ID, make_id(CUSTOM_ID, upoi))
        //! i makechange(current, "Oar1", "1", HWARD_Oar1[i])
        //! i makechange(current, "ansf", "(Level " .. i .. ")")
        //! i makechange(current, "arac", ARAC)
        //! i upoi = upoi + 1
    //! i end
    //*************************
    //* Healing Ward Aura -neg*
    //*************************
    //! i HWARD_Oar1 = {}
    //! i HWARD_Oar1[1] = "-0.01"
    //! i HWARD_Oar1[2] = "-0.02"
    //! i HWARD_Oar1[3] = "-0.03"
    //! i HWARD_Oar1[4] = "-0.04"
    //! i HWARD_Oar1[5] = "-0.05"
    //! i HWARD_Oar1[6] = "-0.06"
    //! i for i=1, 6 do
        //! i setobjecttype("abilities")
        //! i createobject(HWARD_AURA_ID, make_id(CUSTOM_ID, upoi))
        //! i makechange(current, "Oar1", "1", HWARD_Oar1[i])
        //! i makechange(current, "ansf", "(Level " .. i .. ")")
        //! i makechange(current, "anam", "Negative Healing Ward Aura")
        //! i makechange(current, "arac", ARAC)
        //! i upoi = upoi + 1
    //! i end
    //*************************
    //***** Healing Ward Unit *
    //*************************
    //! i for i=1, 6 do
        //! i setobjecttype("units")
        //! i createobject(HWARD_UNIT_ID, make_id(CUSTOM_UNIT_ID, upoi2))
        //! i makechange(current, "uabi", "Aw0" .. (i - 1))
        //! i makechange(current, "unsf", "(Level " .. i .. ")")
        //! i makechange(current, "uhpm", "" .. (i * 5))
        //! i upoi2 = upoi2 + 1
    //! i end
    

    
//! endexternalblock
