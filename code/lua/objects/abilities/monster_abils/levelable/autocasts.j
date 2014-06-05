//! externalblock extension=lua ObjectMerger $FILENAME$
    //passive base buff ID
    //passive base abilities ID
    //! i FIRE_ID = 'Ainf'
    //! i AEGS_ID = 'Ainf'
    //! i SLOW_ID = 'Aslo'
    //! i STEL_ID = 'Asps'
    //! i LUST_ID = 'Ablo'
    //! i CURS_ID = 'Acrs'
    //! i SPRT_ID = 'Arpm'
    //! i WEB_ID = 'Aweb'
    //! i FARY_ID = 'Afae'
    //! i SHFT_ID = 'Apsh'
    //! i ABOL_ID = 'Aadm'
    //! i SEAR_ID = 'AHfa'
    //! i COLD_ID = 'AHca'
    //! i PARA_ID = 'ANpa'
    //buff ids
    //! i FIRE_BUFF_ID = 'Binf'
    //total levels for each aura(= 6)
    //! i ALEV = "6"
    //race of healing abilities
    //! i ARAC = "orc"
    //req
    //! i AREQ = ""
    //classify healing abilities as unit
    //! i AHER = "0"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //prefix for all autocasts
    //! i CUSTOM_ID = "Ac"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Bc"
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
    //*** FIRE (Autocast)
    //****************************
    //the button used for the buff/aura
    //! i FIRE_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerFire.blp"
    //the aura buff text
    //! i FIRE_fube = "This unit is under the effects of Inner Fire; its attack damage is increased."
    //the buff effect itself
    //! i FIRE_ftat = "Abilities\\Spells\\Human\\InnerFire\\InnerFireTarget.mdl"
    //the name of the ability
    //! i FIRE_anam = "Inner Fire"
    //! i FIRE_areq = ""
    //autocast range
    //! i FIRE_Inf3 = "500.00"
    //amount damage increased
    //! i FIRE_Inf1 = {}
    //! i FIRE_Inf1[1] = "0.10"
    //! i FIRE_Inf1[2] = "0.20"
    //! i FIRE_Inf1[3] = "0.30"
    //! i FIRE_Inf1[4] = "0.50"
    //! i FIRE_Inf1[5] = "0.70"
    //! i FIRE_Inf1[6] = "1.0"
    //amount armor increased
    //! i FIRE_Inf2 = {}
    //! i FIRE_Inf2[1] = "0"
    //! i FIRE_Inf2[2] = "0"
    //! i FIRE_Inf2[3] = "0"
    //! i FIRE_Inf2[4] = "0"
    //! i FIRE_Inf2[5] = "0"
    //! i FIRE_Inf2[6] = "0"
    //buff
    //! i FIRE_abuf = make_id(CUSTOM_BUFF_ID, upoi2)
    //cast range
    //! i FIRE_aran = "500.00"
    //cooldown
    //! i FIRE_acdn = "1.00"
    //duration
    //! i FIRE_adur = {}
    //! i FIRE_adur[1] = "22.00"
    //! i FIRE_adur[2] = "24.00"
    //! i FIRE_adur[3] = "26.00"
    //! i FIRE_adur[4] = "30.00"
    //! i FIRE_adur[5] = "34.00"
    //! i FIRE_adur[6] = "40.00"
    //mana cost
    //! i FIRE_amcs = {}
    //! i FIRE_amcs[1] = "20"
    //! i FIRE_amcs[2] = "30"
    //! i FIRE_amcs[3] = "40"
    //! i FIRE_amcs[4] = "60"
    //! i FIRE_amcs[5] = "80"
    //! i FIRE_amcs[6] = "100"
    //targets
    //! i FIRE_atar = "air,ground,friend,neutral,self"
    //autocast
    //! i FIRE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i FIRE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i FIRE_atp1 = {}
    //! i fill_arr(ALEV, FIRE_anam .. HOTKEY_STR, "[|cffffcc00Level", FIRE_atp1)
    //tool tip (display quantity/effect)
    //! i FIRE_aub1 = {}
    //! i for i=1, ALEV do
        //! i FIRE_aub1[i] = "Increases a target friendly unit's damage by " .. FIRE_Inf1[i] * 100 .. "% for " .. FIRE_adur[i] .. " seconds."
    //! i end
    //the buff
    //! i setobjecttype("buffs")
    //! i createobject(FIRE_BUFF_ID, FIRE_abuf)
    //! i makechange(current, "fart", FIRE_aart)
    //! i makechange(current, "ftat", FIRE_ftat)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", FIRE_anam)
    //! i makechange(current, "fube", FIRE_fube)
    //! i upoi2 = upoi2 + 1
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(FIRE_ID, base_id)
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
    //! i write_fieldVar(ALEV, "Inf3", FIRE_Inf3)
    //! i write_fieldArr(ALEV, "Inf1", FIRE_Inf1)
    //! i write_fieldArr(ALEV, "Inf2", FIRE_Inf2)
    //! i write_fieldVar(ALEV, "abuf", FIRE_abuf)
    //! i write_fieldVar(ALEV, "aran", FIRE_aran)
    //! i write_fieldVar(ALEV, "acdn", FIRE_acdn)
    //! i write_fieldArr(ALEV, "adur", FIRE_adur)
    //! i write_fieldArr(ALEV, "ahdu", FIRE_adur)
    //! i write_fieldArr(ALEV, "amcs", FIRE_amcs)
    //! i write_fieldVar(ALEV, "atar", FIRE_atar)
    //! i write_fieldArr(ALEV, "atp1", FIRE_atp1)
    //! i write_fieldArr(ALEV, "aub1", FIRE_aub1)
    //! i write_fieldVar(ALEV, "aut1", FIRE_aut1)
    //! i write_fieldVar(ALEV, "auu1", FIRE_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FIRE_anam, upoi)
    //****************************
    //*** Aegis (Autocast)
    //****************************
    //the button used for the buff
    //! i SHLD_fart = "ReplaceableTextures\\CommandButtons\\BTNBarkSkin.blp"
    //button used for on/off
    //! i SHLD_aart = "ReplaceableTextures\\CommandButtons\\BTNBarkSkinOn.blp"
    //! i SHLD_auar = "ReplaceableTextures\\CommandButtons\\BTNBarkSkinOff.blp"
    //the aura buff text
    //! i SHLD_fube = "This unit is under the effects of Aegis; its armor is increased."
    //the buff effect itself
    //! i SHLD_ftat = "Aegis.mdx"
    //attachment point of buff
    //! i SHLD_fta0 = "overhead"
    //sound of cast
    //! i SHLD_aefs = "ManaShieldCastSound"
    //the name of the ability
    //! i SHLD_anam = "Aegis"
    //! i SHLD_areq = ""
    //text order string activations
    //! i SHLD_aoro = "barkskinon"
    //! i SHLD_aorf = "barkskinoff"
    //! i SHLD_aord = "barkskin"
    //autocast range
    //! i SHLD_Inf3 = "500.00"
    //amount damage increased
    //! i SHLD_Inf1 = {}
    //! i SHLD_Inf1[1] = "0.0"
    //! i SHLD_Inf1[2] = "0.0"
    //! i SHLD_Inf1[3] = "0.0"
    //! i SHLD_Inf1[4] = "0.0"
    //! i SHLD_Inf1[5] = "0.0"
    //! i SHLD_Inf1[6] = "0.0"
    //amount armor increased
    //! i SHLD_Inf2 = {}
    //! i SHLD_Inf2[1] = "5"
    //! i SHLD_Inf2[2] = "7"
    //! i SHLD_Inf2[3] = "10"
    //! i SHLD_Inf2[4] = "15"
    //! i SHLD_Inf2[5] = "20"
    //! i SHLD_Inf2[6] = "30"
    //buff
    //! i SHLD_abuf = make_id(CUSTOM_BUFF_ID, upoi2)
    //cast range
    //! i SHLD_aran = "500.00"
    //cooldown
    //! i SHLD_acdn = "1.00"
    //duration
    //! i SHLD_adur = {}
    //! i SHLD_adur[1] = "15.00"
    //! i SHLD_adur[2] = "17.00"
    //! i SHLD_adur[3] = "19.00"
    //! i SHLD_adur[4] = "22.00"
    //! i SHLD_adur[5] = "25.00"
    //! i SHLD_adur[6] = "30.00"
    //mana cost
    //! i SHLD_amcs = {}
    //! i SHLD_amcs[1] = "30"
    //! i SHLD_amcs[2] = "40"
    //! i SHLD_amcs[3] = "50"
    //! i SHLD_amcs[4] = "70"
    //! i SHLD_amcs[5] = "90"
    //! i SHLD_amcs[6] = "110"
    //targets
    //! i SHLD_atar = "air,ground,friend,neutral,self"
    //autocast
    //! i SHLD_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i SHLD_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i SHLD_atp1 = {}
    //! i fill_arr(ALEV, SHLD_anam .. HOTKEY_STR, "[|cffffcc00Level", SHLD_atp1)
    //tool tip (display quantity/effect)
    //! i SHLD_aub1 = {}
    //! i for i=1, ALEV do
        //! i SHLD_aub1[i] = "Increases a target friendly unit's armor by " .. SHLD_Inf2[i] .. " for " .. SHLD_adur[i] .. " seconds."
    //! i end
    //the buff
    //! i setobjecttype("buffs")
    //! i createobject(FIRE_BUFF_ID, SHLD_abuf)
    //! i makechange(current, "fart", SHLD_fart)
    //! i makechange(current, "ftat", SHLD_ftat)
    //! i makechange(current, "fta0", SHLD_fta0)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", SHLD_anam)
    //! i makechange(current, "fube", SHLD_fube)
    //! i upoi2 = upoi2 + 1
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(AEGS_ID, base_id)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "aart", SHLD_aart)
    //! i makechange(current, "auar", SHLD_auar)
    //! i makechange(current, "aefs", SHLD_aefs)
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", AREQ)
    //! i makechange(current, "arqa", AREQ)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //! i makechange(current, "anam", SHLD_anam)
    //! i makechange(current, "aoro", SHLD_aoro)
    //! i makechange(current, "aorf", SHLD_aorf)
    //! i makechange(current, "aord", SHLD_aord)
    //field values
    //! i write_fieldVar(ALEV, "Inf3", SHLD_Inf3)
    //! i write_fieldArr(ALEV, "Inf1", SHLD_Inf1)
    //! i write_fieldArr(ALEV, "Inf2", SHLD_Inf2)
    //! i write_fieldVar(ALEV, "abuf", SHLD_abuf)
    //! i write_fieldVar(ALEV, "aran", SHLD_aran)
    //! i write_fieldVar(ALEV, "acdn", SHLD_acdn)
    //! i write_fieldArr(ALEV, "adur", SHLD_adur)
    //! i write_fieldArr(ALEV, "ahdu", SHLD_adur)
    //! i write_fieldArr(ALEV, "amcs", SHLD_amcs)
    //! i write_fieldVar(ALEV, "atar", SHLD_atar)
    //! i write_fieldArr(ALEV, "atp1", SHLD_atp1)
    //! i write_fieldArr(ALEV, "aub1", SHLD_aub1)
    //! i write_fieldVar(ALEV, "aut1", SHLD_aut1)
    //! i write_fieldVar(ALEV, "auu1", SHLD_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SHLD_anam, upoi)
    //****************************
    //*** SLOW (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i SLOW_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerSLOW.blp"
    //the aura buff text
    ////! i SLOW_fube = "This unit is under the effects of Inner SLOW; its attack damage is increased."
    //the buff effect itself
    ////! i SLOW_ftat = "Abilities\\Spells\\Human\\InnerSLOW\\InnerSLOWTarget.mdl"
    //the name of the ability
    //! i SLOW_anam = "Slow"
    //! i SLOW_areq = ""
    //autocast range
    //! i SLOW_Inf3 = "500.00"
    //attack speed decreased
    //! i SLOW_Slo2 = {}
    //! i SLOW_Slo2[1] = "0.10"
    //! i SLOW_Slo2[2] = "0.15"
    //! i SLOW_Slo2[3] = "0.20"
    //! i SLOW_Slo2[4] = "0.30"
    //! i SLOW_Slo2[5] = "0.40"
    //! i SLOW_Slo2[6] = "0.60"
    //movement speed decreased
    //! i SLOW_Slo1 = {}
    //! i SLOW_Slo1[1] = "0.20"
    //! i SLOW_Slo1[2] = "0.30"
    //! i SLOW_Slo1[3] = "0.40"
    //! i SLOW_Slo1[4] = "0.60"
    //! i SLOW_Slo1[5] = "0.80"
    //! i SLOW_Slo1[6] = "1.10"
    //buff
    //! i SLOW_abuf = 'Bslo'
    //cast range
    //! i SLOW_aran = "700.00"
    //cooldown
    //! i SLOW_acdn = "1.00"
    //duration
    //! i SLOW_adur = {}
    //! i SLOW_adur[1] = "10.00"
    //! i SLOW_adur[2] = "12.00"
    //! i SLOW_adur[3] = "14.00"
    //! i SLOW_adur[4] = "18.00"
    //! i SLOW_adur[5] = "22.00"
    //! i SLOW_adur[6] = "28.00"
    //mana cost
    //! i SLOW_amcs = {}
    //! i SLOW_amcs[1] = "20"
    //! i SLOW_amcs[2] = "30"
    //! i SLOW_amcs[3] = "40"
    //! i SLOW_amcs[4] = "60"
    //! i SLOW_amcs[5] = "80"
    //! i SLOW_amcs[6] = "100"
    //targets
    //! i SLOW_atar = "air,ground,enemy"
    //autocast
    //! i SLOW_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i SLOW_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i SLOW_atp1 = {}
    //! i fill_arr(ALEV, SLOW_anam .. HOTKEY_STR, "[|cffffcc00Level", SLOW_atp1)
    //tool tip (display quantity/effect)
    //! i SLOW_aub1 = {}
    //! i for i=1, ALEV do
        //! i SLOW_aub1[i] = "Slows a target enemy unit's attack rate by " .. SLOW_Slo2[i] * 100 .. "% and movement speed by " .. SLOW_Slo1[i] .. "% for " .. SLOW_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(SLOW_ID, base_id)
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
    //! i makechange(current, "anam", SLOW_anam)
    //field values
    //! i write_fieldArr(ALEV, "Slo1", SLOW_Slo1)
    //! i write_fieldArr(ALEV, "Slo2", SLOW_Slo2)
    //! i write_fieldVar(ALEV, "abuf", SLOW_abuf)
    //! i write_fieldVar(ALEV, "aran", SLOW_aran)
    //! i write_fieldVar(ALEV, "acdn", SLOW_acdn)
    //! i write_fieldArr(ALEV, "adur", SLOW_adur)
    //! i write_fieldArr(ALEV, "ahdu", SLOW_adur)
    //! i write_fieldArr(ALEV, "amcs", SLOW_amcs)
    //! i write_fieldVar(ALEV, "atar", SLOW_atar)
    //! i write_fieldArr(ALEV, "atp1", SLOW_atp1)
    //! i write_fieldArr(ALEV, "aub1", SLOW_aub1)
    //! i write_fieldVar(ALEV, "aut1", SLOW_aut1)
    //! i write_fieldVar(ALEV, "auu1", SLOW_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SLOW_anam, upoi)
    //****************************
    //*** STEL (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i STEL_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerSTEL.blp"
    //the aura buff text
    ////! i STEL_fube = "This unit is under the effects of Inner STEL; its attack damage is increased."
    //the buff effect itself
    ////! i STEL_ftat = "Abilities\\Spells\\Human\\InnerSTEL\\InnerSTELTarget.mdl"
    //the name of the ability
    //! i STEL_anam = "Spell Steal"
    //! i STEL_areq = ""
    //autocast range
    //! i STEL_Inf3 = "500.00"
    //aoe
    //! i STEL_aare = "700.00"
    //buff
    ////! i STEL_abuf = 'Bslo'
    //cast range
    //! i STEL_aran = "700.00"
    //cooldown
    //! i STEL_acdn = {}
    //! i STEL_acdn[1] = "20.00"
    //! i STEL_acdn[2] = "18.00"
    //! i STEL_acdn[3] = "16.00"
    //! i STEL_acdn[4] = "12.00"
    //! i STEL_acdn[5] = "8.00"
    //! i STEL_acdn[6] = "3.00"
    //duration
    //! i STEL_adur = {}
    //! i STEL_adur[1] = "10.00"
    //! i STEL_adur[2] = "12.00"
    //! i STEL_adur[3] = "14.00"
    //! i STEL_adur[4] = "18.00"
    //! i STEL_adur[5] = "22.00"
    //! i STEL_adur[6] = "28.00"
    //mana cost
    //! i STEL_amcs = {}
    //! i STEL_amcs[1] = "35"
    //! i STEL_amcs[2] = "45"
    //! i STEL_amcs[3] = "55"
    //! i STEL_amcs[4] = "75"
    //! i STEL_amcs[5] = "95"
    //! i STEL_amcs[6] = "125"
    //targets
    //! i STEL_atar = "air,ground,friend,enemy,neutral,self,vuln,invu"
    //autocast
    //! i STEL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i STEL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i STEL_atp1 = {}
    //! i fill_arr(ALEV, STEL_anam .. HOTKEY_STR, "[|cffffcc00Level", STEL_atp1)
    //tool tip (display quantity/effect)
    //! i STEL_aub1 = {}
    //! i for i=1, ALEV do
        //! i STEL_aub1[i] = "Steals a positive buff from an enemy unit and applies it to a nearby friendly unit, or takes a negative buff from a friendly unit and applies it to a nearby enemy unit. Cooldown of " .. STEL_acdn[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(STEL_ID, base_id)
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
    //! i makechange(current, "anam", STEL_anam)
    //field values
    //! i write_fieldVar(ALEV, "abuf", STEL_abuf)
    //! i write_fieldVar(ALEV, "aran", STEL_aran)
    //! i write_fieldArr(ALEV, "acdn", STEL_acdn)
    ////! i write_fieldArr(ALEV, "adur", STEL_adur)
    ////! i write_fieldArr(ALEV, "ahdu", STEL_adur)
    //! i write_fieldArr(ALEV, "amcs", STEL_amcs)
    //! i write_fieldVar(ALEV, "atar", STEL_aare)
    //! i write_fieldVar(ALEV, "atar", STEL_atar)
    //! i write_fieldArr(ALEV, "atp1", STEL_atp1)
    //! i write_fieldArr(ALEV, "aub1", STEL_aub1)
    //! i write_fieldVar(ALEV, "aut1", STEL_aut1)
    //! i write_fieldVar(ALEV, "auu1", STEL_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, STEL_anam, upoi)
    //****************************
    //*** Bloodlust (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i LUST_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerLUST.blp"
    //the aura buff text
    ////! i LUST_fube = "This unit is under the effects of Inner LUST; its attack damage is increased."
    //the buff effect itself
    ////! i LUST_ftat = "Abilities\\Spells\\Human\\InnerLUST\\InnerLUSTTarget.mdl"
    //the name of the ability
    //! i LUST_anam = "Bloodlust"
    //! i LUST_areq = ""
    //attack speed increased
    //! i LUST_Blo1 = {}
    //! i LUST_Blo1[1] = "0.10"
    //! i LUST_Blo1[2] = "0.15"
    //! i LUST_Blo1[3] = "0.20"
    //! i LUST_Blo1[4] = "0.30"
    //! i LUST_Blo1[5] = "0.40"
    //! i LUST_Blo1[6] = "0.50"
    //movement speed increased
    //! i LUST_Blo2 = {}
    //! i LUST_Blo2[1] = "0.10"
    //! i LUST_Blo2[2] = "0.15"
    //! i LUST_Blo2[3] = "0.20"
    //! i LUST_Blo2[4] = "0.30"
    //! i LUST_Blo2[5] = "0.40"
    //! i LUST_Blo2[6] = "0.50"
    //scaling increase
    //! i LUST_Blo3 = {}
    //! i LUST_Blo3[1] = "0.05"
    //! i LUST_Blo3[2] = "0.10"
    //! i LUST_Blo3[3] = "0.15"
    //! i LUST_Blo3[4] = "0.20"
    //! i LUST_Blo3[5] = "0.25"
    //! i LUST_Blo3[6] = "0.30"
    //buff
    //! i LUST_abuf = 'Bblo'
    //cast range
    //! i LUST_aran = "600.00"
    //cooldown
    //! i LUST_acdn = "1.00"
    //duration
    //! i LUST_adur = {}
    //! i LUST_adur[1] = "10.00"
    //! i LUST_adur[2] = "12.00"
    //! i LUST_adur[3] = "14.00"
    //! i LUST_adur[4] = "18.00"
    //! i LUST_adur[5] = "22.00"
    //! i LUST_adur[6] = "28.00"
    //mana cost
    //! i LUST_amcs = {}
    //! i LUST_amcs[1] = "30"
    //! i LUST_amcs[2] = "40"
    //! i LUST_amcs[3] = "50"
    //! i LUST_amcs[4] = "70"
    //! i LUST_amcs[5] = "90"
    //! i LUST_amcs[6] = "120"
    //targets
    //! i LUST_atar = "air,ground,friend,organic,self,neutral"
    //autocast
    //! i LUST_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i LUST_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i LUST_atp1 = {}
    //! i fill_arr(ALEV, LUST_anam .. HOTKEY_STR, "[|cffffcc00Level", LUST_atp1)
    //tool tip (display quantity/effect)
    //! i LUST_aub1 = {}
    //! i for i=1, ALEV do
        //! i LUST_aub1[i] = "Increases a friendly unit's attack rate by " .. LUST_Blo1[i] * 100 .. "% and movement speed by " .. LUST_Blo2[i] .. "% for " .. LUST_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(LUST_ID, base_id)
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
    //! i makechange(current, "anam", LUST_anam)
    //field values
    //! i write_fieldArr(ALEV, "Blo1", LUST_Blo1)
    //! i write_fieldArr(ALEV, "Blo2", LUST_Blo2)
    //! i write_fieldArr(ALEV, "Blo3", LUST_Blo3)
    //! i write_fieldVar(ALEV, "abuf", LUST_abuf)
    //! i write_fieldVar(ALEV, "aran", LUST_aran)
    //! i write_fieldVar(ALEV, "acdn", LUST_acdn)
    //! i write_fieldArr(ALEV, "adur", LUST_adur)
    //! i write_fieldArr(ALEV, "ahdu", LUST_adur)
    //! i write_fieldArr(ALEV, "amcs", LUST_amcs)
    //! i write_fieldVar(ALEV, "atar", LUST_atar)
    //! i write_fieldArr(ALEV, "atp1", LUST_atp1)
    //! i write_fieldArr(ALEV, "aub1", LUST_aub1)
    //! i write_fieldVar(ALEV, "aut1", LUST_aut1)
    //! i write_fieldVar(ALEV, "auu1", LUST_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, LUST_anam, upoi)
    //****************************
    //*** Curse (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i CURS_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerCURS.blp"
    //the aura buff text
    ////! i CURS_fube = "This unit is under the effects of Inner CURS; its attack damage is increased."
    //the buff effect itself
    ////! i CURS_ftat = "Abilities\\Spells\\Human\\InnerCURS\\InnerCURSTarget.mdl"
    //the name of the ability
    //! i CURS_anam = "Curse"
    //! i CURS_areq = ""
    //chance to miss
    //! i CURS_Crs1 = {}
    //! i CURS_Crs1[1] = "0.10"
    //! i CURS_Crs1[2] = "0.14"
    //! i CURS_Crs1[3] = "0.18"
    //! i CURS_Crs1[4] = "0.24"
    //! i CURS_Crs1[5] = "0.30"
    //! i CURS_Crs1[6] = "0.38"
    //buff
    //! i CURS_abuf = 'Bcrs'
    //cast range
    //! i CURS_aran = "700.00"
    //cooldown
    //! i CURS_acdn = "1.00"
    //duration
    //! i CURS_adur = {}
    //! i CURS_adur[1] = "25.00"
    //! i CURS_adur[2] = "30.00"
    //! i CURS_adur[3] = "35.00"
    //! i CURS_adur[4] = "50.00"
    //! i CURS_adur[5] = "65.00"
    //! i CURS_adur[6] = "85.00"
    //mana cost
    //! i CURS_amcs = {}
    //! i CURS_amcs[1] = "30"
    //! i CURS_amcs[2] = "40"
    //! i CURS_amcs[3] = "50"
    //! i CURS_amcs[4] = "70"
    //! i CURS_amcs[5] = "90"
    //! i CURS_amcs[6] = "120"
    //targets
    //! i CURS_atar = "air,ground,enemy,organic,neutral"
    //autocast
    //! i CURS_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i CURS_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i CURS_atp1 = {}
    //! i fill_arr(ALEV, CURS_anam .. HOTKEY_STR, "[|cffffcc00Level", CURS_atp1)
    //tool tip (display quantity/effect)
    //! i CURS_aub1 = {}
    //! i for i=1, ALEV do
        //! i CURS_aub1[i] = "Curses a target enemy unit, causing it to have a" .. CURS_Crs1[i] * 100 .. "% chance to miss on attack.  Lasts for " .. CURS_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(CURS_ID, base_id)
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
    //! i makechange(current, "anam", CURS_anam)
    //field values
    //! i write_fieldArr(ALEV, "Crs", CURS_Crs1)
    //! i write_fieldVar(ALEV, "abuf", CURS_abuf)
    //! i write_fieldVar(ALEV, "aran", CURS_aran)
    //! i write_fieldVar(ALEV, "acdn", CURS_acdn)
    //! i write_fieldArr(ALEV, "adur", CURS_adur)
    //! i write_fieldArr(ALEV, "ahdu", CURS_adur)
    //! i write_fieldArr(ALEV, "amcs", CURS_amcs)
    //! i write_fieldVar(ALEV, "atar", CURS_atar)
    //! i write_fieldArr(ALEV, "atp1", CURS_atp1)
    //! i write_fieldArr(ALEV, "aub1", CURS_aub1)
    //! i write_fieldVar(ALEV, "aut1", CURS_aut1)
    //! i write_fieldVar(ALEV, "auu1", CURS_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CURS_anam, upoi)
    //****************************
    //*** Spirit Touch (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i SPRT_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerSPRT.blp"
    //the aura buff text
    ////! i SPRT_fube = "This unit is under the effects of Inner SPRT; its attack damage is increased."
    //the buff effect itself
    ////! i SPRT_ftat = "Abilities\\Spells\\Human\\InnerSPRT\\InnerSPRTTarget.mdl"
    //the name of the ability
    //! i SPRT_anam = "Spirit Touch"
    //! i SPRT_areq = ""
    //mana restored
    //! i SPRT_Rej2 = {}
    //! i SPRT_Rej2[1] = "3.00"
    //! i SPRT_Rej2[2] = "6.00"
    //! i SPRT_Rej2[3] = "9.00"
    //! i SPRT_Rej2[4] = "13.00"
    //! i SPRT_Rej2[5] = "17.00"
    //! i SPRT_Rej2[6] = "21.00"
    // max units affected
    //! i SPRT_Rpb6 = {}
    //! i SPRT_Rpb6[1] = "3"
    //! i SPRT_Rpb6[2] = "5"
    //! i SPRT_Rpb6[3] = "7"
    //! i SPRT_Rpb6[4] = "9"
    //! i SPRT_Rpb6[5] = "11"
    //! i SPRT_Rpb6[6] = "13"
    // max units charged to caster
    //! i SPRT_Rpb5 = {}
    //! i SPRT_Rpb5[1] = "2"
    //! i SPRT_Rpb5[2] = "4"
    //! i SPRT_Rpb5[3] = "6"
    //! i SPRT_Rpb5[4] = "8"
    //! i SPRT_Rpb5[5] = "10"
    //! i SPRT_Rpb5[6] = "12"
    //area of effect
    //! i SPRT_aare = {}
    //! i SPRT_aare[1] = "500.00"
    //! i SPRT_aare[2] = "550.00"
    //! i SPRT_aare[3] = "600.00"
    //! i SPRT_aare[4] = "700.00"
    //! i SPRT_aare[5] = "800.00"
    //! i SPRT_aare[6] = "1000.00"
    //buff
    //! i SPRT_abuf = 'Brpm'
    //cast range
    //! i SPRT_aran = "250.00"
    //cooldown
    //! i SPRT_acdn = "1.00"
    //duration
    //! i SPRT_adur = {}
    //! i SPRT_adur[1] = "1.00"
    //! i SPRT_adur[2] = "1.00"
    //! i SPRT_adur[3] = "1.00"
    //! i SPRT_adur[4] = "1.00"
    //! i SPRT_adur[5] = "1.00"
    //! i SPRT_adur[6] = "1.00"
    //mana cost
    //! i SPRT_amcs = {}
    //! i SPRT_amcs[1] = "2"
    //! i SPRT_amcs[2] = "4"
    //! i SPRT_amcs[3] = "6"
    //! i SPRT_amcs[4] = "10"
    //! i SPRT_amcs[5] = "14"
    //! i SPRT_amcs[6] = "20"
    //targets
    //! i SPRT_atar = "ground,air,friend,self,organic,vuln,invu"
    //autocast
    //! i SPRT_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i SPRT_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i SPRT_atp1 = {}
    //! i fill_arr(ALEV, SPRT_anam .. HOTKEY_STR, "[|cffffcc00Level", SPRT_atp1)
    //tool tip (display quantity/effect)
    //! i SPRT_aub1 = {}
    //! i for i=1, ALEV do
        //! i SPRT_aub1[i] = "Restores " .. SPRT_Rej2[i] .. " mana to a maximum of " .. SPRT_Rpb6[i] .. " nearby friendly units in " .. SPRT_aare[i] .. " range."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(SPRT_ID, base_id)
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
    //! i makechange(current, "anam", SPRT_anam)
    //field values
    //! i write_fieldArr(ALEV, "Rej2", SPRT_Rej2)
    //! i write_fieldArr(ALEV, "Rpb5", SPRT_Rpb5)
    //! i write_fieldArr(ALEV, "Rpb6", SPRT_Rpb6)
    //! i write_fieldArr(ALEV, "aare", SPRT_aare)
    //! i write_fieldVar(ALEV, "abuf", SPRT_abuf)
    //! i write_fieldVar(ALEV, "aran", SPRT_aran)
    //! i write_fieldVar(ALEV, "acdn", SPRT_acdn)
    //! i write_fieldArr(ALEV, "adur", SPRT_adur)
    //! i write_fieldArr(ALEV, "ahdu", SPRT_adur)
    //! i write_fieldArr(ALEV, "amcs", SPRT_amcs)
    //! i write_fieldVar(ALEV, "atar", SPRT_atar)
    //! i write_fieldArr(ALEV, "atp1", SPRT_atp1)
    //! i write_fieldArr(ALEV, "aub1", SPRT_aub1)
    //! i write_fieldVar(ALEV, "aut1", SPRT_aut1)
    //! i write_fieldVar(ALEV, "auu1", SPRT_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SPRT_anam, upoi)
    //****************************
    //*** Web (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i WEB_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerWEB.blp"
    //the aura buff text
    ////! i WEB_fube = "This unit is under the effects of Inner WEB; its attack damage is increased."
    //the buff effect itself
    ////! i WEB_ftat = "Abilities\\Spells\\Human\\InnerWEB\\InnerWEBTarget.mdl"
    //the name of the ability
    //! i WEB_anam = "Web"
    //! i WEB_areq = ""
    //air unit height
    //! i WEB_Ens2 = "200.00"
    //air unit low
    //! i WEB_Ens1 = "0.60"
    //melee attack range
    //! i WEB_Ens3 = "128.00"
    //buff
    //! i WEB_abuf = 'Bwea,Bweb'
    //cast range
    //! i WEB_aran = "400.00"
    //cooldown
    //! i WEB_acdn = {}
    //! i WEB_acdn[1] = "25.00"
    //! i WEB_acdn[2] = "23.00"
    //! i WEB_acdn[3] = "21.00"
    //! i WEB_acdn[4] = "18.00"
    //! i WEB_acdn[5] = "15.00"
    //! i WEB_acdn[6] = "11.00"
    //duration
    //! i WEB_adur = {}
    //! i WEB_adur[1] = "2.0"
    //! i WEB_adur[2] = "3.0"
    //! i WEB_adur[3] = "4.0"
    //! i WEB_adur[4] = "5.5"
    //! i WEB_adur[5] = "7.0"
    //! i WEB_adur[6] = "9.0"
    //mana cost
    //! i WEB_amcs = {}
    //! i WEB_amcs[1] = "0"
    //! i WEB_amcs[2] = "0"
    //! i WEB_amcs[3] = "0"
    //! i WEB_amcs[4] = "0"
    //! i WEB_amcs[5] = "0"
    //! i WEB_amcs[6] = "0"
    //targets
    //! i WEB_atar = "ground,air,enemy,vuln,invu"
    //autocast
    //! i WEB_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i WEB_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i WEB_atp1 = {}
    //! i fill_arr(ALEV, WEB_anam .. HOTKEY_STR, "[|cffffcc00Level", WEB_atp1)
    //tool tip (display quantity/effect)
    //! i WEB_aub1 = {}
    //! i for i=1, ALEV do
        //! i WEB_aub1[i] = "Binds a target enemy unit in webbing, immobilizing it for " .. WEB_adur[i] .. " seconds.  Cooldown of " .. WEB_acdn[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(WEB_ID, base_id)
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
    //! i makechange(current, "anam", WEB_anam)
    //field values
    //! i write_fieldVar(ALEV, "Ens2", WEB_Ens2)
    //! i write_fieldVar(ALEV, "Ens1", WEB_Ens1)
    //! i write_fieldVar(ALEV, "Ens1", WEB_Ens3)
    ////! i write_fieldArr(ALEV, "aare", WEB_aare)
    //! i write_fieldVar(ALEV, "abuf", WEB_abuf)
    //! i write_fieldVar(ALEV, "aran", WEB_aran)
    //! i write_fieldArr(ALEV, "acdn", WEB_acdn)
    //! i write_fieldArr(ALEV, "adur", WEB_adur)
    //! i write_fieldArr(ALEV, "ahdu", WEB_adur)
    //! i write_fieldArr(ALEV, "amcs", WEB_amcs)
    //! i write_fieldVar(ALEV, "atar", WEB_atar)
    //! i write_fieldArr(ALEV, "atp1", WEB_atp1)
    //! i write_fieldArr(ALEV, "aub1", WEB_aub1)
    //! i write_fieldVar(ALEV, "aut1", WEB_aut1)
    //! i write_fieldVar(ALEV, "auu1", WEB_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, WEB_anam, upoi)
    //****************************
    //*** Fairy Fire (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i FARY_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerFARY.blp"
    //the aura buff text
    ////! i FARY_fube = "This unit is under the effects of Inner FARY; its attack damage is increased."
    //the buff effect itself
    ////! i FARY_ftat = "Abilities\\Spells\\Human\\InnerFARY\\InnerFARYTarget.mdl"
    //the name of the ability
    //! i FARY_anam = "Fairy Fire"
    //! i FARY_areq = ""
    //defense reduction
    //! i FARY_fae1 = {}
    //! i FARY_fae1[1] = "4"
    //! i FARY_fae1[2] = "6"
    //! i FARY_fae1[3] = "8"
    //! i FARY_fae1[4] = "11"
    //! i FARY_fae1[5] = "14"
    //! i FARY_fae1[6] = "18"
    //buff
    //! i FARY_abuf = 'Bfae'
    //cast range
    //! i FARY_aran = "700.00"
    //cooldown
    //! i FARY_acdn = {}
    //! i FARY_acdn[1] = "1.00"
    //! i FARY_acdn[2] = "1.00"
    //! i FARY_acdn[3] = "1.00"
    //! i FARY_acdn[4] = "1.00"
    //! i FARY_acdn[5] = "1.00"
    //! i FARY_acdn[6] = "1.00"
    //duration
    //! i FARY_adur = {}
    //! i FARY_adur[1] = "15.00"
    //! i FARY_adur[2] = "17.00"
    //! i FARY_adur[3] = "19.00"
    //! i FARY_adur[4] = "22.00"
    //! i FARY_adur[5] = "25.00"
    //! i FARY_adur[6] = "29.0"
    //mana cost
    //! i FARY_amcs = {}
    //! i FARY_amcs[1] = "45"
    //! i FARY_amcs[2] = "55"
    //! i FARY_amcs[3] = "65"
    //! i FARY_amcs[4] = "80"
    //! i FARY_amcs[5] = "95"
    //! i FARY_amcs[6] = "115"
    //targets
    //! i FARY_atar = "air,ground,enemy,neutral"
    //autocast
    //! i FARY_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i FARY_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i FARY_atp1 = {}
    //! i fill_arr(ALEV, FARY_anam .. HOTKEY_STR, "[|cffffcc00Level", FARY_atp1)
    //tool tip (display quantity/effect)
    //! i FARY_aub1 = {}
    //! i for i=1, ALEV do
        //! i FARY_aub1[i] = "Reduces a target enemy unit's armor by " .. FARY_fae1[i] .. " and gives vision of that unit.  Lasts for " .. FARY_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(FARY_ID, base_id)
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
    //! i makechange(current, "anam", FARY_anam)
    //field values
    //! i write_fieldArr(ALEV, "Fae1", FARY_fae1)
    ////! i write_fieldArr(ALEV, "aare", FARY_aare)
    //! i write_fieldVar(ALEV, "abuf", FARY_abuf)
    //! i write_fieldVar(ALEV, "aran", FARY_aran)
    //! i write_fieldArr(ALEV, "acdn", FARY_acdn)
    //! i write_fieldArr(ALEV, "adur", FARY_adur)
    //! i write_fieldArr(ALEV, "ahdu", FARY_adur)
    //! i write_fieldArr(ALEV, "amcs", FARY_amcs)
    //! i write_fieldVar(ALEV, "atar", FARY_atar)
    //! i write_fieldArr(ALEV, "atp1", FARY_atp1)
    //! i write_fieldArr(ALEV, "aub1", FARY_aub1)
    //! i write_fieldVar(ALEV, "aut1", FARY_aut1)
    //! i write_fieldVar(ALEV, "auu1", FARY_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FARY_anam, upoi)
    //****************************
    //*** Phase Shift (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i SHFT_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerSHFT.blp"
    //the aura buff text
    ////! i SHFT_fube = "This unit is under the effects of Inner SHFT; its attack damage is increased."
    //the buff effect itself
    ////! i SHFT_ftat = "Abilities\\Spells\\Human\\InnerSHFT\\InnerSHFTTarget.mdl"
    //the name of the ability
    //! i SHFT_anam = "Phase Shift"
    //! i SHFT_areq = ""
    //buff
    //! i SHFT_abuf = 'Bpsh'
    //cast range
    ////! i SHFT_aran = "700.00"
    //cooldown
    //! i SHFT_acdn = {}
    //! i SHFT_acdn[1] = "10.00"
    //! i SHFT_acdn[2] = "9.00"
    //! i SHFT_acdn[3] = "8.00"
    //! i SHFT_acdn[4] = "6.00"
    //! i SHFT_acdn[5] = "4.00"
    //! i SHFT_acdn[6] = "1.75"
    //duration
    //! i SHFT_adur = {}
    //! i SHFT_adur[1] = "1.00"
    //! i SHFT_adur[2] = "1.15"
    //! i SHFT_adur[3] = "1.30"
    //! i SHFT_adur[4] = "1.50"
    //! i SHFT_adur[5] = "1.70"
    //! i SHFT_adur[6] = "2.00"
    //mana cost
    //! i SHFT_amcs = {}
    //! i SHFT_amcs[1] = "25"
    //! i SHFT_amcs[2] = "40"
    //! i SHFT_amcs[3] = "55"
    //! i SHFT_amcs[4] = "75"
    //! i SHFT_amcs[5] = "95"
    //! i SHFT_amcs[6] = "125"
    //targets
    ////! i SHFT_atar = "air,ground,enemy,neutral"
    //autocast
    //! i SHFT_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i SHFT_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i SHFT_atp1 = {}
    //! i fill_arr(ALEV, SHFT_anam .. HOTKEY_STR, "[|cffffcc00Level", SHFT_atp1)
    //tool tip (display quantity/effect)
    //! i SHFT_aub1 = {}
    //! i for i=1, ALEV do
        //! i SHFT_aub1[i] = "Causes this unit to shift out of existence whenever it takes damage, temporarily avoiding any further damage.  Lasts for " .. SHFT_adur[i] .. " seconds.  Cooldown of " .. SHFT_acdn[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(SHFT_ID, base_id)
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
    //! i makechange(current, "anam", SHFT_anam)
    //field values
    ////! i write_fieldArr(ALEV, "aare", SHFT_aare)
    //! i write_fieldVar(ALEV, "abuf", SHFT_abuf)
    ////! i write_fieldVar(ALEV, "aran", SHFT_aran)
    //! i write_fieldArr(ALEV, "acdn", SHFT_acdn)
    //! i write_fieldArr(ALEV, "adur", SHFT_adur)
    //! i write_fieldArr(ALEV, "ahdu", SHFT_adur)
    //! i write_fieldArr(ALEV, "amcs", SHFT_amcs)
    ////! i write_fieldVar(ALEV, "atar", SHFT_atar)
    //! i write_fieldArr(ALEV, "atp1", SHFT_atp1)
    //! i write_fieldArr(ALEV, "aub1", SHFT_aub1)
    //! i write_fieldVar(ALEV, "aut1", SHFT_aut1)
    //! i write_fieldVar(ALEV, "auu1", SHFT_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SHFT_anam, upoi)
    //****************************
    //*** Abolish Magic (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i ABOL_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerABOL.blp"
    //the aura buff text
    ////! i ABOL_fube = "This unit is under the effects of Inner ABOL; its attack damage is increased."
    //the buff effect itself
    ////! i ABOL_ftat = "Abilities\\Spells\\Human\\InnerABOL\\InnerABOLTarget.mdl"
    //the name of the ability
    //! i ABOL_anam = "Abolish Magic"
    //! i ABOL_areq = ""
    //summon damage
    //! i ABOL_adm2 = {}
    //! i ABOL_adm2[1] = "100.00"
    //! i ABOL_adm2[2] = "150.00"
    //! i ABOL_adm2[3] = "200.00"
    //! i ABOL_adm2[4] = "300.00"
    //! i ABOL_adm2[5] = "400.00"
    //! i ABOL_adm2[6] = "600.00"
    //buff
    ////! i ABOL_abuf = 'Bpsh'
    //cast range
    //! i ABOL_aran = "500.00"
    //cooldown
    //! i ABOL_acdn = {}
    //! i ABOL_acdn[1] = "6.00"
    //! i ABOL_acdn[2] = "5.00"
    //! i ABOL_acdn[3] = "4.00"
    //! i ABOL_acdn[4] = "3.00"
    //! i ABOL_acdn[5] = "2.00"
    //! i ABOL_acdn[6] = "1.00"
    //duration
    //! i ABOL_adur = {}
    //! i ABOL_adur[1] = "0.00"
    //! i ABOL_adur[2] = "0.00"
    //! i ABOL_adur[3] = "0.00"
    //! i ABOL_adur[4] = "0.00"
    //! i ABOL_adur[5] = "0.00"
    //! i ABOL_adur[6] = "0.00"
    //mana cost
    //! i ABOL_amcs = {}
    //! i ABOL_amcs[1] = "45"
    //! i ABOL_amcs[2] = "60"
    //! i ABOL_amcs[3] = "75"
    //! i ABOL_amcs[4] = "95"
    //! i ABOL_amcs[5] = "115"
    //! i ABOL_amcs[6] = "140"
    //targets
    //! i ABOL_atar = "air,ground,ward,invu,vuln,tree"
    //autocast
    //! i ABOL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i ABOL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i ABOL_atp1 = {}
    //! i fill_arr(ALEV, ABOL_anam .. HOTKEY_STR, "[|cffffcc00Level", ABOL_atp1)
    //tool tip (display quantity/effect)
    //! i ABOL_aub1 = {}
    //! i for i=1, ALEV do
        //! i ABOL_aub1[i] = "Dispels positive buffs from enemy units, and negative buffs from friendly units.  Deals " .. ABOL_adm2[i] .. " damage to summoned units.  Cooldown of " .. ABOL_acdn[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(ABOL_ID, base_id)
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
    //! i makechange(current, "anam", ABOL_anam)
    //field values
    //! i write_fieldArr(ALEV, "Adm2", ABOL_adm2)
    //! i write_fieldVar(ALEV, "abuf", ABOL_abuf)
    //! i write_fieldVar(ALEV, "aran", ABOL_aran)
    //! i write_fieldArr(ALEV, "acdn", ABOL_acdn)
    //! i write_fieldArr(ALEV, "adur", ABOL_adur)
    //! i write_fieldArr(ALEV, "ahdu", ABOL_adur)
    //! i write_fieldArr(ALEV, "amcs", ABOL_amcs)
    //! i write_fieldVar(ALEV, "atar", ABOL_atar)
    //! i write_fieldArr(ALEV, "atp1", ABOL_atp1)
    //! i write_fieldArr(ALEV, "aub1", ABOL_aub1)
    //! i write_fieldVar(ALEV, "aut1", ABOL_aut1)
    //! i write_fieldVar(ALEV, "auu1", ABOL_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ABOL_anam, upoi)
    //****************************
    //*** Searing Arrows (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i SEAR_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerSEAR.blp"
    //the aura buff text
    ////! i SEAR_fube = "This unit is under the effects of Inner SEAR; its attack damage is increased."
    //the buff effect itself
    ////! i SEAR_ftat = "Abilities\\Spells\\Human\\InnerSEAR\\InnerSEARTarget.mdl"
    //the name of the ability
    //! i SEAR_anam = "Searing Arrows"
    //! i SEAR_areq = ""
    //summon damage
    //! i SEAR_Hfa1 = {}
    //! i SEAR_Hfa1[1] = "10.00"
    //! i SEAR_Hfa1[2] = "20.00"
    //! i SEAR_Hfa1[3] = "30.00"
    //! i SEAR_Hfa1[4] = "50.00"
    //! i SEAR_Hfa1[5] = "70.00"
    //! i SEAR_Hfa1[6] = "100.00"
    //buff
    ////! i SEAR_abuf = 'Bpsh'
    //cast range
    //! i SEAR_aran = "700.00"
    //cooldown
    //! i SEAR_acdn = {}
    //! i SEAR_acdn[1] = "0"
    //! i SEAR_acdn[2] = "0"
    //! i SEAR_acdn[3] = "0"
    //! i SEAR_acdn[4] = "0"
    //! i SEAR_acdn[5] = "0"
    //! i SEAR_acdn[6] = "0"
    //duration
    //! i SEAR_adur = {}
    //! i SEAR_adur[1] = "0.00"
    //! i SEAR_adur[2] = "0.00"
    //! i SEAR_adur[3] = "0.00"
    //! i SEAR_adur[4] = "0.00"
    //! i SEAR_adur[5] = "0.00"
    //! i SEAR_adur[6] = "0.00"
    //mana cost
    //! i SEAR_amcs = {}
    //! i SEAR_amcs[1] = "5"
    //! i SEAR_amcs[2] = "10"
    //! i SEAR_amcs[3] = "15"
    //! i SEAR_amcs[4] = "30"
    //! i SEAR_amcs[5] = "45"
    //! i SEAR_amcs[6] = "65"
    //targets
    //! i SEAR_atar = "air,ground,structure,enemy,neutral"
    //autocast
    //! i SEAR_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i SEAR_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i SEAR_atp1 = {}
    //! i fill_arr(ALEV, SEAR_anam .. HOTKEY_STR, "[|cffffcc00Level", SEAR_atp1)
    //tool tip (display quantity/effect)
    //! i SEAR_aub1 = {}
    //! i for i=1, ALEV do
        //! i SEAR_aub1[i] = "Adds " .. SEAR_Hfa1[i] .. " bonus fire damage to an attack, but drains mana with each shot fired."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(SEAR_ID, base_id)
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
    //! i makechange(current, "anam", SEAR_anam)
    //field values
    //! i write_fieldArr(ALEV, "Hfa1", SEAR_Hfa1)
    ////! i write_fieldVar(ALEV, "abuf", SEAR_abuf)
    //! i write_fieldVar(ALEV, "aran", SEAR_aran)
    //! i write_fieldArr(ALEV, "acdn", SEAR_acdn)
    ////! i write_fieldArr(ALEV, "adur", SEAR_adur)
    ////! i write_fieldArr(ALEV, "ahdu", SEAR_adur)
    //! i write_fieldArr(ALEV, "amcs", SEAR_amcs)
    //! i write_fieldVar(ALEV, "atar", SEAR_atar)
    //! i write_fieldArr(ALEV, "atp1", SEAR_atp1)
    //! i write_fieldArr(ALEV, "aub1", SEAR_aub1)
    //! i write_fieldVar(ALEV, "aut1", SEAR_aut1)
    //! i write_fieldVar(ALEV, "auu1", SEAR_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SEAR_anam, upoi)
    //****************************
    //*** Cold Arrows (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i COLD_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerCOLD.blp"
    //the aura buff text
    ////! i COLD_fube = "This unit is under the effects of Inner COLD; its attack damage is increased."
    //the buff effect itself
    ////! i COLD_ftat = "Abilities\\Spells\\Human\\InnerCOLD\\InnerCOLDTarget.mdl"
    //the name of the ability
    //! i COLD_anam = "Cold Arrows"
    //! i COLD_areq = ""
    //attack speed decrease
    //! i COLD_Hca3 = {}
    //! i COLD_Hca3[1] = "0.05"
    //! i COLD_Hca3[2] = "0.07"
    //! i COLD_Hca3[3] = "0.09"
    //! i COLD_Hca3[4] = "0.12"
    //! i COLD_Hca3[5] = "0.15"
    //! i COLD_Hca3[6] = "0.20"
    //summon damage
    //! i COLD_Hca1 = {}
    //! i COLD_Hca1[1] = "2.00"
    //! i COLD_Hca1[2] = "4.00"
    //! i COLD_Hca1[3] = "6.00"
    //! i COLD_Hca1[4] = "10.00"
    //! i COLD_Hca1[5] = "14.00"
    //! i COLD_Hca1[6] = "20.00"
    //movement speed decrease
    //! i COLD_Hca2 = {}
    //! i COLD_Hca2[1] = "0.05"
    //! i COLD_Hca2[2] = "0.07"
    //! i COLD_Hca2[3] = "0.09"
    //! i COLD_Hca2[4] = "0.12"
    //! i COLD_Hca2[5] = "0.15"
    //! i COLD_Hca2[6] = "0.20"
    //stack flags
    //! i COLD_Hca4 = "7"
    //buff
    //! i COLD_abuf = 'BHca,Bcsd,Bcsi'
    //cast range
    //! i COLD_aran = "700.00"
    //cooldown
    //! i COLD_acdn = {}
    //! i COLD_acdn[1] = "0"
    //! i COLD_acdn[2] = "0"
    //! i COLD_acdn[3] = "0"
    //! i COLD_acdn[4] = "0"
    //! i COLD_acdn[5] = "0"
    //! i COLD_acdn[6] = "0"
    //duration
    //! i COLD_adur = {}
    //! i COLD_adur[1] = "1.00"
    //! i COLD_adur[2] = "1.10"
    //! i COLD_adur[3] = "1.20"
    //! i COLD_adur[4] = "1.40"
    //! i COLD_adur[5] = "1.60"
    //! i COLD_adur[6] = "2.00"
    //mana cost
    //! i COLD_amcs = {}
    //! i COLD_amcs[1] = "5"
    //! i COLD_amcs[2] = "10"
    //! i COLD_amcs[3] = "15"
    //! i COLD_amcs[4] = "30"
    //! i COLD_amcs[5] = "45"
    //! i COLD_amcs[6] = "65"
    //targets
    //! i COLD_atar = "air,ground,enemy,neutral"
    //autocast
    //! i COLD_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i COLD_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i COLD_atp1 = {}
    //! i fill_arr(ALEV, COLD_anam .. HOTKEY_STR, "[|cffffcc00Level", COLD_atp1)
    //tool tip (display quantity/effect)
    //! i COLD_aub1 = {}
    //! i for i=1, ALEV do
        //! i COLD_aub1[i] = "Adds a cold effect to each attack, adding " .. COLD_Hca1[i] .. " bonus damage and slowing a target enemy unit's attacks by " .. COLD_Hca3[i] .. "% and movement speed by " .. COLD_Hca2[i] .. "%.  Lasts for " .. COLD_adur[i] .. " seconds."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(COLD_ID, base_id)
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
    //! i makechange(current, "anam", COLD_anam)
    //field values
    //! i write_fieldArr(ALEV, "Hca1", COLD_Hca1)
    //! i write_fieldArr(ALEV, "Hca2", COLD_Hca2)
    //! i write_fieldArr(ALEV, "Hca3", COLD_Hca3)
    //! i write_fieldVar(ALEV, "abuf", COLD_abuf)
    //! i write_fieldVar(ALEV, "aran", COLD_aran)
    //! i write_fieldArr(ALEV, "acdn", COLD_acdn)
    //! i write_fieldArr(ALEV, "adur", COLD_adur)
    //! i write_fieldArr(ALEV, "ahdu", COLD_adur)
    //! i write_fieldArr(ALEV, "amcs", COLD_amcs)
    //! i write_fieldVar(ALEV, "atar", COLD_atar)
    //! i write_fieldArr(ALEV, "atp1", COLD_atp1)
    //! i write_fieldArr(ALEV, "aub1", COLD_aub1)
    //! i write_fieldVar(ALEV, "aut1", COLD_aut1)
    //! i write_fieldVar(ALEV, "auu1", COLD_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, COLD_anam, upoi)
    //****************************
    //*** Parasite (Autocast)
    //****************************
    //the button used for the buff/aura
    ////! i PARA_aart = "ReplaceableTextures\\CommandButtons\\BTNInnerPARA.blp"
    //the aura buff text
    ////! i PARA_fube = "This unit is under the effects of Inner PARA; its attack damage is increased."
    //the buff effect itself
    ////! i PARA_ftat = "Abilities\\Spells\\Human\\InnerPARA\\InnerPARATarget.mdl"
    //the name of the ability
    //! i PARA_anam = "Parasite"
    //! i PARA_areq = ""
    //damage per second
    //! i PARA_Poi1 = {}
    //! i PARA_Poi1[1] = "1.0"
    //! i PARA_Poi1[2] = "2.0"
    //! i PARA_Poi1[3] = "3.0"
    //! i PARA_Poi1[4] = "5.0"
    //! i PARA_Poi1[5] = "7.0"
    //! i PARA_Poi1[6] = "10.0"
    //stacking type
    //! i PARA_Poi4 = "8"
    //summoned unit count
    //! i PARA_Npa5 = "1"
    //duration of unit - seconds
    //! i PARA_Npa6 = "30.00"
    //unit type
    //! i PARA_ipmu = "ncfs"
    //buff
    //! i PARA_abuf = 'BNpa,BNpm'
    //cast range
    //! i PARA_aran = "700.00"
    //cooldown
    //! i PARA_acdn = {}
    //! i PARA_acdn[1] = "5.0"
    //! i PARA_acdn[2] = "5.0"
    //! i PARA_acdn[3] = "5.0"
    //! i PARA_acdn[4] = "5.0"
    //! i PARA_acdn[5] = "5.0"
    //! i PARA_acdn[6] = "5.0"
    //duration
    //! i PARA_adur = {}
    //! i PARA_adur[1] = "30.00"
    //! i PARA_adur[2] = "35.00"
    //! i PARA_adur[3] = "40.00"
    //! i PARA_adur[4] = "50.00"
    //! i PARA_adur[5] = "60.00"
    //! i PARA_adur[6] = "75.00"
    //mana cost
    //! i PARA_amcs = {}
    //! i PARA_amcs[1] = "60"
    //! i PARA_amcs[2] = "75"
    //! i PARA_amcs[3] = "90"
    //! i PARA_amcs[4] = "110"
    //! i PARA_amcs[5] = "130"
    //! i PARA_amcs[6] = "160"
    //targets
    //! i PARA_atar = "air,ground,enemy,neutral,organic"
    //autocast
    //! i PARA_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    //! i PARA_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name
    //! i PARA_atp1 = {}
    //! i fill_arr(ALEV, PARA_anam .. HOTKEY_STR, "[|cffffcc00Level", PARA_atp1)
    //tool tip (display quantity/effect)
    //! i PARA_aub1 = {}
    //! i for i=1, ALEV do
        //! i PARA_aub1[i] = "Afflicts a target enemy unit with a deadly parasite that deals " .. PARA_Poi1[i] .. " damage per second for " .. PARA_adur[i] .. " seconds.  If the afflicted unit dies while under the effect of Parasite, a minor minion will spawn from its corpse."
    //! i end
    //the ability itself now
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(PARA_ID, base_id)
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
    //! i makechange(current, "anam", PARA_anam)
    //field values
    //! i write_fieldArr(ALEV, "Poi1", PARA_Poi1)
    //! i write_fieldVar(ALEV, "Poi4", PARA_Poi4)
    //! i write_fieldVar(ALEV, "Npa5", PARA_Npa5)
    //! i write_fieldVar(ALEV, "Npa6", PARA_Npa6)
    //! i write_fieldVar(ALEV, "ipmu", PARA_ipmu)
    //! i write_fieldVar(ALEV, "abuf", PARA_abuf)
    //! i write_fieldVar(ALEV, "aran", PARA_aran)
    //! i write_fieldArr(ALEV, "acdn", PARA_acdn)
    //! i write_fieldArr(ALEV, "adur", PARA_adur)
    //! i write_fieldArr(ALEV, "ahdu", PARA_adur)
    //! i write_fieldArr(ALEV, "amcs", PARA_amcs)
    //! i write_fieldVar(ALEV, "atar", PARA_atar)
    //! i write_fieldArr(ALEV, "atp1", PARA_atp1)
    //! i write_fieldArr(ALEV, "aub1", PARA_aub1)
    //! i write_fieldVar(ALEV, "aut1", PARA_aut1)
    //! i write_fieldVar(ALEV, "auu1", PARA_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, PARA_anam, upoi)
//! endexternalblock
