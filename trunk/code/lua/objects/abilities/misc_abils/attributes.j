//! externalblock extension=lua ObjectMerger $FILENAME$
    //attack speed  - 7 levels
    //! i AA_LVLS = 6
    //mana - 9 levels
    //! i MANA_LVLS = 9
    //! i HEALTH_LVLS = 15
    //attack speed base ability
    //! i AA_ID = "AIsx"
    //mana base ability
    //! i AM_ID = "AImz"
    //hit point base ability
    //! i AHH_ID = "AIl2"
    //spell resistance ability
    //! i AS_ID = "AIsr"
    //damage ability / item base id
    //! i AD_ID = "AIaa"
    //health ability / item base id
    //! i AH_ID = "AImh"
    //! i I_ID = "manh"
    //spell resistance has 100 levels, each increasing by .01
    //! i SP_LVLS = 100
    //prefixes for the custom object names
    //attack speed - ability
    //! i AA_PREFIX = "AA"
    //mana - ability
    //! i AM_PREFIX = "AM"
    //spell resistance - ability
    //! i AS_PREFIX = "AS"
    //damage - item / ability
    //! i AD_PREFIX = "AD"
    //! i ID_PREFIX = "ID"
    //! i TOTAL_HEALTH_TOMES = 50
    //! i TOTAL_DAMAGE_TOMES = 97
    //health - item / ability
    //! i AH_PREFIX = "AH"
    //! i AHH_PREFIX = "H"
    //! i IH_PREFIX = "IH"
    
    //! i function make_id(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "0" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end
    
    //! i function make_id2(id, upoi)
        //! i if upoi < 10 then
            //! i return id .. "00" .. upoi
        //! i elseif upoi < 100 then
            //! i return id .. "0" .. upoi
        //! i else
            //! i return id .. upoi
        //! i end
    //! i end
    
    //****************
    // Attack Speed (AA)
    //****************
    //! i for i = 0, AA_LVLS do
        //! i setobjecttype("abilities")
        //! i createobject(AA_ID, AA_PREFIX .. "0" .. i)
        //set the attack speed increasing: .01, .02, .04, .., 2^n / 100
        //! i makechange(current, "Isx1", "1", "" .. (math.pow(2, i) / 100))
        //! i makechange(current, "aite", "0")
        //! i makechange(current, "ansf", "(Attribute)")
        //! i makechange(current, "anam", "Attack Speed " .. i)
    //! i end
    
    //****************
    // Mana (AM)
    //****************
    //! i for i = 0, MANA_LVLS do
        //! i setobjecttype("abilities")
        //! i createobject(AM_ID, AM_PREFIX .. "0" .. i)
        //set the mana increasing by: 1, 2, 4, .., 2^n
        //! i makechange(current, "Iman", "1", "" .. math.pow(2, i))
        //! i makechange(current, "aite", "0")
        //! i makechange(current, "ansf", "(Attribute)")
        //! i makechange(current, "anam", "Mana " .. i)
        //! i makechange(current, "aart", "ReplaceableTextures\\CommandButtons\\BTNPendantOfMana.blp")
    //! i end

    //****************
    // HEALTH (AHH)
    //****************
    //! i for i = 0, HEALTH_LVLS do
        //! i setobjecttype("abilities")
        //! i createobject(AHH_ID, make_id2(AHH_PREFIX, i))
        //set the mana increasing by: 1, 2, 4, .., 2^n
        //! i makechange(current, "Ilif", "1", "" .. math.pow(2, i))
        //! i makechange(current, "aite", "0")
        //! i makechange(current, "ansf", "(Attribute)")
        //! i makechange(current, "anam", "Health " .. i)
        //! i makechange(current, "aart", "ReplaceableTextures\\CommandButtons\\BTNPeriapt1.blp")
    //! i end

    //****************
    // Spell Resistance (AS)
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(AS_ID, AS_PREFIX .. "00")
    //! i makechange(current, "alev", SP_LVLS)
    //! i makechange(current, "aite", "0")
    //! i makechange(current, "ansf", "(Attribute)")
    //! i makechange(current, "anam", "Spell Resistance")
    //! i for i = 0, SP_LVLS do
        //set the spell resistance increasing: .01, .02, .03, .04, .., 1.0
        //! i makechange(current, "isr2", i, "" .. (i / 100))
    //! i end

    //****************
    // Damage (ability + item)
    //****************
    //! i for i=1, TOTAL_DAMAGE_TOMES do
        //! i setobjecttype("abilities")
        //! i createobject(AD_ID, make_id(AD_PREFIX, i))
        //! i makechange(current, "aite", "0")
        //! i makechange(current, "ansf", "(Attribute)")
        //! i makechange(current, "anam", "Attack +" .. i)
        //! i makechange(current, "Iaa1", "1", "" .. i)
    //! i end
    //make the item now
    //! i for i=1, TOTAL_DAMAGE_TOMES do
        //! i setobjecttype("items")
        //! i createobject(I_ID, make_id(ID_PREFIX, i))
        //! i makechange(current, "iabi", make_id(AD_PREFIX, i))
        ////! i makechange(current, "ansf", "(Attribute)")
        //! i makechange(current, "unam", "Attack Tome (+" .. i .. ")")
    //! i end

    //****************
    // health (ability + item)
    //****************
    //! i for i=1, TOTAL_HEALTH_TOMES do
        //! i setobjecttype("abilities")
        //! i createobject(AH_ID, make_id(AH_PREFIX, i))
        //! i makechange(current, "aite", "0")
        //! i makechange(current, "ansf", "(Attribute)")
        //! i makechange(current, "anam", "Health +" .. i)
        //! i makechange(current, "Ilif", "1", "" .. i)
    //! i end
    //make the item now
    //! i for i=1, TOTAL_HEALTH_TOMES do
        //! i setobjecttype("items")
        //! i createobject(I_ID, make_id(IH_PREFIX, i))
        //! i makechange(current, "iabi", make_id(AH_PREFIX, i))
        ////! i makechange(current, "insf", "(+" .. i .. ")")
        //! i makechange(current, "unam", "Health Tome (+" .. i .. ")")
    //! i end
    
//! endexternalblock
