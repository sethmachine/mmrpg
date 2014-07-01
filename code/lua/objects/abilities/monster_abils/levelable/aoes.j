//! externalblock extension=lua ObjectMerger $FILENAME$
    //passive base buff ID
    //passive base abilities ID
    //! i DISP_ID = 'Adis'
    //! i BLIZ_ID = 'AHbz'
    //! i CLAP_ID = 'AHtc'
    //! i CHAN_ID = 'AOcl'
    //! i WAVE_ID = 'AOsh'
    //! i STMP_ID = 'AOws'
    //! i DEVO_ID = 'Advm'
    //! i CARR_ID = 'AUcs'
    //! i DECY_ID = 'AUdd'
    //! i NOVA_ID = 'AUfn'
    //! i IMP_ID = 'AUim'
    //! i FAN_ID = 'AEfk'
    //! i LGHT_ID = 'ACmo'
    //! i BFRO_ID = 'ACbf'
    //! i BFIR_ID = 'ANbf'
    //! i FORK_ID = 'ANfl'
    //! i FIRE_ID = 'ANrf'
    //! i TIDL_ID = 'ACcv'
    //buff ids
    //total levels for each aura(= 6)
    //! i ALEV = "6"
    //race of healing abilities
    //! i ARAC = "orc"
    //req
    //! i AREQ = ""
    //classify healing abilities as unit
    //! i AHER = "1"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //prefix for all autocasts
    //! i CUSTOM_ID = "Ae"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Be"
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
    //! i upoi2 = 0
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
    //*** Dispel Magic (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i DISP_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerDISP.blp"
    //the aura buff text
    ////! i DISP_fube = "This unit is under the effects of Inner DISP; its attack damage is increased."
    //the buff effect itself
    ////! i DISP_ftat = "Abilities\\Spells\\Human\\InnerDISP\\InnerDISPTarget.mdl"
    //the name of the ability
    //! i DISP_anam = "Dispel Magic"
    //! i DISP_areq = ""
    //defense reduction
    //! i DISP_Adm2 = {}
    //! i DISP_Adm2[1] = "100.00"
    //! i DISP_Adm2[2] = "150.00"
    //! i DISP_Adm2[3] = "200.00"
    //! i DISP_Adm2[4] = "300.00"
    //! i DISP_Adm2[5] = "400.00"
    //! i DISP_Adm2[6] = "600.00"
    //aoe
    //! i DISP_aare = {}
    //! i DISP_aare[1] = "200.00"
    //! i DISP_aare[2] = "225.00"
    //! i DISP_aare[3] = "250.00"
    //! i DISP_aare[4] = "300.00"
    //! i DISP_aare[5] = "350.00"
    //! i DISP_aare[6] = "450.00"
    //buff
    ////! i DISP_abuf = 'Bfae'
    //cast range
    //! i DISP_aran = "500.00"
    //cooldown
    //! i DISP_acdn = {}
    //! i DISP_acdn[1] = "0.00"
    //! i DISP_acdn[2] = "0.00"
    //! i DISP_acdn[3] = "0.00"
    //! i DISP_acdn[4] = "0.00"
    //! i DISP_acdn[5] = "0.00"
    //! i DISP_acdn[6] = "0.00"
    //duration
    //! i DISP_adur = {}
    //! i DISP_adur[1] = "0.00"
    //! i DISP_adur[2] = "0.00"
    //! i DISP_adur[3] = "0.00"
    //! i DISP_adur[4] = "0.00"
    //! i DISP_adur[5] = "0.00"
    //! i DISP_adur[6] = "0.0"
    //mana cost
    //! i DISP_amcs = {}
    //! i DISP_amcs[1] = "75"
    //! i DISP_amcs[2] = "100"
    //! i DISP_amcs[3] = "125"
    //! i DISP_amcs[4] = "175"
    //! i DISP_amcs[5] = "225"
    //! i DISP_amcs[6] = "300"
    //targets
    //! i DISP_atar = "air,ground,enemy,neutral"
    //autocast
    //! i DISP_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i DISP_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i DISP_atp1 = {}
    //! i fill_arr(ALEV, DISP_anam .. HOTKEY_STR, "[|cffffcc00Level", DISP_atp1)
    //tool tip (display quantity/effect)
    //! i DISP_aub1 = {}
    //! i for i=1, ALEV do
        //! i DISP_aub1[i] = "Removes all buffs from units in target area.  Deals " .. DISP_Adm2[i] .. " damage to summoned units."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(DISP_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", DISP_anam)
    //field values
    //! i write_fieldArr(ALEV, "Adm2", DISP_Adm2)
    //! i write_fieldArr(ALEV, "aare", DISP_aare)
    ////! i write_fieldVar(ALEV, "abuf", DISP_abuf)
    //! i write_fieldVar(ALEV, "aran", DISP_aran)
    //! i write_fieldArr(ALEV, "acdn", DISP_acdn)
    //! i write_fieldArr(ALEV, "adur", DISP_adur)
    //! i write_fieldArr(ALEV, "ahdu", DISP_adur)
    //! i write_fieldArr(ALEV, "amcs", DISP_amcs)
    //! i write_fieldVar(ALEV, "atar", DISP_atar)
    //! i write_fieldArr(ALEV, "atp1", DISP_atp1)
    //! i write_fieldArr(ALEV, "aub1", DISP_aub1)
    ////! i write_fieldVar(ALEV, "aut1", DISP_aut1)
    ////! i write_fieldVar(ALEV, "auu1", DISP_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DISP_anam, upoi)
    //****************************
    //*** Ice Air(Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i BLIZ_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerBLIZ.blp"
    //the aura buff text
    ////! i BLIZ_fube = "This unit is under the effects of Inner BLIZ; its attack damage is increased."
    //the buff effect itself
    ////! i BLIZ_ftat = "Abilities\\Spells\\Human\\InnerBLIZ\\InnerBLIZTarget.mdl"
    //the name of the ability
    //! i BLIZ_anam = "Ice Air"
    //! i BLIZ_areq = ""
    //damage per wave
    //! i BLIZ_Hbz2 = {}
    //! i BLIZ_Hbz2[1] = "10.00"
    //! i BLIZ_Hbz2[2] = "20.00"
    //! i BLIZ_Hbz2[3] = "30.00"
    //! i BLIZ_Hbz2[4] = "50.00"
    //! i BLIZ_Hbz2[5] = "70.00"
    //! i BLIZ_Hbz2[6] = "100.00"
    //max damage
    //! i BLIZ_Hbz6 = "9999.0"
    //number of shards
    //! i BLIZ_Hbz3 = {}
    //! i BLIZ_Hbz3[1] = "6"
    //! i BLIZ_Hbz3[2] = "9"
    //! i BLIZ_Hbz3[3] = "12"
    //! i BLIZ_Hbz3[4] = "16"
    //! i BLIZ_Hbz3[5] = "20"
    //! i BLIZ_Hbz3[6] = "26"
    //number of waves
    //! i BLIZ_Hbz1 = {}
    //! i BLIZ_Hbz1[1] = "3"
    //! i BLIZ_Hbz1[2] = "4"
    //! i BLIZ_Hbz1[3] = "5"
    //! i BLIZ_Hbz1[4] = "7"
    //! i BLIZ_Hbz1[5] = "9"
    //! i BLIZ_Hbz1[6] = "11"
    //aoe
    //! i BLIZ_aare = {}
    //! i BLIZ_aare[1] = "200.00"
    //! i BLIZ_aare[2] = "225.00"
    //! i BLIZ_aare[3] = "250.00"
    //! i BLIZ_aare[4] = "300.00"
    //! i BLIZ_aare[5] = "350.00"
    //! i BLIZ_aare[6] = "450.00"
    //buff
    //! i BLIZ_abuf = 'BHbd,BHbz'
    //cast range
    //! i BLIZ_aran = "800.00"
    //cast time
    //! i BLIZ_acas = "1.0"
    //cooldown
    //! i BLIZ_acdn = {}
    //! i BLIZ_acdn[1] = "6.00"
    //! i BLIZ_acdn[2] = "7.00"
    //! i BLIZ_acdn[3] = "8.00"
    //! i BLIZ_acdn[4] = "10.00"
    //! i BLIZ_acdn[5] = "12.00"
    //! i BLIZ_acdn[6] = "14.00"
    //duration
    //! i BLIZ_adur = {}
    //! i BLIZ_adur[1] = "0.00"
    //! i BLIZ_adur[2] = "0.00"
    //! i BLIZ_adur[3] = "0.00"
    //! i BLIZ_adur[4] = "0.00"
    //! i BLIZ_adur[5] = "0.00"
    //! i BLIZ_adur[6] = "0.0"
    //effect
    //! i BLIZ_aeff = 'XHbz'
    //mana cost
    //! i BLIZ_amcs = {}
    //! i BLIZ_amcs[1] = "75"
    //! i BLIZ_amcs[2] = "125"
    //! i BLIZ_amcs[3] = "175"
    //! i BLIZ_amcs[4] = "250"
    //! i BLIZ_amcs[5] = "325"
    //! i BLIZ_amcs[6] = "425"
    //targets
    //! i BLIZ_atar = ""
    //autocast
    //! i BLIZ_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i BLIZ_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i BLIZ_atp1 = {}
    //! i fill_arr(ALEV, BLIZ_anam .. HOTKEY_STR, "[|cffffcc00Level", BLIZ_atp1)
    //tool tip (BLIZlay quantity/effect)
    //! i BLIZ_aub1 = {}
    //! i for i=1, ALEV do
        //! i BLIZ_aub1[i] = "Calls down " .. BLIZ_Hbz1[i] .. " freezing ice shard waves; each wave deals " .. BLIZ_Hbz2[i] .. " damage to units in an area."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(BLIZ_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", BLIZ_anam)
    //field values
    //! i write_fieldArr(ALEV, "Hbz3", BLIZ_Hbz3)
    //! i write_fieldArr(ALEV, "Hbz1", BLIZ_Hbz1)
    //! i write_fieldArr(ALEV, "Hbz2", BLIZ_Hbz2)
    //! i write_fieldVar(ALEV, "Hbz6", BLIZ_Hbz6)
    //! i write_fieldArr(ALEV, "aare", BLIZ_aare)
    //! i write_fieldVar(ALEV, "abuf", BLIZ_abuf)
    //! i write_fieldVar(ALEV, "aran", BLIZ_aran)
    //! i write_fieldVar(ALEV, "acas", BLIZ_acas)
    //! i write_fieldArr(ALEV, "acdn", BLIZ_acdn)
    //! i write_fieldArr(ALEV, "adur", BLIZ_adur)
    //! i write_fieldVar(ALEV, "aeff", BLIZ_aeff)
    //! i write_fieldArr(ALEV, "ahdu", BLIZ_adur)
    //! i write_fieldArr(ALEV, "amcs", BLIZ_amcs)
    //! i write_fieldVar(ALEV, "atar", BLIZ_atar)
    //! i write_fieldArr(ALEV, "atp1", BLIZ_atp1)
    //! i write_fieldArr(ALEV, "aub1", BLIZ_aub1)
    ////! i write_fieldVar(ALEV, "aut1", BLIZ_aut1)
    ////! i write_fieldVar(ALEV, "auu1", BLIZ_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BLIZ_anam, upoi)
    //****************************
    //*** Thunder Clap
    //****************************
    //the button used for the buff/aura
    ////! i CLAP_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerCLAP.blp"
    //the aura buff text
    ////! i CLAP_fube = "This unit is under the effects of Inner CLAP; its attack damage is increased."
    //the buff effect itself
    ////! i CLAP_ftat = "Abilities\\Spells\\Human\\InnerCLAP\\InnerCLAPTarget.mdl"
    //the name of the ability
    //! i CLAP_anam = "Thunder Clap"
    //! i CLAP_areq = ""
    //damage
    //! i CLAP_Htc1 = {}
    //! i CLAP_Htc1[1] = "30.00"
    //! i CLAP_Htc1[2] = "50.00"
    //! i CLAP_Htc1[3] = "70.00"
    //! i CLAP_Htc1[4] = "100.00"
    //! i CLAP_Htc1[5] = "130.00"
    //! i CLAP_Htc1[6] = "170.00"
    //attack speed reduction
    //! i CLAP_Htc4 = {}
    //! i CLAP_Htc4[1] = "0.25"
    //! i CLAP_Htc4[2] = "0.30"
    //! i CLAP_Htc4[3] = "0.35"
    //! i CLAP_Htc4[4] = "0.40"
    //! i CLAP_Htc4[5] = "0.45"
    //! i CLAP_Htc4[6] = "0.50"
    //movement speed reduction
    //! i CLAP_Htc3 = {}
    //! i CLAP_Htc3[1] = "0.25"
    //! i CLAP_Htc3[2] = "0.30"
    //! i CLAP_Htc3[3] = "0.35"
    //! i CLAP_Htc3[4] = "0.40"
    //! i CLAP_Htc3[5] = "0.45"
    //! i CLAP_Htc3[6] = "0.50"
    //aoe
    //! i CLAP_aare = {}
    //! i CLAP_aare[1] = "200.00"
    //! i CLAP_aare[2] = "225.00"
    //! i CLAP_aare[3] = "250.00"
    //! i CLAP_aare[4] = "300.00"
    //! i CLAP_aare[5] = "350.00"
    //! i CLAP_aare[6] = "450.00"
    //buff
    //! i CLAP_abuf = 'BHtc'
    //cast range
    //! i CLAP_aran = "800.00"
    //cast time
    //! i CLAP_acas = "1.0"
    //cooldown
    //! i CLAP_acdn = {}
    //! i CLAP_acdn[1] = "6.00"
    //! i CLAP_acdn[2] = "6.00"
    //! i CLAP_acdn[3] = "6.00"
    //! i CLAP_acdn[4] = "7.00"
    //! i CLAP_acdn[5] = "7.00"
    //! i CLAP_acdn[6] = "8.00"
    //duration
    //! i CLAP_adur = {}
    //! i CLAP_adur[1] = "2.00"
    //! i CLAP_adur[2] = "2.50"
    //! i CLAP_adur[3] = "3.00"
    //! i CLAP_adur[4] = "3.50"
    //! i CLAP_adur[5] = "4.50"
    //! i CLAP_adur[6] = "5.00"
    //effect
    ////! i CLAP_aeff = 'XHbz'
    //mana cost
    //! i CLAP_amcs = {}
    //! i CLAP_amcs[1] = "65"
    //! i CLAP_amcs[2] = "90"
    //! i CLAP_amcs[3] = "115"
    //! i CLAP_amcs[4] = "145"
    //! i CLAP_amcs[5] = "175"
    //! i CLAP_amcs[6] = "215"
    //targets
    //! i CLAP_atar = "ground,neutral"
    //autocast
    //! i CLAP_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i CLAP_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i CLAP_atp1 = {}
    //! i fill_arr(ALEV, CLAP_anam .. HOTKEY_STR, "[|cffffcc00Level", CLAP_atp1)
    //tool tip (CLAPlay quantity/effect)
    //! i CLAP_aub1 = {}
    //! i for i=1, ALEV do
        //! i CLAP_aub1[i] = "Slams the ground, dealing " .. CLAP_Htc1[i] .. " damage to nearby enemy land units and slowing their movement by " .. CLAP_Htc3[i] .. "% and attack rate by " .. CLAP_Htc4[i] .. "% for " .. CLAP_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(CLAP_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", CLAP_anam)
    //field values
    //! i write_fieldArr(ALEV, "Htc1", CLAP_Htc1)
    //! i write_fieldArr(ALEV, "Htc4", CLAP_Htc4)
    //! i write_fieldArr(ALEV, "Htc3", CLAP_Htc3)
    //! i write_fieldArr(ALEV, "aare", CLAP_aare)
    //! i write_fieldVar(ALEV, "abuf", CLAP_abuf)
    ////! i write_fieldVar(ALEV, "aran", CLAP_aran)
    ////! i write_fieldVar(ALEV, "acas", CLAP_acas)
    //! i write_fieldArr(ALEV, "acdn", CLAP_acdn)
    //! i write_fieldArr(ALEV, "adur", CLAP_adur)
    ////! i write_fieldVar(ALEV, "aeff", CLAP_aeff)
    //! i write_fieldArr(ALEV, "ahdu", CLAP_adur)
    //! i write_fieldArr(ALEV, "amcs", CLAP_amcs)
    //! i write_fieldVar(ALEV, "atar", CLAP_atar)
    //! i write_fieldArr(ALEV, "atp1", CLAP_atp1)
    //! i write_fieldArr(ALEV, "aub1", CLAP_aub1)
    ////! i write_fieldVar(ALEV, "aut1", CLAP_aut1)
    ////! i write_fieldVar(ALEV, "auu1", CLAP_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CLAP_anam, upoi)
    //****************************
    //*** Chain Lightning (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i CHAN_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerCHAN.blp"
    //the aura buff text
    ////! i CHAN_fube = "This unit is under the effects of Inner CHAN; its attack damage is increased."
    //the buff effect itself
    ////! i CHAN_ftat = "Abilities\\Spells\\Human\\InnerCHAN\\InnerCHANTarget.mdl"
    //the name of the ability
    //! i CHAN_anam = "Chain Lightning"
    //! i CHAN_areq = ""
    //damage reduction per target
    //! i CHAN_Ocl3 = {}
    //! i CHAN_Ocl3[1] = "0.15"
    //! i CHAN_Ocl3[2] = "0.15"
    //! i CHAN_Ocl3[3] = "0.15"
    //! i CHAN_Ocl3[4] = "0.15"
    //! i CHAN_Ocl3[5] = "0.15"
    //! i CHAN_Ocl3[6] = "0.15"
    //damage per target
    //! i CHAN_Ocl1 = {}
    //! i CHAN_Ocl1[1] = "80.00"
    //! i CHAN_Ocl1[2] = "100.00"
    //! i CHAN_Ocl1[3] = "120.00"
    //! i CHAN_Ocl1[4] = "150.00"
    //! i CHAN_Ocl1[5] = "180.00"
    //! i CHAN_Ocl1[6] = "240.00"
    //number of targets
    //! i CHAN_Ocl2 = {}
    //! i CHAN_Ocl2[1] = "4"
    //! i CHAN_Ocl2[2] = "5"
    //! i CHAN_Ocl2[3] = "6"
    //! i CHAN_Ocl2[4] = "8"
    //! i CHAN_Ocl2[5] = "10"
    //! i CHAN_Ocl2[6] = "13"
    //aoe
    //! i CHAN_aare = {}
    //! i CHAN_aare[1] = "500.00"
    //! i CHAN_aare[2] = "550.00"
    //! i CHAN_aare[3] = "600.00"
    //! i CHAN_aare[4] = "700.00"
    //! i CHAN_aare[5] = "800.00"
    //! i CHAN_aare[6] = "1000.00"
    //buff
    //! i CHAN_abuf = 'BHtc'
    //cast range
    //! i CHAN_aran = "700.00"
    //cast time
    //! i CHAN_acas = "0.0"
    //cooldown
    //! i CHAN_acdn = {}
    //! i CHAN_acdn[1] = "6.00"
    //! i CHAN_acdn[2] = "7.00"
    //! i CHAN_acdn[3] = "8.00"
    //! i CHAN_acdn[4] = "9.00"
    //! i CHAN_acdn[5] = "10.00"
    //! i CHAN_acdn[6] = "11.00"
    //duration
    //! i CHAN_adur = {}
    //! i CHAN_adur[1] = "2.00"
    //! i CHAN_adur[2] = "2.50"
    //! i CHAN_adur[3] = "3.00"
    //! i CHAN_adur[4] = "3.50"
    //! i CHAN_adur[5] = "4.50"
    //! i CHAN_adur[6] = "5.00"
    //effect
    ////! i CHAN_aeff = 'XHbz'
    //mana cost
    //! i CHAN_amcs = {}
    //! i CHAN_amcs[1] = "80"
    //! i CHAN_amcs[2] = "100"
    //! i CHAN_amcs[3] = "120"
    //! i CHAN_amcs[4] = "150"
    //! i CHAN_amcs[5] = "180"
    //! i CHAN_amcs[6] = "220"
    //targets
    //! i CHAN_atar = "air,ground,enemy,neutral"
    //autocast
    //! i CHAN_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i CHAN_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i CHAN_atp1 = {}
    //! i fill_arr(ALEV, CHAN_anam .. HOTKEY_STR, "[|cffffcc00Level", CHAN_atp1)
    //tool tip (CHANlay quantity/effect)
    //! i CHAN_aub1 = {}
    //! i for i=1, ALEV do
        //! i CHAN_aub1[i] = "Calls forth a bolt of lightning that bounces up to " .. CHAN_Ocl2[i] .. " times, dealing " .. CHAN_Ocl1[i] .. " damage on the primary target.  Each jump deals less damage."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(CHAN_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", CHAN_anam)
    //field values
    //! i write_fieldArr(ALEV, "Ocl3", CHAN_Ocl3)
    //! i write_fieldArr(ALEV, "Ocl2", CHAN_Ocl2)
    //! i write_fieldArr(ALEV, "Ocl1", CHAN_Ocl1)
    //! i write_fieldArr(ALEV, "aare", CHAN_aare)
    ////! i write_fieldVar(ALEV, "abuf", CHAN_abuf)
    //! i write_fieldVar(ALEV, "aran", CHAN_aran)
    ////! i write_fieldVar(ALEV, "acas", CHAN_acas)
    //! i write_fieldArr(ALEV, "acdn", CHAN_acdn)
    ////! i write_fieldArr(ALEV, "adur", CHAN_adur)
    ////! i write_fieldVar(ALEV, "aeff", CHAN_aeff)
    ////! i write_fieldArr(ALEV, "ahdu", CHAN_adur)
    //! i write_fieldArr(ALEV, "amcs", CHAN_amcs)
    //! i write_fieldVar(ALEV, "atar", CHAN_atar)
    //! i write_fieldArr(ALEV, "atp1", CHAN_atp1)
    //! i write_fieldArr(ALEV, "aub1", CHAN_aub1)
    ////! i write_fieldVar(ALEV, "aut1", CHAN_aut1)
    ////! i write_fieldVar(ALEV, "auu1", CHAN_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CHAN_anam, upoi)
    //****************************
    //*** Shockwave
    //****************************
    //the button used for the buff/aura
    ////! i WAVE_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerWAVE.blp"
    //the aura buff text
    ////! i WAVE_fube = "This unit is under the effects of Inner WAVE; its attack damage is increased."
    //the buff effect itself
    ////! i WAVE_ftat = "Abilities\\Spells\\Human\\InnerWAVE\\InnerWAVETarget.mdl"
    //the name of the ability
    //! i WAVE_anam = "Shockwave"
    //! i WAVE_areq = ""
    //damage per target
    //! i WAVE_Osh1 = {}
    //! i WAVE_Osh1[1] = "85.0"
    //! i WAVE_Osh1[2] = "115.0"
    //! i WAVE_Osh1[3] = "145.0"
    //! i WAVE_Osh1[4] = "185.0"
    //! i WAVE_Osh1[5] = "225.0"
    //! i WAVE_Osh1[6] = "285.0"
    //distance travels
    //! i WAVE_Osh3 = "800.00"
    //final area
    //! i WAVE_Osh4 = {}
    //! i WAVE_Osh4[1] = "125.00"
    //! i WAVE_Osh4[2] = "135.00"
    //! i WAVE_Osh4[3] = "145.00"
    //! i WAVE_Osh4[4] = "155.00"
    //! i WAVE_Osh4[5] = "165.00"
    //! i WAVE_Osh4[6] = "175.00"
    //max damage
    //! i WAVE_Osh2 = "9999.0"
    //aoe
    //! i WAVE_aare = {}
    //! i WAVE_aare[1] = "125.00"
    //! i WAVE_aare[2] = "135.00"
    //! i WAVE_aare[3] = "145.00"
    //! i WAVE_aare[4] = "155.00"
    //! i WAVE_aare[5] = "165.00"
    //! i WAVE_aare[6] = "175.00"
    //buff
    //! i WAVE_abuf = 'BOsh'
    //cast range
    //! i WAVE_aran = "700.00"
    //cast time
    //! i WAVE_acas = "0.0"
    //cooldown
    //! i WAVE_acdn = {}
    //! i WAVE_acdn[1] = "5.00"
    //! i WAVE_acdn[2] = "6.00"
    //! i WAVE_acdn[3] = "7.00"
    //! i WAVE_acdn[4] = "8.00"
    //! i WAVE_acdn[5] = "9.00"
    //! i WAVE_acdn[6] = "10.00"
    //duration
    //! i WAVE_adur = {}
    //! i WAVE_adur[1] = "2.00"
    //! i WAVE_adur[2] = "2.50"
    //! i WAVE_adur[3] = "3.00"
    //! i WAVE_adur[4] = "3.50"
    //! i WAVE_adur[5] = "4.50"
    //! i WAVE_adur[6] = "5.00"
    //effect
    ////! i WAVE_aeff = 'XHbz'
    //mana cost
    //! i WAVE_amcs = {}
    //! i WAVE_amcs[1] = "70"
    //! i WAVE_amcs[2] = "95"
    //! i WAVE_amcs[3] = "120"
    //! i WAVE_amcs[4] = "150"
    //! i WAVE_amcs[5] = "180"
    //! i WAVE_amcs[6] = "220"
    //targets
    //! i WAVE_atar = "ground,enemy"
    //autocast
    ////! i WAVE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i WAVE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i WAVE_atp1 = {}
    //! i fill_arr(ALEV, WAVE_anam .. HOTKEY_STR, "[|cffffcc00Level", WAVE_atp1)
    //tool tip (WAVElay quantity/effect)
    //! i WAVE_aub1 = {}
    //! i for i=1, ALEV do
        //! i WAVE_aub1[i] = "A wave of force that ripples outward, causing " .. WAVE_Osh1[i] .. " damage to land units in a line."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(WAVE_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", WAVE_anam)
    //field values
    //! i write_fieldArr(ALEV, "Osh1", WAVE_Osh1)
    //! i write_fieldVar(ALEV, "Osh2", WAVE_Osh2)
    //! i write_fieldVar(ALEV, "Osh3", WAVE_Osh3)
    //! i write_fieldArr(ALEV, "Osh4", WAVE_Osh4)
    //! i write_fieldArr(ALEV, "Osh1", WAVE_Osh1)
    //! i write_fieldArr(ALEV, "aare", WAVE_aare)
    //! i write_fieldVar(ALEV, "abuf", WAVE_abuf)
    //! i write_fieldVar(ALEV, "aran", WAVE_aran)
    ////! i write_fieldVar(ALEV, "acas", WAVE_acas)
    //! i write_fieldArr(ALEV, "acdn", WAVE_acdn)
    ////! i write_fieldArr(ALEV, "adur", WAVE_adur)
    ////! i write_fieldVar(ALEV, "aeff", WAVE_aeff)
    ////! i write_fieldArr(ALEV, "ahdu", WAVE_adur)
    //! i write_fieldArr(ALEV, "amcs", WAVE_amcs)
    //! i write_fieldVar(ALEV, "atar", WAVE_atar)
    //! i write_fieldArr(ALEV, "atp1", WAVE_atp1)
    //! i write_fieldArr(ALEV, "aub1", WAVE_aub1)
    ////! i write_fieldVar(ALEV, "aut1", WAVE_aut1)
    ////! i write_fieldVar(ALEV, "auu1", WAVE_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, WAVE_anam, upoi)
    //****************************
    //*** Warstomp (Aoe)
    //****************************
    //the button used for the buff/aura
    //! i STMP_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i STMP_fube = "This unit is under the effects of Inner STMP; its attack damage is increased."
    //the buff effect itself
    ////! i STMP_ftat = "Abilities\\Spells\\Human\\InnerSTMP\\InnerSTMPTarget.mdl"
    //the name of the ability
    //! i STMP_anam = "Warstomp"
    //! i STMP_areq = ""
    //damage per target
    //! i STMP_Wrs1 = {}
    //! i STMP_Wrs1[1] = "25.00"
    //! i STMP_Wrs1[2] = "50.00"
    //! i STMP_Wrs1[3] = "75.00"
    //! i STMP_Wrs1[4] = "105.00"
    //! i STMP_Wrs1[5] = "135.00"
    //! i STMP_Wrs1[6] = "175.00"
    //aoe
    //! i STMP_aare = {}
    //! i STMP_aare[1] = "250.00"
    //! i STMP_aare[2] = "275.00"
    //! i STMP_aare[3] = "300.00"
    //! i STMP_aare[4] = "350.00"
    //! i STMP_aare[5] = "400.00"
    //! i STMP_aare[6] = "500.00"
    //buff
    //! i STMP_abuf = 'BPSE'
    //cast range
    ////! i STMP_aran = "700.00"
    //cast time
    ////! i STMP_acas = "0.0"
    //cooldown
    //! i STMP_acdn = {}
    //! i STMP_acdn[1] = "4.00"
    //! i STMP_acdn[2] = "5.00"
    //! i STMP_acdn[3] = "6.00"
    //! i STMP_acdn[4] = "7.00"
    //! i STMP_acdn[5] = "8.00"
    //! i STMP_acdn[6] = "9.00"
    //duration
    //! i STMP_adur = {}
    //! i STMP_adur[1] = "2.00"
    //! i STMP_adur[2] = "2.75"
    //! i STMP_adur[3] = "3.50"
    //! i STMP_adur[4] = "4.50"
    //! i STMP_adur[5] = "5.50"
    //! i STMP_adur[6] = "7.00"
    //effect
    ////! i STMP_aeff = 'XHbz'
    //mana cost
    //! i STMP_amcs = {}
    //! i STMP_amcs[1] = "90"
    //! i STMP_amcs[2] = "120"
    //! i STMP_amcs[3] = "150"
    //! i STMP_amcs[4] = "190"
    //! i STMP_amcs[5] = "230"
    //! i STMP_amcs[6] = "280"
    //targets
    //! i STMP_atar = "ground,enemy"
    //autocast
    ////! i STMP_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i STMP_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i STMP_atp1 = {}
    //! i fill_arr(ALEV, STMP_anam .. HOTKEY_STR, "[|cffffcc00Level", STMP_atp1)
    //tool tip (STMPlay quantity/effect)
    //! i STMP_aub1 = {}
    //! i for i=1, ALEV do
       //! i STMP_aub1[i] = "Slams the ground, dealing " .. STMP_Wrs1[i] .. " damage to nearby enemy land units and stunning them for " .. STMP_adur[i] .. " seconds." 
   //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(STMP_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", STMP_anam)
    //field values
    //! i write_fieldArr(ALEV, "Wrs1", STMP_Wrs1)
    //! i write_fieldArr(ALEV, "aare", STMP_aare)
    //! i write_fieldVar(ALEV, "abuf", STMP_abuf)
    ////! i write_fieldVar(ALEV, "aran", STMP_aran)
    ////! i write_fieldVar(ALEV, "acas", STMP_acas)
    //! i write_fieldArr(ALEV, "acdn", STMP_acdn)
    //! i write_fieldArr(ALEV, "adur", STMP_adur)
    ////! i write_fieldVar(ALEV, "aeff", STMP_aeff)
    //! i write_fieldArr(ALEV, "ahdu", STMP_adur)
    //! i write_fieldArr(ALEV, "amcs", STMP_amcs)
    //! i write_fieldVar(ALEV, "atar", STMP_atar)
    //! i write_fieldArr(ALEV, "atp1", STMP_atp1)
    //! i write_fieldArr(ALEV, "aub1", STMP_aub1)
    ////! i write_fieldVar(ALEV, "aut1", STMP_aut1)
    ////! i write_fieldVar(ALEV, "auu1", STMP_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, STMP_anam, upoi)
    //****************************
    //*** Devour Magic (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i DEVO_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i DEVO_fube = "This unit is under the effects of Inner DEVO; its attack damage is increased."
    //the buff effect itself
    ////! i DEVO_ftat = "Abilities\\Spells\\Human\\InnerDEVO\\InnerDEVOTarget.mdl"
    //the name of the ability
    //! i DEVO_anam = "Devour Magic"
    //! i DEVO_areq = ""
    //ignore friendly buffs
    //! i DEVO_dvm6 = "1"
    //life per unit buff devoured
    //! i DEVO_dvm1 = {"50.00", "75.00", "100.00", "150.00", "200.00", "300.00"}
    //mana per unit buff devourer
    //! i DEVO_dvm2 = {"25.00", "40.00", "65.00", "75.00", "95.00", "125.00"}
    //damage to summons
    //! i DEVO_dvm5 = {"100.00", "120.00", "140.00", "170.00", "200.00", "240.00"}
    //aoe
    //! i DEVO_aare = {"200.00", "225.00", "250.00", "300.00", "350.00", "450.00"}
    //buff
    ////! i DEVO_abuf = 'BPSE'
    //cast range
    //! i DEVO_aran = "600.00"
    //cast time
    ////! i DEVO_acas = "0.0"
    //cooldown
    //! i DEVO_acdn = {}
    //! i DEVO_acdn[1] = "15.00"
    //! i DEVO_acdn[2] = "14.00"
    //! i DEVO_acdn[3] = "13.00"
    //! i DEVO_acdn[4] = "11.50"
    //! i DEVO_acdn[5] = "10.00"
    //! i DEVO_acdn[6] = "8.00"
    //duration
    ////! i DEVO_adur = {}
    //effect
    ////! i DEVO_aeff = 'XHbz'
    //mana cost
    //! i DEVO_amcs = {}
    //! i DEVO_amcs[1] = "0"
    //! i DEVO_amcs[2] = "0"
    //! i DEVO_amcs[3] = "0"
    //! i DEVO_amcs[4] = "0"
    //! i DEVO_amcs[5] = "0"
    //! i DEVO_amcs[6] = "0"
    //targets
    //! i DEVO_atar = "air,ground,ward,invu,vuln,tree"
    //autocast
    ////! i DEVO_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i DEVO_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i DEVO_atp1 = {}
    //! i fill_arr(ALEV, DEVO_anam .. HOTKEY_STR, "[|cffffcc00Level", DEVO_atp1)
    //tool tip (DEVOlay quantity/effect)
    //! i DEVO_aub1 = {}
    //! i for i=1, ALEV do
       //! i DEVO_aub1[i] = "Consumes all magical buffs from units in an area.  Each unit that is devoured of magic gives the hero " .. DEVO_dvm1[i] .. " hit points and " .. DEVO_dvm2[i] .. " mana.  Deals " .. DEVO_dvm5[i] .. " damage to summoned units."
   //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(DEVO_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", DEVO_anam)
    //field values
    //! i write_fieldArr(ALEV, "dvm1", DEVO_dvm1)
    //! i write_fieldArr(ALEV, "dvm2", DEVO_dvm2)
    //! i write_fieldArr(ALEV, "dvm5", DEVO_dvm5)
    //! i write_fieldArr(ALEV, "dvm6", DEVO_dvm6)
    //! i write_fieldArr(ALEV, "aare", DEVO_aare)
    ////! i write_fieldVar(ALEV, "abuf", DEVO_abuf)
    //! i write_fieldVar(ALEV, "aran", DEVO_aran)
    ////! i write_fieldVar(ALEV, "acas", DEVO_acas)
    //! i write_fieldArr(ALEV, "acdn", DEVO_acdn)
    ////! i write_fieldArr(ALEV, "adur", DEVO_adur)
    ////! i write_fieldVar(ALEV, "aeff", DEVO_aeff)
    ////! i write_fieldArr(ALEV, "ahdu", DEVO_adur)
    ////! i write_fieldArr(ALEV, "amcs", DEVO_amcs)
    //! i write_fieldVar(ALEV, "atar", DEVO_atar)
    //! i write_fieldArr(ALEV, "atp1", DEVO_atp1)
    //! i write_fieldArr(ALEV, "aub1", DEVO_aub1)
    ////! i write_fieldVar(ALEV, "aut1", DEVO_aut1)
    ////! i write_fieldVar(ALEV, "auu1", DEVO_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DEVO_anam, upoi)
    //****************************
    //*** Carrion Swarm (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i CARR_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i CARR_fube = "This unit is under the effects of Inner CARR; its attack damage is increased."
    //the buff effect itself
    ////! i CARR_ftat = "Abilities\\Spells\\Human\\InnerCARR\\InnerCARRTarget.mdl"
    //the name of the ability
    //! i CARR_anam = "Carrion Swarm"
    //! i CARR_areq = ""
    //damage per hit
    //! i CARR_Ucs1 = {"50.00", "75.00", "100.00", "150.00", "200.00", "300.00"}
    //distance traveled
    //! i CARR_Ucs3 = "800.00"
    //final area
    //! i CARR_Ucs4 = "300.00"
    //max damage
    //! i CARR_Ucs2 = "9999.0"
    //aoe
    //! i CARR_aare = {"100.00", "125.00", "150.00", "175.00", "200.00", "225.00"}
    //buff
    //! i CARR_abuf = 'BUcs'
    //cast range
    //! i CARR_aran = "700.00"
    //cast time
    ////! i CARR_acas = "0.0"
    //cooldown
    //! i CARR_acdn = {}
    //! i CARR_acdn[1] = "6.00"
    //! i CARR_acdn[2] = "7.00"
    //! i CARR_acdn[3] = "8.00"
    //! i CARR_acdn[4] = "10.00"
    //! i CARR_acdn[5] = "12.00"
    //! i CARR_acdn[6] = "14.00"
    //duration
    ////! i CARR_adur = {}
    //effect
    ////! i CARR_aeff = 'XHbz'
    //mana cost
    //! i CARR_amcs = {}
    //! i CARR_amcs[1] = "50"
    //! i CARR_amcs[2] = "75"
    //! i CARR_amcs[3] = "100"
    //! i CARR_amcs[4] = "125"
    //! i CARR_amcs[5] = "150"
    //! i CARR_amcs[6] = "200"
    //targets
    //! i CARR_atar = "ground,air,organic"
    //autocast
    ////! i CARR_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i CARR_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i CARR_atp1 = {}
    //! i fill_arr(ALEV, CARR_anam .. HOTKEY_STR, "[|cffffcc00Level", CARR_atp1)
    //tool tip (CARRlay quantity/effect)
    //! i CARR_aub1 = {}
    //! i for i=1, ALEV do
       //! i CARR_aub1[i] = "Sends a horde of bats to deal " .. CARR_Ucs1[i] .. " damage to each enemy unit in a cone."
   //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(CARR_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", CARR_anam)
    //field values
    //! i write_fieldArr(ALEV, "Ucs1", CARR_Ucs1)
    //! i write_fieldVar(ALEV, "Ucs3", CARR_Ucs3)
    //! i write_fieldVar(ALEV, "Ucs4", CARR_Ucs4)
    //! i write_fieldVar(ALEV, "Ucs2", CARR_Ucs2)
    //! i write_fieldArr(ALEV, "aare", CARR_aare)
    //! i write_fieldVar(ALEV, "abuf", CARR_abuf)
    //! i write_fieldVar(ALEV, "aran", CARR_aran)
    ////! i write_fieldVar(ALEV, "acas", CARR_acas)
    //! i write_fieldArr(ALEV, "acdn", CARR_acdn)
    ////! i write_fieldArr(ALEV, "adur", CARR_adur)
    ////! i write_fieldVar(ALEV, "aeff", CARR_aeff)
    ////! i write_fieldArr(ALEV, "ahdu", CARR_adur)
    //! i write_fieldArr(ALEV, "amcs", CARR_amcs)
    //! i write_fieldVar(ALEV, "atar", CARR_atar)
    //! i write_fieldArr(ALEV, "atp1", CARR_atp1)
    //! i write_fieldArr(ALEV, "aub1", CARR_aub1)
    ////! i write_fieldVar(ALEV, "aut1", CARR_aut1)
    ////! i write_fieldVar(ALEV, "auu1", CARR_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CARR_anam, upoi)
    //****************************
    //*** Death and Decay (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i DECY_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i DECY_fube = "This unit is under the effects of Inner DECY; its attack damage is increased."
    //the buff effect itself
    ////! i DECY_ftat = "Abilities\\Spells\\Human\\InnerDECY\\InnerDECYTarget.mdl"
    //the name of the ability
    //! i DECY_anam = "Death and Decay"
    //! i DECY_areq = ""
    //damage per hit
    //! i DECY_Udd1 = {"0.01", "0.02", "0.03", "0.04", "0.05", "0.06"}
    //aoe
    //! i DECY_aare = {"175.00", "200.00", "225.00", "275.00", "325.00", "425.00"}
    //buff
    //! i DECY_abuf = 'BUdd'
    //cast range
    //! i DECY_aran = "1000.00"
    //cast time
    ////! i DECY_acas = "0.0"
    //cooldown
    //! i DECY_acdn = {}
    //! i DECY_acdn[1] = "15.00"
    //! i DECY_acdn[2] = "18.00"
    //! i DECY_acdn[3] = "21.00"
    //! i DECY_acdn[4] = "25.00"
    //! i DECY_acdn[5] = "29.00"
    //! i DECY_acdn[6] = "35.00"
    //duration
    //! i DECY_adur = {"10.00", "12.00", "14.00", "18.00", "22.00", "28.00"}
    //effect
    //! i DECY_aeff = 'XUdd'
    //mana cost
    //! i DECY_amcs = {}
    //! i DECY_amcs[1] = "100"
    //! i DECY_amcs[2] = "150"
    //! i DECY_amcs[3] = "200"
    //! i DECY_amcs[4] = "275"
    //! i DECY_amcs[5] = "350"
    //! i DECY_amcs[6] = "450"
    //targets
    //! i DECY_atar = "air,ground,ward"
    //autocast
    ////! i DECY_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i DECY_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i DECY_atp1 = {}
    //! i fill_arr(ALEV, DECY_anam .. HOTKEY_STR, "[|cffffcc00Level", DECY_atp1)
    //tool tip (DECYlay quantity/effect)
    //! i DECY_aub1 = {}
    //! i for i=1, ALEV do
       //! i DECY_aub1[i] = "Damages everything in its area of effect by " .. DECY_Udd1[i] .. "% of its base hit points for " .. DECY_adur[i] .. " seconds."
   //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(DECY_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", DECY_anam)
    //field values
    //! i write_fieldArr(ALEV, "Udd1", DECY_Udd1)
    //! i write_fieldArr(ALEV, "aare", DECY_aare)
    //! i write_fieldVar(ALEV, "abuf", DECY_abuf)
    //! i write_fieldVar(ALEV, "aran", DECY_aran)
    ////! i write_fieldVar(ALEV, "acas", DECY_acas)
    //! i write_fieldArr(ALEV, "acdn", DECY_acdn)
    //! i write_fieldArr(ALEV, "adur", DECY_adur)
    //! i write_fieldVar(ALEV, "aeff", DECY_aeff)
    //! i write_fieldArr(ALEV, "ahdu", DECY_adur)
    //! i write_fieldArr(ALEV, "amcs", DECY_amcs)
    //! i write_fieldVar(ALEV, "atar", DECY_atar)
    //! i write_fieldArr(ALEV, "atp1", DECY_atp1)
    //! i write_fieldArr(ALEV, "aub1", DECY_aub1)
    ////! i write_fieldVar(ALEV, "aut1", DECY_aut1)
    ////! i write_fieldVar(ALEV, "auu1", DECY_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DECY_anam, upoi)
    //****************************
    //*** Frost Nova (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i NOVA_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i NOVA_fube = "This unit is under the effects of Inner NOVA; its attack damage is increased."
    //the buff effect itself
    ////! i NOVA_ftat = "Abilities\\Spells\\Human\\InnerNOVA\\InnerNOVATarget.mdl"
    //the name of the ability
    //! i NOVA_anam = "Frost Nova"
    //! i NOVA_areq = ""
    //aoe damage
    //! i NOVA_Ufn1 = {"50.00", "75.00", "100.00", "125.00", "175.00", "275.00"}
    //target damage
    //! i NOVA_Ufn2 = {"75.00", "85.00", "95.00", "105.00", "115.00", "125.00"}
    //aoe
    //! i NOVA_aare = {"175", "200", "225", "250", "275", "300"}
    //buff
    //! i NOVA_abuf = 'Bfro'
    //cast range
    //! i NOVA_aran = "800.00"
    //cast time
    ////! i NOVA_acas = "0.0"
    //cooldown
    //! i NOVA_acdn = {}
    //! i NOVA_acdn[1] = "7.00"
    //! i NOVA_acdn[2] = "8.00"
    //! i NOVA_acdn[3] = "9.00"
    //! i NOVA_acdn[4] = "10.00"
    //! i NOVA_acdn[5] = "11.00"
    //! i NOVA_acdn[6] = "12.00"
    //duration
    //! i NOVA_adur = {"2.00", "3.00", "4.00", "5.00", "6.00", "7.00"}
    //effect
    ////! i NOVA_aeff = 'XUdd'
    //mana cost
    //! i NOVA_amcs = {}
    //! i NOVA_amcs[1] = "100"
    //! i NOVA_amcs[2] = "125"
    //! i NOVA_amcs[3] = "150"
    //! i NOVA_amcs[4] = "200"
    //! i NOVA_amcs[5] = "250"
    //! i NOVA_amcs[6] = "350"
    //targets
    //! i NOVA_atar = "ground,enemy,air"
    //autocast
    ////! i NOVA_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i NOVA_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i NOVA_atp1 = {}
    //! i fill_arr(ALEV, NOVA_anam .. HOTKEY_STR, "[|cffffcc00Level", NOVA_atp1)
    //tool tip (NOVAlay quantity/effect)
    //! i NOVA_aub1 = {}
    //! i for i=1, ALEV do
       //! i NOVA_aub1[i] = "Blasts enemy units with a wave of frost that deals " .. NOVA_Ufn1[i] .. " damage to the target and " .. NOVA_Ufn2[i] .. " nova damage.  Cold damage slows units' movement and attack rate for " .. NOVA_adur[i] .. " seconds." 
   //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(NOVA_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", NOVA_anam)
    //field values
    //! i write_fieldArr(ALEV, "Ufn1", NOVA_Ufn1)
    //! i write_fieldArr(ALEV, "Ufn2", NOVA_Ufn2)
    //! i write_fieldArr(ALEV, "aare", NOVA_aare)
    //! i write_fieldVar(ALEV, "abuf", NOVA_abuf)
    //! i write_fieldVar(ALEV, "aran", NOVA_aran)
    ////! i write_fieldVar(ALEV, "acas", NOVA_acas)
    //! i write_fieldArr(ALEV, "acdn", NOVA_acdn)
    //! i write_fieldArr(ALEV, "adur", NOVA_adur)
    ////! i write_fieldVar(ALEV, "aeff", NOVA_aeff)
    //! i write_fieldArr(ALEV, "ahdu", NOVA_adur)
    //! i write_fieldArr(ALEV, "amcs", NOVA_amcs)
    //! i write_fieldVar(ALEV, "atar", NOVA_atar)
    //! i write_fieldArr(ALEV, "atp1", NOVA_atp1)
    //! i write_fieldArr(ALEV, "aub1", NOVA_aub1)
    ////! i write_fieldVar(ALEV, "aut1", NOVA_aut1)
    ////! i write_fieldVar(ALEV, "auu1", NOVA_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, NOVA_anam, upoi)
    //****************************
    //*** Impale (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i IMP_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i IMP_fube = "This unit is under the effects of Inner IMP; its attack damage is increased."
    //the buff effect itself
    ////! i IMP_ftat = "Abilities\\Spells\\Human\\InnerIMP\\InnerIMPTarget.mdl"
    //the name of the ability
    //! i IMP_anam = "Impale"
    //! i IMP_areq = ""
    //air time
    //! i IMP_Uim4 = "1.00"
    //damage dealt
    //! i IMP_Uim3 = {"30.00", "45.00", "70.00", "90.00", "110.00", "150.00"}
    //wave distance
    //! i IMP_Uim1 = {"600.00", "625.00", "650.00", "675.00", "700.00", "725.00"}
    //wave time seconds
    //! i IMP_Uim2 = "0.30"
    //aoe
    //! i IMP_aare = {"250", "260", "270", "280", "290", "300"}
    //buff
    //! i IMP_abuf = 'BUim'
    //cast range
    //! i IMP_aran = "700.00"
    //cast time
    ////! i IMP_acas = "0.0"
    //cooldown
    //! i IMP_acdn = {}
    //! i IMP_acdn[1] = "6.00"
    //! i IMP_acdn[2] = "7.00"
    //! i IMP_acdn[3] = "8.00"
    //! i IMP_acdn[4] = "9.00"
    //! i IMP_acdn[5] = "10.00"
    //! i IMP_acdn[6] = "11.00"
    //duration
    //! i IMP_adur = {"1.00", "1.75", "2.50", "3.25", "4.00", "5.00"}
    //effect
    ////! i IMP_aeff = 'XUdd'
    //mana cost
    //! i IMP_amcs = {}
    //! i IMP_amcs[1] = "100"
    //! i IMP_amcs[2] = "125"
    //! i IMP_amcs[3] = "150"
    //! i IMP_amcs[4] = "200"
    //! i IMP_amcs[5] = "250"
    //! i IMP_amcs[6] = "350"
    //targets
    //! i IMP_atar = "ground,enemy"
    //autocast
    ////! i IMP_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i IMP_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i IMP_atp1 = {}
    //! i fill_arr(ALEV, IMP_anam .. HOTKEY_STR, "[|cffffcc00Level", IMP_atp1)
    //tool tip (IMPlay quantity/effect)
    //! i IMP_aub1 = {}
    //! i for i=1, ALEV do
       //! i IMP_aub1[i] = "Slams the ground, shooting spiked tendrils out in a straight line, dealing " .. IMP_Uim3[i] .. " damage and hurling enemy ground units into the air in their wake, stunning them for " .. IMP_adur[i] .. " seconds." 
   //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(IMP_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", IMP_anam)
    //field values
    //! i write_fieldVar(ALEV, "Uim4", IMP_Uim4)
    //! i write_fieldArr(ALEV, "Uim3", IMP_Uim3)
    //! i write_fieldArr(ALEV, "Uim1", IMP_Uim1)
    //! i write_fieldVar(ALEV, "Uim2", IMP_Uim2)
    //! i write_fieldArr(ALEV, "aare", IMP_aare)
    //! i write_fieldVar(ALEV, "abuf", IMP_abuf)
    //! i write_fieldVar(ALEV, "aran", IMP_aran)
    ////! i write_fieldVar(ALEV, "acas", IMP_acas)
    //! i write_fieldArr(ALEV, "acdn", IMP_acdn)
    //! i write_fieldArr(ALEV, "adur", IMP_adur)
    ////! i write_fieldVar(ALEV, "aeff", IMP_aeff)
    //! i write_fieldArr(ALEV, "ahdu", IMP_adur)
    //! i write_fieldArr(ALEV, "amcs", IMP_amcs)
    //! i write_fieldVar(ALEV, "atar", IMP_atar)
    //! i write_fieldArr(ALEV, "atp1", IMP_atp1)
    //! i write_fieldArr(ALEV, "aub1", IMP_aub1)
    ////! i write_fieldVar(ALEV, "aut1", IMP_aut1)
    ////! i write_fieldVar(ALEV, "auu1", IMP_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, IMP_anam, upoi)
    //****************************
    //*** Fan of Knives
    //****************************
    //the button used for the buff/aura
    ////! i FAN_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i FAN_fube = "This unit is under the effects of Inner FAN; its attack damage is increased."
    //the buff effect itself
    ////! i FAN_ftat = "Abilities\\Spells\\Human\\InnerFAN\\InnerFANTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(FAN_ID, base_id)
    //the name of the ability
    //! i FAN_anam = "Fan of Knives"
    //! i FAN_areq = ""
    //damage dealt
	//! i FAN_Efk1 = {"35.00", "65.00", "95.00", "135.00", "175.00", "225.0"}
    //! i write_fieldArr(ALEV, "Efk1", FAN_Efk1)
    //max speed adjustment
    //! i write_fieldVar(ALEV, "Efk4", "100.00")
    //max damage
    //! i write_fieldVar(ALEV, "Efk2", "9999.0")
    //aoe - aare
    //! i write_fieldArr(ALEV, "aare", {"400", "425", "450", "475", "500", "525"})
    //buff
    ////! i FAN_abuf = 'BUim'
    //cast range
    ////! i FAN_aran = "700.00"
    //cast time
    ////! i FAN_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"9", "9", "9", "9", "9", "9"})
    //duration
    ////! i FAN_adur = {"1.00", "1.75", "2.50", "3.25", "4.00", "5.00"}
    //effect
    ////! i FAN_aeff = 'XUdd'
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"60", "80", "100", "120", "140", "160"})
    //targets
    //! i FAN_atar = "air,ground,enemy,organic"
    //autocast
    ////! i FAN_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i FAN_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i FAN_atp1 = {}
    //! i fill_arr(ALEV, FAN_anam .. HOTKEY_STR, "[|cffffcc00Level", FAN_atp1)
    //tool tip (FANlay quantity/effect)
    //! i FAN_aub1 = {}
    //! i for i=1, ALEV do
       //! i FAN_aub1[i] = "Hurls a flurry of knives, damaging nearby enemies.  Each knife does " .. FAN_Efk1[i] .. " damage."
   //! i end
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", FAN_anam)
    //field values
    //! i write_fieldVar(ALEV, "atar", FAN_atar)
    //! i write_fieldArr(ALEV, "atp1", FAN_atp1)
    //! i write_fieldArr(ALEV, "aub1", FAN_aub1)
    ////! i write_fieldVar(ALEV, "aut1", FAN_aut1)
    ////! i write_fieldVar(ALEV, "auu1", FAN_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FAN_anam, upoi)
    //****************************
    //*** Lightning (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i LGHT_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i LGHT_fube = "This unit is under the effects of Inner LGHT; its attack damage is increased."
    //the buff effect itself
    ////! i LGHT_ftat = "Abilities\\Spells\\Human\\InnerLGHT\\InnerLGHTTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(LGHT_ID, base_id)
    //the name of the ability
    //! i LGHT_anam = "Lightning"
    //! i LGHT_areq = ""
    //damage dealt
    //! i LGHT_Esf1 = {"20.00", "40.00", "60.00", "100.00", "140.00", "200.00"}
    //! i write_fieldArr(ALEV, "Esf1", LGHT_Esf1)
    //damage interval
    //! i write_fieldArr(ALEV, "Esf2", {"2.0", "1.90", "1.80", "1.50", "1.20", "0.90"})
    //aoe - aare
    //! i write_fieldArr(ALEV, "aare", {"300", "350", "400", "475", "550", "650"})
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'ANmd')
    //cast range - aran
    //! i write_fieldVar(ALEV, 'aran', "500.00")
    //cast time
    ////! i LGHT_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"10.00", "12.00", "14.00", "18.00", "22.00", "28.00"})
    //duration - adur/ahdu
    //! i LGHT_adur = {"15.00", "15.00", "15.00", "15.00", "15.00", "15.00"}
    //! i write_fieldArr(ALEV, "adur", LGHT_adur)
    //! i write_fieldArr(ALEV, "ahdu", LGHT_adur)
    //effect - aeff
    //! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "125", "175", "225", "300", "350"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy")
    //autocast
    ////! i LGHT_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i LGHT_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i LGHT_atp1 = {}
    //! i fill_arr(ALEV, LGHT_anam .. HOTKEY_STR, "[|cffffcc00Level", LGHT_atp1)
    //! i write_fieldArr(ALEV, "atp1", LGHT_atp1)
    //tool tip - aub1
    //! i LGHT_aub1 = {}
    //! i for i=1, ALEV do
       //! i LGHT_aub1[i] = "Calls down a storm of lightning to strike enemy units for " .. LGHT_Esf1[i] .. " damage in a small target area. Lasts " ..LGHT_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", LGHT_aub1)
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", LGHT_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", LGHT_aut1)
    ////! i write_fieldVar(ALEV, "auu1", LGHT_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, LGHT_anam, upoi)
    //****************************
    //*** Breath of Frost (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i BFRO_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i BFRO_fube = "This unit is under the effects of Inner BFRO; its attack damage is increased."
    //the buff effect itself
    ////! i BFRO_ftat = "Abilities\\Spells\\Human\\InnerBFRO\\InnerBFROTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(BFRO_ID, base_id)
    //the name of the ability
    //! i BFRO_anam = "Breath of Frost"
    //! i BFRO_areq = ""
    //damage dealt
    //! i BFRO_Ucs1 = {"50.00", "75.00", "100", "150.00", "200.00", "275.00"}
    //! i write_fieldArr(ALEV, "Ucs1", BFRO_Ucs1)
    //damage per second
    //! i write_fieldVar(ALEV, "Nbf5", "0.0")
    //distance
    //! i write_fieldVar(ALEV, "Ucs3", "800.00")
    //final area
    //! i write_fieldVar(ALEV, "Ucs4", "150.00")
    //max damage
    //! i write_fieldVar(ALEV, "Ucs2", "99999.00")
    //aoe - aare
    //! i write_fieldArr(ALEV, "aare", {"150", "175", "200", "225", "250", "275"})
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BCbf')
    //cast range - aran
    //! i write_fieldVar(ALEV, 'aran', "700.00")
    //cast time
    ////! i BFRO_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"10.00", "10.00", "12.00", "12.00", "16.00", "16.00"})
    //duration - adur/ahdu
    //! i BFRO_adur = {"5.00", "6.00", "7.00", "8.00", "9.00", "10.00"}
    //! i write_fieldArr(ALEV, "adur", BFRO_adur)
    //! i write_fieldArr(ALEV, "ahdu", BFRO_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "125", "175", "225", "300", "350"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy")
    //autocast
    ////! i BFRO_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i BFRO_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i BFRO_atp1 = {}
    //! i fill_arr(ALEV, BFRO_anam .. HOTKEY_STR, "[|cffffcc00Level", BFRO_atp1)
    //! i write_fieldArr(ALEV, "atp1", BFRO_atp1)
    //tool tip - aub1
    //! i BFRO_aub1 = {}
    //! i for i=1, ALEV do
       //! i BFRO_aub1[i] = "Breathes a cone of frost at enemy units that deals " .. BFRO_Ucs1[i] .. " damage."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", BFRO_aub1)
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", BFRO_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", BFRO_aut1)
    ////! i write_fieldVar(ALEV, "auu1", BFRO_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BFRO_anam, upoi)
    //****************************
    //*** Breath of Fire (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i BFIR_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i BFIR_fube = "This unit is under the effects of Inner BFIR; its attack damage is increased."
    //the buff effect itself
    ////! i BFIR_ftat = "Abilities\\Spells\\Human\\InnerBFIR\\InnerBFIRTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(BFIR_ID, base_id)
    //the name of the ability
    //! i BFIR_anam = "Breath of Fire"
    //! i BFIR_areq = ""
    //damage dealt
    //! i BFIR_Ucs1 = {"50.00", "75.00", "100", "150.00", "200.00", "275.00"}
    //! i write_fieldArr(ALEV, "Ucs1", BFIR_Ucs1)
    //damage per second
    //! i write_fieldVar(ALEV, "Nbf5", "0.0")
    //distance
    //! i write_fieldVar(ALEV, "Ucs3", "800.00")
    //final area
    //! i write_fieldVar(ALEV, "Ucs4", "150.00")
    //max damage
    //! i write_fieldVar(ALEV, "Ucs2", "99999.00")
    //aoe - aare
    //! i write_fieldArr(ALEV, "aare", {"150", "175", "200", "225", "250", "275"})
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BNbf')
    //cast range - aran
    //! i write_fieldVar(ALEV, 'aran', "700.00")
    //cast time
    ////! i BFIR_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"10.00", "10.00", "12.00", "12.00", "16.00", "16.00"})
    //duration - adur/ahdu
    //! i BFIR_adur = {"5.00", "6.00", "7.00", "8.00", "9.00", "10.00"}
    //! i write_fieldArr(ALEV, "adur", BFIR_adur)
    //! i write_fieldArr(ALEV, "ahdu", BFIR_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "125", "175", "225", "300", "350"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy")
    //autocast
    ////! i BFIR_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i BFIR_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i BFIR_atp1 = {}
    //! i fill_arr(ALEV, BFIR_anam .. HOTKEY_STR, "[|cffffcc00Level", BFIR_atp1)
    //! i write_fieldArr(ALEV, "atp1", BFIR_atp1)
    //tool tip - aub1
    //! i BFIR_aub1 = {}
    //! i for i=1, ALEV do
       //! i BFIR_aub1[i] = "Breathes a cone of fire at enemy units that deals " .. BFIR_Ucs1[i] .. " damage."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", BFIR_aub1)
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", BFIR_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", BFIR_aut1)
    ////! i write_fieldVar(ALEV, "auu1", BFIR_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BFIR_anam, upoi)
    //****************************
    //*** Forked Lightning (Aoe)
    //****************************
    //the button used for the buff/aura
    //! i FORK_aart = "ReplaceableTextures\\CommandButtons\\BTNCorpseExplode.blp"
    //! i FORK_alig = "AFOD"
    //! i FORK_atat = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
    //the aura buff text
    ////! i FORK_fube = "This unit is under the effects of Inner FORK; its attack damage is increased."
    //the buff effect itself
    ////! i FORK_ftat = "Abilities\\Spells\\Human\\InnerFORK\\InnerFORKTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(FORK_ID, base_id)
    //the name of the ability
    //! i FORK_anam = "Palm of Destruction"
    //! i FORK_areq = ""
    //damage dealt
    //! i FORK_Ocl1 = {"85.00", "125.00", "165.00", "225.0", "285.0", "355.0"}
    //! i write_fieldArr(ALEV, "Ocl1", FORK_Ocl1)
    //distance
    //! i write_fieldVar(ALEV, "Ucs3", "800.00")
    //final area
    //! i write_fieldVar(ALEV, "Ucs4", "300.00")
    //number of targets
    //! i FORK_Ocl2 = {"3", "3", "3", "4", "4", "6"}
    //! i write_fieldArr(ALEV, "Ocl2", FORK_Ocl2)
    //max damage
    ////! i write_fieldVar(ALEV, "Ucs2", "99999.00")
    //aoe - aare
    //! i write_fieldArr(ALEV, "aare", {"150", "175", "200", "225", "250", "275"})
    //buff - abuf
    ////! i write_fieldVar(ALEV, 'abuf', 'BNbf')
    //cast range - aran
    //! i write_fieldVar(ALEV, 'aran', "600.00")
    //cast time
    ////! i FORK_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"10.00", "10.00", "12.00", "12.00", "16.00", "16.00"})
    //duration - adur/ahdu
    //! i FORK_adur = {"0.70", "0.70","0.70", "0.70","0.70", "0.70"}
    //! i write_fieldArr(ALEV, "adur", FORK_adur)
    //! i write_fieldArr(ALEV, "ahdu", FORK_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "125", "175", "225", "300", "350"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy")
    //autocast
    ////! i FORK_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i FORK_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i FORK_atp1 = {}
    //! i fill_arr(ALEV, FORK_anam .. HOTKEY_STR, "[|cffffcc00Level", FORK_atp1)
    //! i write_fieldArr(ALEV, "atp1", FORK_atp1)
    //tool tip - aub1
    //! i FORK_aub1 = {}
    //! i for i=1, ALEV do
       //! i FORK_aub1[i] = "Calls forth tendrils of destruction, hitting up to " .. FORK_Ocl2[i] .. " targets for " .. FORK_Ocl1[i] .. " damage each."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", FORK_aub1)
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", FORK_anam)
    //! i makechange(current, "aart", FORK_aart)
    //! i makechange(current, "alig", FORK_alig)
    //! i makechange(current, "atat", FORK_atat)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", FORK_aut1)
    ////! i write_fieldVar(ALEV, "auu1", FORK_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FORK_anam, upoi)
    //****************************
    //*** Rain of Fire (Aoe)
    //****************************
    //the button used for the buff/aura
    ////! i FIRE_aart = "ReplaceableTextures\\CommandButtons\\BTNCorpseExplode.blp"
    ////! i FIRE_alig = "AFOD"
    ////! i FIRE_atat = "Abilities\\Spells\\Demon\\DemonBoltImpact\\DemonBoltImpact.mdl"
    //the aura buff text
    ////! i FIRE_fube = "This unit is under the effects of Inner FIRE; its attack damage is increased."
    //the buff effect itself
    ////! i FIRE_ftat = "Abilities\\Spells\\Human\\InnerFIRE\\InnerFIRETarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(FIRE_ID, base_id)
    //the name of the ability
    //! i FIRE_anam = "Fire Air"
    //! i FIRE_areq = ""
    //damage dealt
    //! i FIRE_Hbz2 = {"10.00", "20.00", "30.00", "50.00", "70.00", "100.00"}
    //! i write_fieldArr(ALEV, "Hbz2", FIRE_Hbz2)
    //damage per second
    //! i FIRE_Hbz5 = {"2.00", "4.00", "6.00", "8.00", "10.00", "12.00"}
    //! i write_fieldArr(ALEV, "Hbz5", FIRE_Hbz5)
    //max damage
    //! i write_fieldVar(ALEV, "Hbz6", "99999.0")
    //number of shards
    //! i FIRE_Hbz1 = {"6", "8", "10", "14", "18", "28"}
    //! i write_fieldArr(ALEV, "Hbz1", FIRE_Hbz1)
    //number of waves
    //! i FIRE_Hbz3 = {"6", "8", "10", "12", "14", "16"}
    //! i write_fieldArr(ALEV, "Hbz3", FIRE_Hbz3)
    //aoe - aare
    //! i write_fieldArr(ALEV, "aare", {"150", "175", "200", "225", "250", "275"})
    //buff - abuf
    ////! i write_fieldVar(ALEV, 'abuf', 'BNbf')
    //cast range - aran
    //! i write_fieldVar(ALEV, 'aran', "800.00")
    //cast time
    //! i FIRE_acas = "1.0"
    //! i write_fieldVar(ALEV, 'acas', FIRE_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"10.00", "10.00", "12.00", "12.00", "16.00", "16.00"})
    //duration - adur/ahdu
    //! i FIRE_adur = {"3.0", "4.0","5.0", "6.0","7.0", "8.0"}
    //! i write_fieldArr(ALEV, "adur", FIRE_adur)
    //! i write_fieldArr(ALEV, "ahdu", FIRE_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "125", "175", "225", "300", "350"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy")
    //autocast
    ////! i FIRE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i FIRE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i FIRE_atp1 = {}
    //! i fill_arr(ALEV, FIRE_anam .. HOTKEY_STR, "[|cffffcc00Level", FIRE_atp1)
    //! i write_fieldArr(ALEV, "atp1", FIRE_atp1)
    //tool tip - aub1
    //! i FIRE_aub1 = {}
    //! i for i=1, ALEV do
       //! i FIRE_aub1[i] = "Calls down " .. FIRE_Hbz3[i] .. " waves of fire that damage units in an area.  Each wave deals " .. FIRE_Hbz2[i] .. " initial damage and " .. FIRE_Hbz5[i] .. " damage for " .. FIRE_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", FIRE_aub1)
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", FIRE_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", FIRE_aut1)
    ////! i write_fieldVar(ALEV, "auu1", FIRE_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FIRE_anam, upoi)
    //****************************
    //*** Crushing Wave 
    //****************************
    //the button used for the buff/aura
    ////! i UNHO_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i UNHO_fube = "This unit is under the effects of Inner UNHO; its attack damage is increased."
    //the buff effect itself
    ////! i UNHO_ftat = "Abilities\\Spells\\Human\\InnerUNHO\\InnerUNHOTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(TIDL_ID, base_id)
    //the name of the ability
    //! i TIDL_anam = "Crushing Wave"
    //! i TIDL_areq = ""
    //damage
    //! i TIDL_Ucs1 = {"100", "120", "140", "160", "180", "200"}
    //! i write_fieldArr(ALEV, 'Ucs1', TIDL_Ucs1)
    //distance
    //! i write_fieldVar(ALEV, 'Ucs3', "800.00")
    //final area
    //! i write_fieldVar(ALEV, 'Ucs4', "300.00")
    //max damage
    //! i write_fieldVar(ALEV, 'Ucs2', "99999.0")
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "100.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BUcs')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "700.0")
    //cast time
    ////! i TIDL_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "8.00", "8.00", "8.00"})
    //duration - adur/ahdu
    ////! i TIDL_adur = {"30.00", "35.0", "40.0", "45.0", "50.0", "60.0"}
    ////! i write_fieldArr(ALEV, "adur", TIDL_adur)
    ////! i write_fieldArr(ALEV, "ahdu", TIDL_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"70", "80", "90", "100", "110", "130"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,air,enemy")
    //autocast
    ////! i TIDL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i TIDL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i TIDL_atp1 = {}
    //! i fill_arr(ALEV, TIDL_anam .. HOTKEY_STR, "[|cffffcc00Level", TIDL_atp1)
    //! i write_fieldArr(ALEV, "atp1", TIDL_atp1)
    //tool tip - aub1
    //! i TIDL_aub1 = {}
    //! i for i=1, ALEV do
       //! i TIDL_aub1[i] = "Sends a gigantic wave which deals " .. TIDL_Ucs1[i] .. " damage to each enemy unit in a line."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", TIDL_aub1)
    //various misc traits of the ability
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", TIDL_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", TIDL_aut1)
    ////! i write_fieldVar(ALEV, "auu1", TIDL_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, TIDL_anam, upoi)
//! endexternalblock
