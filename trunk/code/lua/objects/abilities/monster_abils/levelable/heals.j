//! externalblock extension=lua ObjectMerger $FILENAME$
    //passive base buff ID
    //passive base abilities ID
    //! i HEAL_ID = 'Ahea'
    //! i HOLY_ID = 'AHhb'
    //! i WARD_ID = 'Ahwd'
    //! i WAVE_ID = 'AOhw'
    //! i ESSB_ID = 'Arpl'
    //! i COIL_ID = 'AUdc'
    //! i REJV_ID = 'Arej'
    //total levels for each aura(= 6)
    //! i ALEV = "6"
    //race of healing abilities
    //! i ARAC = "human"
    //classify healing abilities as unit
    //! i AHER = "0"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //prefix for all passives
    //! i CUSTOM_ID = "Ah"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Bh"
    //default "Q" button position
    //! i ABPX_Q = "1"
    //! i ABPY_Q = "2"
    //button positions
    //! i ABPX = {}
    //! i ABPX[0] = "2"
    //! i ABPX[1] = "3"
    //! i ABPX[2] = "1"
    //! i ABPX[3] = "2"
    //! i ABPY = {}
    //! i ABPY[0] = "2"
    //! i ABPY[1] = "2"
    //! i ABPY[2] = "1"
    //! i ABPY[3] = "1"
    //hotkeys
    //! i HOTKEYS = {}
   //! i HOTKEYS[0] = "E"
    //! i HOTKEYS[1] = "R"
    //! i HOTKEYS[2] = "T"
    //! i HOTKEYS[3] = "Y"    
    //! i HOTKEY_STRS = {}
    //! i HOTKEY_STRS[0] = " [|cffffcc00E|r]"
    //! i HOTKEY_STRS[1] = " [|cffffcc00R|r]"
    //! i HOTKEY_STRS[2] = " [|cffffcc00T|r]"
    //! i HOTKEY_STRS[3] = " [|cffffcc00Y|r]"
    //! i HOTKEY = "W"
    //! i HOTKEY_STR = " [|cffffcc00W|r]"
    //counter
    //! i upoi = 0
    //! i buff_id = 0
    
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
    //function to make 4 copies of ability
    //1 for each hotkey: W, E, R, and T
    //! i function copy_abil(id, name, upoi)
        //! i for i=0, 3 do
            //! i setobjecttype("abilities")
            //! i createobject(id, make_id(CUSTOM_ID, upoi + i + 1))
            //! i makechange(current, "abpx", ABPX[i])
            //! i makechange(current, "abpy", ABPY[i])
            //! i makechange(current, "aubx", ABPX[i])
            //! i makechange(current, "auby", ABPY[i])
            //! i makechange(current, "ansf", "(" .. HOTKEYS[i] .. ")")
            //! i makechange(current, "ahky", HOTKEYS[i])
            //! i makechange(current, "auhk", HOTKEYS[i])
            //! i atp1 = {}
            //! i fill_arr(ALEV, name .. HOTKEY_STRS[i], "[|cffffcc00Level", atp1)
            //! i write_fieldArr(ALEV, "atp1", atp1)
        //! i end
        //! i return upoi + 5
    //! i end
            
    //****************************
    //*** Heal (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i HEAL_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i HEAL_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i HEAL_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i HEAL_anam = "Heal"
    //amount healed
    //! i HEAL_Hea1 = {}
    //! i HEAL_Hea1[1] = "5.0"
    //! i HEAL_Hea1[2] = "10.0"
    //! i HEAL_Hea1[3] = "15.0"
    //! i HEAL_Hea1[4] = "25.0"
    //! i HEAL_Hea1[5] = "35.0"
    //! i HEAL_Hea1[6] = "55.0"
    //buff
    //! i HEAL_abuf = "Bhea"
    //cast range
    //! i HEAL_aran = "250.00"
    //cooldown
    //! i HEAL_acdn = "1.00"
    //mana cost
    //! i HEAL_amcs = {}
    //! i HEAL_amcs[1] = "4"
    //! i HEAL_amcs[2] = "8"
    //! i HEAL_amcs[3] = "12"
    //! i HEAL_amcs[4] = "16"
    //! i HEAL_amcs[5] = "20"
    //! i HEAL_amcs[6] = "24"
    //targets
    //! i HEAL_atar = "air,ground,friend,vuln,invu,self,organic,nonancient,neutral"
    //autocast
    //! i HEAL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i HEAL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i HEAL_atp1 = {}
    //! i fill_arr(ALEV, HEAL_anam .. HOTKEY_STR, "[|cffffcc00Level", HEAL_atp1)
    //tool tip (display quantity/effect)
    //! i HEAL_aub1 = {}
    //! i for i=1, ALEV do
        //! i HEAL_aub1[i] = "Heals a target friendly wounded unit for " .. HEAL_Hea1[i] .. " hit points."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(HEAL_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", HEAL_anam)
    //field values
    //! i write_fieldArr(ALEV, "Hea1", HEAL_Hea1)
    //! i write_fieldVar(ALEV, "abuf", HEAL_abuf)
    //! i write_fieldVar(ALEV, "aran", HEAL_aran)
    //! i write_fieldVar(ALEV, "acdn", HEAL_acdn)
    //! i write_fieldArr(ALEV, "amcs", HEAL_amcs)
    //! i write_fieldVar(ALEV, "atar", HEAL_atar)
    //! i write_fieldArr(ALEV, "atp1", HEAL_atp1)
    //! i write_fieldArr(ALEV, "aub1", HEAL_aub1)
    //! i write_fieldVar(ALEV, "aut1", HEAL_aut1)
    //! i write_fieldVar(ALEV, "auu1", HEAL_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, HEAL_anam, upoi)
    //****************************
    //*** Holy Light
    //****************************
    //the button used for the buff/aura
    ////! i HOLY_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i HOLY_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i HOLY_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i HOLY_anam = "Holy Light"
    //amount HOLYed
    //! i HOLY_Hhb1 = {}
    //! i HOLY_Hhb1[1] = "75.00"
    //! i HOLY_Hhb1[2] = "150.00"
    //! i HOLY_Hhb1[3] = "225.00"
    //! i HOLY_Hhb1[4] = "325.00"
    //! i HOLY_Hhb1[5] = "425.00"
    //! i HOLY_Hhb1[6] = "625.00"
    //buff
    ////! i HOLY_abuf = "Bhea"
    //cast range
    //! i HOLY_aran = "800.00"
    //cooldown
    //! i HOLY_acdn = "5.00"
    //mana cost
    //! i HOLY_amcs = {}
    //! i HOLY_amcs[1] = "75"
    //! i HOLY_amcs[2] = "100"
    //! i HOLY_amcs[3] = "125"
    //! i HOLY_amcs[4] = "175"
    //! i HOLY_amcs[5] = "225"
    //! i HOLY_amcs[6] = "300"
    //targets
    //! i HOLY_atar = "air,ground,friend,vuln,invu,organic,nonancient,neutral"
    //autocast
    ////! i HOLY_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i HOLY_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i HOLY_atp1 = {}
    //! i fill_arr(ALEV, HOLY_anam .. HOTKEY_STR, "[|cffffcc00Level", HOLY_atp1)
    //tool tip (display quantity/effect)
    //! i HOLY_aub1 = {}
    //! i for i=1, ALEV do
        //! i HOLY_aub1[i] = "A holy light that can heal a friendly living unit for " .. HOLY_Hhb1[i] .. " or deal half damage to an enemy " .. ZOMBIE .. " monster."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(HOLY_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", HOLY_anam)
    //field values
    //! i write_fieldArr(ALEV, "Hhb1", HOLY_Hhb1)
    ////! i write_fieldVar(ALEV, "abuf", HOLY_abuf)
    //! i write_fieldVar(ALEV, "aran", HOLY_aran)
    //! i write_fieldVar(ALEV, "acdn", HOLY_acdn)
    //! i write_fieldArr(ALEV, "amcs", HOLY_amcs)
    //! i write_fieldVar(ALEV, "atar", HOLY_atar)
    //! i write_fieldArr(ALEV, "atp1", HOLY_atp1)
    //! i write_fieldArr(ALEV, "aub1", HOLY_aub1)
    ////! i write_fieldVar(ALEV, "aut1", HOLY_aut1)
    ////! i write_fieldVar(ALEV, "auu1", HOLY_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, HOLY_anam, upoi)
    //****************************
    //*** Healing Ward
    //****************************
    //the button used for the buff/aura
    ////! i WARD_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i WARD_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i WARD_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i WARD_anam = "Healing Ward"
    //which healing ward unit: from 0.01 to 0.06
    //! i WARD_hwdu = {}
    //! i WARD_hwdu[1] = "uw00"
    //! i WARD_hwdu[2] = "uw01"
    //! i WARD_hwdu[3] = "uw02"
    //! i WARD_hwdu[4] = "uw03"
    //! i WARD_hwdu[5] = "uw04"
    //! i WARD_hwdu[6] = "uw05"
    //buff
    //! i WARD_abuf = "Bhwd"
    //cast range
    //! i WARD_aran = "500.00"
    //duration
    //! i WARD_adur = {}
    //! i WARD_adur[1] = "15.00"
    //! i WARD_adur[2] = "16.00"
    //! i WARD_adur[3] = "17.00"
    //! i WARD_adur[4] = "19.00"
    //! i WARD_adur[5] = "21.00"
    //! i WARD_adur[6] = "24.00"
    //cooldown
    //! i WARD_acdn = "0.00"
    //mana cost
    //! i WARD_amcs = {}
    //! i WARD_amcs[1] = "150"
    //! i WARD_amcs[2] = "200"
    //! i WARD_amcs[3] = "250"
    //! i WARD_amcs[4] = "350"
    //! i WARD_amcs[5] = "450"
    //! i WARD_amcs[6] = "650"
    //targets
    ////! i WARD_atar = "air,ground,friend,vuln,invu,organic,nonancient,neutral"
    //autocast
    ////! i WARD_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i WARD_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i WARD_atp1 = {}
    //! i fill_arr(ALEV, WARD_anam .. HOTKEY_STR, "[|cffffcc00Level", WARD_atp1)
    //tool tip (display quantity/effect)
    //! i WARD_aub1 = {}
    //! i for i=1, ALEV do
        //! i WARD_aub1[i] = "Summons an immovable ward that heals " .. i .. "%  of a nearby friendly non-mechanical unit's hit points per second.  Lasts " .. WARD_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(WARD_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", WARD_anam)
    //field values
    //! i write_fieldArr(ALEV, "hwdu", WARD_hwdu)
    //! i write_fieldVar(ALEV, "abuf", WARD_abuf)
    //! i write_fieldVar(ALEV, "aran", WARD_aran)
    //! i write_fieldVar(ALEV, "acdn", WARD_acdn)
    //! i write_fieldArr(ALEV, "adur", WARD_adur)
    //! i write_fieldArr(ALEV, "ahdu", WARD_adur)
    //! i write_fieldArr(ALEV, "amcs", WARD_amcs)
    ///! i write_fieldVar(ALEV, "atar", WARD_atar)
    //! i write_fieldArr(ALEV, "atp1", WARD_atp1)
    //! i write_fieldArr(ALEV, "aub1", WARD_aub1)
    ////! i write_fieldVar(ALEV, "aut1", WARD_aut1)
    ////! i write_fieldVar(ALEV, "auu1", WARD_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, WARD_anam, upoi)
    //****************************
    //*** Healing Wave
    //****************************
    //the button used for the buff/aura
    ////! i WAVE_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i WAVE_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i WAVE_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i WAVE_anam = "Healing Wave"
    //damage reduced per target
    //! i WAVE_Ocl3 = "0.25"
    //healing per target
    //! i WAVE_Ocl1 = {}
    //! i WAVE_Ocl1[1] = "50.00"
    //! i WAVE_Ocl1[2] = "75.00"
    //! i WAVE_Ocl1[3] = "100.00"
    //! i WAVE_Ocl1[4] = "150.00"
    //! i WAVE_Ocl1[5] = "200.00"
    //! i WAVE_Ocl1[6] = "300.00"
    //number of targets
    //! i WAVE_Ocl2 = {}
    //! i WAVE_Ocl2[1] = "2"
    //! i WAVE_Ocl2[2] = "3"
    //! i WAVE_Ocl2[3] = "4"
    //! i WAVE_Ocl2[4] = "5"
    //! i WAVE_Ocl2[5] = "6"
    //! i WAVE_Ocl2[6] = "7"
    //area of effect
    //! i WAVE_aare = "500.00"
    //buff
    ////! i WAVE_abuf = "Bhwd"
    //cast range
    //! i WAVE_aran = "700.00"
    //duration
    ////! i WAVE_adur = {}
    //cooldown
    //! i WAVE_acdn = "9.00"
    //mana cost
    //! i WAVE_amcs = {}
    //! i WAVE_amcs[1] = "80"
    //! i WAVE_amcs[2] = "110"
    //! i WAVE_amcs[3] = "140"
    //! i WAVE_amcs[4] = "200"
    //! i WAVE_amcs[5] = "260"
    //! i WAVE_amcs[6] = "340"
    //targets
    //! i WAVE_atar = "air,ground,friend,self,vuln,invu,organic"
    //autocast
    ////! i WAVE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i WAVE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i WAVE_atp1 = {}
    //! i fill_arr(ALEV, WAVE_anam .. HOTKEY_STR, "[|cffffcc00Level", WAVE_atp1)
    //tool tip (display quantity/effect)
    //! i WAVE_aub1 = {}
    //! i for i=1, ALEV do
        //! i WAVE_aub1[i] = "Calls forth a wave of healing energy that bounces up to " .. WAVE_Ocl2[i] .. " times,  healing " .. WAVE_Ocl1[i] .. " damage on the primary target.  Each jump heals 25% less damage."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(WAVE_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", WAVE_anam)
    //field values
    //! i write_fieldVar(ALEV, "Ocl3", WAVE_Ocl3)
    //! i write_fieldArr(ALEV, "Ocl1", WAVE_Ocl1)
    //! i write_fieldArr(ALEV, "Ocl2", WAVE_Ocl2)
    ////! i write_fieldVar(ALEV, "abuf", WAVE_abuf)
    //! i write_fieldVar(ALEV, "aare", WAVE_aare)
    //! i write_fieldVar(ALEV, "aran", WAVE_aran)
    //! i write_fieldVar(ALEV, "acdn", WAVE_acdn)
    ////! i write_fieldArr(ALEV, "adur", WAVE_adur)
    ////! i write_fieldArr(ALEV, "ahdu", WAVE_adur)
    //! i write_fieldArr(ALEV, "amcs", WAVE_amcs)
    //! i write_fieldVar(ALEV, "atar", WAVE_atar)
    //! i write_fieldArr(ALEV, "atp1", WAVE_atp1)
    //! i write_fieldArr(ALEV, "aub1", WAVE_aub1)
    ////! i write_fieldVar(ALEV, "aut1", WAVE_aut1)
    ////! i write_fieldVar(ALEV, "auu1", WAVE_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, WAVE_anam, upoi)
    //****************************
    //*** Essence of Blight (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i ESSB_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i ESSB_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i ESSB_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i ESSB_anam = "Essence of Blight"
    //amount healed
    //! i ESSB_Rej1 = {}
    //! i ESSB_Rej1[1] = "5.0"
    //! i ESSB_Rej1[2] = "10.0"
    //! i ESSB_Rej1[3] = "15.0"
    //! i ESSB_Rej1[4] = "25.0"
    //! i ESSB_Rej1[5] = "35.0"
    //! i ESSB_Rej1[6] = "50.0"
    // max units affected
    //! i ESSB_Rpb6 = {}
    //! i ESSB_Rpb6[1] = "3"
    //! i ESSB_Rpb6[2] = "5"
    //! i ESSB_Rpb6[3] = "7"
    //! i ESSB_Rpb6[4] = "9"
    //! i ESSB_Rpb6[5] = "11"
    //! i ESSB_Rpb6[6] = "13"
    // max units charged to caster
    //! i ESSB_Rpb5 = {}
    //! i ESSB_Rpb5[1] = "2"
    //! i ESSB_Rpb5[2] = "4"
    //! i ESSB_Rpb5[3] = "6"
    //! i ESSB_Rpb5[4] = "8"
    //! i ESSB_Rpb5[5] = "10"
    //! i ESSB_Rpb5[6] = "12"
    //area of effect
    //! i ESSB_aare = {}
    //! i ESSB_aare[1] = "500.00"
    //! i ESSB_aare[2] = "550.00"
    //! i ESSB_aare[3] = "600.00"
    //! i ESSB_aare[4] = "700.00"
    //! i ESSB_aare[5] = "800.00"
    //! i ESSB_aare[6] = "1000.00"
    //buff
    //! i ESSB_abuf = "Brpl"
    //cast range
    //! i ESSB_aran = "250.00"
    //cooldown
    //! i ESSB_acdn = "1.00"
    //duration
    //! i ESSB_adur = "1.00"
    //mana cost
    //! i ESSB_amcs = {}
    //! i ESSB_amcs[1] = "6"
    //! i ESSB_amcs[2] = "10"
    //! i ESSB_amcs[3] = "14"
    //! i ESSB_amcs[4] = "18"
    //! i ESSB_amcs[5] = "22"
    //! i ESSB_amcs[6] = "26"
    //targets
    //! i ESSB_atar = "ground,air,friend,self,organic,vuln,invu"
    //autocast
    //! i ESSB_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i ESSB_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i ESSB_atp1 = {}
    //! i fill_arr(ALEV, ESSB_anam .. HOTKEY_STR, "[|cffffcc00Level", ESSB_atp1)
    //tool tip (display quantity/effect)
    //! i ESSB_aub1 = {}
    //! i for i=1, ALEV do
        //! i ESSB_aub1[i] = "Restores " .. ESSB_Rej1[i] .. " hit points to a maximum of " .. ESSB_Rpb6[i] .. " nearby friendly units in " .. ESSB_aare[i] .. " range."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(ESSB_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", ESSB_anam)
    //field values
    //! i write_fieldArr(ALEV, "Rej1", ESSB_Rej1)
    //! i write_fieldArr(ALEV, "Rpb6", ESSB_Rpb6)
    //! i write_fieldArr(ALEV, "Rpb5", ESSB_Rpb5)
    //! i write_fieldArr(ALEV, "aare", ESSB_aare)
    //! i write_fieldVar(ALEV, "abuf", ESSB_abuf)
    //! i write_fieldVar(ALEV, "aran", ESSB_aran)
    //! i write_fieldVar(ALEV, "acdn", ESSB_acdn)
    //! i write_fieldVar(ALEV, "adur", ESSB_adur)
    //! i write_fieldVar(ALEV, "ahdu", ESSB_adur)
    //! i write_fieldArr(ALEV, "amcs", ESSB_amcs)
    //! i write_fieldVar(ALEV, "atar", ESSB_atar)
    //! i write_fieldArr(ALEV, "atp1", ESSB_atp1)
    //! i write_fieldArr(ALEV, "aub1", ESSB_aub1)
    //! i write_fieldVar(ALEV, "aut1", ESSB_aut1)
    //! i write_fieldVar(ALEV, "auu1", ESSB_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ESSB_anam, upoi)
    //****************************
    //*** Death Coil
    //****************************
    //the button used for the buff/aura
    ////! i COIL_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i COIL_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i COIL_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i COIL_anam = "Death Coil"
    //amount COILed
    //! i COIL_Udc1 = {}
    //! i COIL_Udc1[1] = "100.00"
    //! i COIL_Udc1[2] = "200.00"
    //! i COIL_Udc1[3] = "300.00"
    //! i COIL_Udc1[4] = "425.00"
    //! i COIL_Udc1[5] = "550.00"
    //! i COIL_Udc1[6] = "700.00"
    //buff
    ////! i COIL_abuf = "Bhea"
    //cast range
    //! i COIL_aran = "800.00"
    //cooldown
    //! i COIL_acdn = "6.00"
    //mana cost
    //! i COIL_amcs = {}
    //! i COIL_amcs[1] = "85"
    //! i COIL_amcs[2] = "105"
    //! i COIL_amcs[3] = "135"
    //! i COIL_amcs[4] = "185"
    //! i COIL_amcs[5] = "235"
    //! i COIL_amcs[6] = "335"
    //targets
    //! i COIL_atar = "air,ground,friend,vuln,invu,organic,nonancient,neutral"
    //autocast
    ////! i COIL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i COIL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i COIL_atp1 = {}
    //! i fill_arr(ALEV, COIL_anam .. HOTKEY_STR, "[|cffffcc00Level", COIL_atp1)
    //tool tip (display quantity/effect)
    //! i COIL_aub1 = {}
    //! i for i=1, ALEV do
        //! i COIL_aub1[i] = "A coil of death that can heal a friendly " .. ZOMBIE .. " unit for " .. COIL_Udc1[i] .. " or deal half damage to an enemy living unit."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(COIL_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", COIL_anam)
    //field values
    //! i write_fieldArr(ALEV, "Hhb1", COIL_Udc1)
    ////! i write_fieldVar(ALEV, "abuf", COIL_abuf)
    //! i write_fieldVar(ALEV, "aran", COIL_aran)
    //! i write_fieldVar(ALEV, "acdn", COIL_acdn)
    //! i write_fieldArr(ALEV, "amcs", COIL_amcs)
    //! i write_fieldVar(ALEV, "atar", COIL_atar)
    //! i write_fieldArr(ALEV, "atp1", COIL_atp1)
    //! i write_fieldArr(ALEV, "aub1", COIL_aub1)
    ////! i write_fieldVar(ALEV, "aut1", COIL_aut1)
    ////! i write_fieldVar(ALEV, "auu1", COIL_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, COIL_anam, upoi)
    //****************************
    //*** Rejuvenation
    //****************************
    //the button used for the buff/aura
    ////! i REJV_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i REJV_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i REJV_ATAT = "MistAura.mdx"
    //the name of the ability
    //! i REJV_anam = "Rejuvenation"
    //allow when full (always)
    //! i REJV_Rej3 = "3"
    //amount healed
    //! i REJV_Rej1 = {}
    //! i REJV_Rej1[1] = "200.00"
    //! i REJV_Rej1[2] = "300.00"
    //! i REJV_Rej1[3] = "400.00"
    //! i REJV_Rej1[4] = "600.00"
    //! i REJV_Rej1[5] = "800.00"
    //! i REJV_Rej1[6] = "1000.00"
    //buff
    //! i REJV_abuf = "Brej"
    //cast range
    //! i REJV_aran = "400.00"
    //cooldown
    //! i REJV_acdn = "1.00"
    //duration
    //! i REJV_adur = {}
    //! i REJV_adur[1] = "12.00"
    //! i REJV_adur[2] = "14.00"
    //! i REJV_adur[3] = "16.00"
    //! i REJV_adur[4] = "20.00"
    //! i REJV_adur[5] = "24.00"
    //! i REJV_adur[6] = "30.00"
    //mana cost
    //! i REJV_amcs = {}
    //! i REJV_amcs[1] = "125"
    //! i REJV_amcs[2] = "175"
    //! i REJV_amcs[3] = "225"
    //! i REJV_amcs[4] = "300"
    //! i REJV_amcs[5] = "375"
    //! i REJV_amcs[6] = "475"
    //targets
    //! i REJV_atar = "air,ground,friend,vuln,invu,organic,nonancient,neutral"
    //autocast
    ////! i REJV_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i REJV_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i REJV_atp1 = {}
    //! i fill_arr(ALEV, REJV_anam .. HOTKEY_STR, "[|cffffcc00Level", REJV_atp1)
    //tool tip (display quantity/effect)
    //! i REJV_aub1 = {}
    //! i for i=1, ALEV do
        //! i REJV_aub1[i] = "Heals a target friendly unit for ".. REJV_Rej1[i] .. " hit points over " .. REJV_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(REJV_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", REJV_anam)
    //field values
    //! i write_fieldVar(ALEV, "Rej3", REJV_Rej3)
    //! i write_fieldArr(ALEV, "Rej1", REJV_Rej1)
    //! i write_fieldVar(ALEV, "abuf", REJV_abuf)
    //! i write_fieldVar(ALEV, "aran", REJV_aran)
    //! i write_fieldVar(ALEV, "acdn", REJV_acdn)
    //! i write_fieldArr(ALEV, "adur", REJV_adur)
    //! i write_fieldArr(ALEV, "ahdu", REJV_adur)
    //! i write_fieldArr(ALEV, "amcs", REJV_amcs)
    //! i write_fieldVar(ALEV, "atar", REJV_atar)
    //! i write_fieldArr(ALEV, "atp1", REJV_atp1)
    //! i write_fieldArr(ALEV, "aub1", REJV_aub1)
    ////! i write_fieldVar(ALEV, "aut1", REJV_aut1)
    ////! i write_fieldVar(ALEV, "auu1", REJV_auu1)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, REJV_anam, upoi)
    

    
//! endexternalblock
