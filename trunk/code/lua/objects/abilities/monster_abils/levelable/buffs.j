//! externalblock extension=lua ObjectMerger $FILENAME$
    //buff abilities
    //! i BNSH_ID = 'AHbn'
    //! i DIVN_ID = 'AHds'
    //! i SMAN_ID = 'AHdr'
    //! i BSRK_ID = 'Absk'
    //! i LGHT_ID = 'Alsh'
    //! i PRGE_ID = 'Apg2'
    //! i LINK_ID = 'Aspl'
    //! i HEX_ID = 'AOhx'
    //! i IMAG_ID = 'AOmi'
    //! i WALK_ID = 'AOwk'
    //! i ANTI_ID = 'Aams'
    //! i CRIP_ID = 'Acri'
    //! i UNHO_ID = 'Auhf'
    //! i FROA_ID = 'AUfa'
    //! i SLEP_ID = 'AUsl'
    //! i ROAR_ID = 'Aroa'
    //! i HOWL_ID = 'ANht'
    //! i TANT_ID = 'Atau'
    //total levels for each buff(= 6)
    //! i ALEV = "6"
    //race of healing abilities
    //! i ARAC = "undead"
    //req
    //! i AREQ = ""
    //classify buff abilities as hero
    //! i AHER = "1"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //prefix for all autocasts
    //! i CUSTOM_ID = "Ab"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Bb"
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
    //*** Banish
    //****************************
    //the button used for the buff/aura
    ////! i BNSH_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i BNSH_fube = "This unit is under the effects of Inner BNSH; its attack damage is increased."
    //the buff effect itself
    ////! i BNSH_ftat = "Abilities\\Spells\\Human\\InnerBNSH\\InnerBNSHTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(BNSH_ID, base_id)
    //the name of the ability
    //! i BNSH_anam = "Banish"
    //! i BNSH_areq = ""
    //movement speed modifier
    //! i write_fieldVar(ALEV, "Hbn1", "0.50")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BHbn')
    //cast range - aran
    //! i write_fieldVar(ALEV, 'aran', "800.00")
    //cast time
    ////! i BNSH_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"3.0", "3.0", "3.0", "2.0", "2.0", "0.0"})
    //duration - adur/ahdu
    //! i BNSH_adur = {"6.00", "7.00", "8.00", "10.00", "12.00", "16.00"}
    //! i write_fieldArr(ALEV, "adur", BNSH_adur)
    //! i write_fieldArr(ALEV, "ahdu", BNSH_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "60", "70", "80", "90", "100"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground")
    //autocast
    ////! i BNSH_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i BNSH_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i BNSH_atp1 = {}
    //! i fill_arr(ALEV, BNSH_anam .. HOTKEY_STR, "[|cffffcc00Level", BNSH_atp1)
    //! i write_fieldArr(ALEV, "atp1", BNSH_atp1)
    //tool tip - aub1
    //! i BNSH_aub1 = {}
    //! i for i=1, ALEV do
       //! i BNSH_aub1[i] = "Turns a unit ethereal for " .. BNSH_adur[i] .. " seconds.  Ethereal units cannot attack, but they can cast spells and certain spells cast upon them will have a greater effect."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", BNSH_aub1)
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
    //! i makechange(current, "anam", BNSH_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", BNSH_aut1)
    ////! i write_fieldVar(ALEV, "auu1", BNSH_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BNSH_anam, upoi)
    //****************************
    //*** Divine Shield
    //****************************
    //the button used for the buff/aura
    ////! i DIVN_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i DIVN_fube = "This unit is under the effects of Inner DIVN; its attack damage is increased."
    //the buff effect itself
    ////! i DIVN_ftat = "Abilities\\Spells\\Human\\InnerDIVN\\InnerDIVNTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(DIVN_ID, base_id)
    //the name of the ability
    //! i DIVN_anam = "Divine Shield"
    //! i DIVN_areq = ""
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BHds')
    //cast range - aran
    ////! i write_fieldVar(ALEV, 'aran', "800.00")
    //cast time
    ////! i DIVN_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"35.0", "40.00", "45.0", "50.0", "55.0", "65.0"})
    //duration - adur/ahdu
    //! i DIVN_adur = {"15.00", "20.00", "25.00", "30.00", "35.00", "45.00"}
    //! i write_fieldArr(ALEV, "adur", DIVN_adur)
    //! i write_fieldArr(ALEV, "ahdu", DIVN_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "60", "70", "80", "90", "100"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "invu,vuln")
    //autocast
    ////! i DIVN_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i DIVN_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i DIVN_atp1 = {}
    //! i fill_arr(ALEV, DIVN_anam .. HOTKEY_STR, "[|cffffcc00Level", DIVN_atp1)
    //! i write_fieldArr(ALEV, "atp1", DIVN_atp1)
    //tool tip - aub1
    //! i DIVN_aub1 = {}
    //! i for i=1, ALEV do
       //! i DIVN_aub1[i] = "An impenetrable shield surrounds the unit, protecting it from all damage and spells for " .. DIVN_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", DIVN_aub1)
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
    //! i makechange(current, "anam", DIVN_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", DIVN_aut1)
    ////! i write_fieldVar(ALEV, "auu1", DIVN_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DIVN_anam, upoi)
    //****************************
    //*** Siphon Mana
    //****************************
    //the button used for the buff/aura
    ////! i SMAN_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i SMAN_fube = "This unit is under the effects of Inner SMAN; its attack damage is increased."
    //the buff effect itself
    ////! i SMAN_ftat = "Abilities\\Spells\\Human\\InnerSMAN\\InnerSMANTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(SMAN_ID, base_id)
    //the name of the ability
    //! i SMAN_anam = "Siphon Mana"
    //! i SMAN_areq = ""
    //bonus mana decay
    //! i write_fieldArr(ALEV, 'Ndr9', "3.00")
    //mana factor rate
    //! i write_fieldVar(ALEV, 'Ndr8', "1.00")
    //drain interval
    //! i write_fieldVar(ALEV, 'Ndr3', "1.00")
    //mana points per second
    //! i SMAN_Ndr2 = {"15.00", "30.00", "45.00", "60.00", "75.00", "90.00"}
    //! i write_fieldArr(ALEV, 'Ndr2', SMAN_Ndr2)
    //mana points per second
    //! i SMAN_Ndr5 = {"30.00", "60.00", "90.00", "120.00", "150.00", "180.00"}
    //! i write_fieldArr(ALEV, 'Ndr5', SMAN_Ndr5)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "800.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bdcb,Bdcl,Bdcm,Bdtb,Bdtl,Bdtm,Bdbl,Bdbm')
    //cast range - aran
    //! i SMAN_aran = {"800.00", "950.00", "1000.00", "1100.0", "1200", "1400"}
    //! i write_fieldArr(ALEV, 'aran', SMAN_aran)
    //cast time
    ////! i SMAN_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"35.0", "40.00", "45.0", "50.0", "55.0", "65.0"})
    //duration - adur/ahdu
    //! i SMAN_adur = {"6.0", "6.0", "6.0", "6.0", "6.0", "6.0"}
    //! i write_fieldArr(ALEV, "adur", SMAN_adur)
    //! i write_fieldArr(ALEV, "ahdu", SMAN_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"10", "20", "30", "40", "50", "60"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,notself")
    //autocast
    ////! i SMAN_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i SMAN_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i SMAN_atp1 = {}
    //! i fill_arr(ALEV, SMAN_anam .. HOTKEY_STR, "[|cffffcc00Level", SMAN_atp1)
    //! i write_fieldArr(ALEV, "atp1", SMAN_atp1)
    //tool tip - aub1
    //! i SMAN_aub1 = {}
    //! i for i=1, ALEV do
       //! i SMAN_aub1[i] = "Transfers mana between the hero and a target.  Drains " .. SMAN_Ndr2[i] .. " mana per second for " .. SMAN_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", SMAN_aub1)
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
    //! i makechange(current, "anam", SMAN_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", SMAN_aut1)
    ////! i write_fieldVar(ALEV, "auu1", SMAN_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SMAN_anam, upoi)
    //****************************
    //*** Berserk
    //****************************
    //the button used for the buff/aura
    ////! i BSRK_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i BSRK_fube = "This unit is under the effects of Inner BSRK; its attack damage is increased."
    //the buff effect itself
    ////! i BSRK_ftat = "Abilities\\Spells\\Human\\InnerBSRK\\InnerBSRKTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(BSRK_ID, base_id)
    //the name of the ability
    //! i BSRK_anam = "Berserk"
    //! i BSRK_areq = ""
    //attack speed increase
    //! i BSRK_bsk2 = {"0.20", "0.40", "0.60", "0.90", "1.10", "1.50"}
    //! i write_fieldArr(ALEV, 'bsk2', BSRK_bsk2)
    //damage taken
    //! i write_fieldArr(ALEV, 'bsk3', BSRK_bsk2)
    //movement speed increase
    //! i write_fieldVar(ALEV, 'bsk1', "0.25")
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "800.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bbsk')
    //cast range - aran
    ////! i BSRK_aran = {"800.00", "950.00", "1000.00", "1100.0", "1200", "1400"}
    ////! i write_fieldArr(ALEV, 'aran', BSRK_aran)
    //cast time
    ////! i BSRK_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"30.0", "30.00", "30.0", "30.0", "30.0", "30.0"})
    //duration - adur/ahdu
    //! i BSRK_adur = {"12.00", "12.00", "12.00", "13.00", "13.00", "15.00"}
    //! i write_fieldArr(ALEV, "adur", BSRK_adur)
    //! i write_fieldArr(ALEV, "ahdu", BSRK_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"10", "20", "30", "40", "50", "60"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,notself")
    //autocast
    ////! i BSRK_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i BSRK_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i BSRK_atp1 = {}
    //! i fill_arr(ALEV, BSRK_anam .. HOTKEY_STR, "[|cffffcc00Level", BSRK_atp1)
    //! i write_fieldArr(ALEV, "atp1", BSRK_atp1)
    //tool tip - aub1
    //! i BSRK_aub1 = {}
    //! i for i=1, ALEV do
       //! i BSRK_aub1[i] = "Causes this unit to attack " .. BSRK_bsk2[i] .. "% faster but take " .. BSRK_bsk2[i] .. "% more damage.  Lasts for " .. BSRK_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", BSRK_aub1)
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
    //! i makechange(current, "anam", BSRK_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", BSRK_aut1)
    ////! i write_fieldVar(ALEV, "auu1", BSRK_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BSRK_anam, upoi)
    //****************************
    //*** Lightning Shield
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
    //! i LGHT_anam = "Lightning Shield"
    //! i LGHT_areq = ""
    //damage per second
    //! i LGHT_Lsh1 = {"20.00", "30.00", "40.00", "60.00", "80.00", "110.0"}
    //! i write_fieldArr(ALEV, 'Lsh1', LGHT_Lsh1)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "200.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Blsh,Blsa')
    //cast range - aran
    //! i LGHT_aran = {"600.00", "600", "600", "600", "600", "600"}
    //! i write_fieldArr(ALEV, 'aran', LGHT_aran)
    //cast time
    ////! i LGHT_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"3.0", "3.00", "3.0", "3.0", "3.0", "3.0"})
    //duration - adur/ahdu
    //! i LGHT_adur = {"20.00", "20.00", "20.00", "20.00", "20.00", "20.00"}
    //! i write_fieldArr(ALEV, "adur", LGHT_adur)
    //! i write_fieldArr(ALEV, "ahdu", LGHT_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"10", "20", "30", "40", "50", "60"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,friend,enemy,neutral")
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
       //! i LGHT_aub1[i] = "Forms a shield of electricity around a target unit, dealing " .. LGHT_Lsh1[i] .. " damage per second. Lasts for " .. LGHT_adur[i] .. " seconds."
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
    //*** Purge
    //****************************
    //the button used for the buff/aura
    ////! i PRGE_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i PRGE_fube = "This unit is under the effects of Inner PRGE; its attack damage is increased."
    //the buff effect itself
    ////! i PRGE_ftat = "Abilities\\Spells\\Human\\InnerPRGE\\InnerPRGETarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(PRGE_ID, base_id)
    //the name of the ability
    //! i PRGE_anam = "Purge"
    //! i PRGE_areq = ""
    //pause duration
    //! i PRGE_Prg5 = {"1.0", "2.0", "3.0", "5.0", "7.0", "9.0"}
    //! i write_fieldArr(ALEV, 'Prg5', PRGE_Prg5)
    //movement frequency
    //! i write_fieldVar(ALEV, 'Prg1', "5")
    //summoned unit damage
    //! i PRGE_Prg3 = {"300.00", "400.00", "500.00", "700.00", "900.00", "1200.0"}
    //! i write_fieldArr(ALEV, 'Prg3', PRGE_Prg3)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "200.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bprg')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "700.0")
    //cast time
    ////! i PRGE_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"1.0", "1.25", "1.5", "1.75", "2.0", "2.25"})
    //duration - adur/ahdu
    //! i PRGE_adur = {"3.0", "3.5", "4.5", "5.0", "5.5", "6.0"}
    //! i write_fieldArr(ALEV, "adur", PRGE_adur)
    //! i write_fieldArr(ALEV, "ahdu", PRGE_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "85", "95", "105", "115", "125"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,ward,vuln,invu,tree")
    //autocast
    ////! i PRGE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i PRGE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i PRGE_atp1 = {}
    //! i fill_arr(ALEV, PRGE_anam .. HOTKEY_STR, "[|cffffcc00Level", PRGE_atp1)
    //! i write_fieldArr(ALEV, "atp1", PRGE_atp1)
    //tool tip - aub1
    //! i PRGE_aub1 = {}
    //! i for i=1, ALEV do
       //! i PRGE_aub1[i] = "Removes all buffs from a target unit.  Enemy units are also immobilized for " .. PRGE_Prg5[i] .. " second and their movement speed is reduced by a factor of 5; they will slowly regain their movement speed over " .. PRGE_adur[i] .. " seconds.  Deals " .. PRGE_Prg3[i] .. " damage to summoned units."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", PRGE_aub1)
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
    //! i makechange(current, "anam", PRGE_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", PRGE_aut1)
    ////! i write_fieldVar(ALEV, "auu1", PRGE_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, PRGE_anam, upoi)
    //****************************
    //*** Spirit Link
    //****************************
    //the button used for the buff/aura
    ////! i LINK_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i LINK_fube = "This unit is under the effects of Inner LINK; its attack damage is increased."
    //the buff effect itself
    ////! i LINK_ftat = "Abilities\\Spells\\Human\\InnerLINK\\InnerLINKTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(LINK_ID, base_id)
    //the name of the ability
    //! i LINK_anam = "Spirit Link"
    //! i LINK_areq = ""
    //damage split
    //! i LINK_spl1 = "0.50"
    //! i write_fieldVar(ALEV, 'spl1', LINK_spl1)
    //number of targets
    //! i LINK_spl2 = "4"
    //! i write_fieldVar(ALEV, 'spl2', LINK_spl2)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bspl')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "750.0")
    //cast time
    ////! i LINK_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"1.0", "1.25", "1.5", "1.75", "2.0", "2.25"})
    //duration - adur/ahdu
    //! i LINK_adur = {"25.00", "35.00", "45.00", "55.00", "65.00", "75.00"}
    //! i write_fieldArr(ALEV, "adur", LINK_adur)
    //! i write_fieldArr(ALEV, "ahdu", LINK_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "85", "95", "105", "115", "125"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,friend,self")
    //autocast
    ////! i LINK_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i LINK_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i LINK_atp1 = {}
    //! i fill_arr(ALEV, LINK_anam .. HOTKEY_STR, "[|cffffcc00Level", LINK_atp1)
    //! i write_fieldArr(ALEV, "atp1", LINK_atp1)
    //tool tip - aub1
    //! i LINK_aub1 = {}
    //! i for i=1, ALEV do
       //! i LINK_aub1[i] = "Links " .. LINK_spl2 .. " units together in a chain.  All units with Spirit Link on them will live longer, by distributing " .. LINK_spl1 .. "% of the damage they take across other Spirit Linked units.  Lasts " .. LINK_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", LINK_aub1)
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
    //! i makechange(current, "anam", LINK_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", LINK_aut1)
    ////! i write_fieldVar(ALEV, "auu1", LINK_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, LINK_anam, upoi)
    //****************************
    //*** Hex
    //****************************
    //the button used for the buff/aura
    ////! i HEX_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i HEX_fube = "This unit is under the effects of Inner HEX; its attack damage is increased."
    //the buff effect itself
    ////! i HEX_ftat = "Abilities\\Spells\\Human\\InnerHEX\\InnerHEXTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(HEX_ID, base_id)
    //the name of the ability
    //! i HEX_anam = "Hex"
    //! i HEX_areq = ""
    //max critter level
    //! i write_fieldVar(ALEV, 'Ply1', "99")
    //morphs
    //! i write_fieldVar(ALEV, 'Ply3', "nalb,nvul,nsno")
    //! i write_fieldVar(ALEV, 'Ply4', "nsha,npng")
    //! i write_fieldVar(ALEV, 'Ply2', "npig,nsea,ncrb,nhmc,nrat,nfro,nech,necr,nrac")
    //! i write_fieldVar(ALEV, 'Ply5', "nshw,npnw")
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BOhx')
    //cast range - aran
    ////! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i HEX_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"7.0", "7.25", "7.50", "8.0", "9.0", "11.0"})
    //duration - adur/ahdu
    //! i HEX_adur = {"4", "5", "6", "7", "8", "10"}
    //! i write_fieldArr(ALEV, "adur", HEX_adur)
    //! i write_fieldArr(ALEV, "ahdu", HEX_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "85", "95", "105", "115", "125"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i HEX_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i HEX_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i HEX_atp1 = {}
    //! i fill_arr(ALEV, HEX_anam .. HOTKEY_STR, "[|cffffcc00Level", HEX_atp1)
    //! i write_fieldArr(ALEV, "atp1", HEX_atp1)
    //tool tip - aub1
    //! i HEX_aub1 = {}
    //! i for i=1, ALEV do
       //! i HEX_aub1[i] = "Transforms an enemy unit into a random critter for " .. HEX_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", HEX_aub1)
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
    //! i makechange(current, "anam", HEX_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", HEX_aut1)
    ////! i write_fieldVar(ALEV, "auu1", HEX_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, HEX_anam, upoi)
    //****************************
    //*** Mirror Image
    //****************************
    //the button used for the buff/aura
    ////! i IMAG_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i IMAG_fube = "This unit is under the effects of Inner IMAG; its attack damage is increased."
    //the buff effect itself
    ////! i IMAG_ftat = "Abilities\\Spells\\Human\\InnerIMAG\\InnerIMAGTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(IMAG_ID, base_id)
    //the name of the ability
    //! i IMAG_anam = "Mirror Image"
    //! i IMAG_areq = ""
    //animation delay
    //! i write_fieldVar(ALEV, 'Omi4', "0.50")
    //damage dealt
    //! i IMAG_Omi2 = {"0.05", "0.07", "0.09", "0.11", "0.13", "0.15"}
    //! i write_fieldArr(ALEV, 'Omi2', IMAG_Omi2)
    //damage taken
    //! i write_fieldVar(ALEV, 'Omi3', "2.0")
    //number of images
    //! i IMAG_Omi1 = {"1", "2", "2", "3", "3", "5"}
    //! i write_fieldArr(ALEV, 'Omi1', IMAG_Omi1)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BOmi')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "128.0")
    //cast time
    ////! i IMAG_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"3.0", "3.5", "4.0", "4.5", "5.0", "6.0"})
    //duration - adur/ahdu
    //! i IMAG_adur = {"30.00", "35", "40", "45", "50", "60"}
    //! i write_fieldArr(ALEV, "adur", IMAG_adur)
    //! i write_fieldArr(ALEV, "ahdu", IMAG_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"125", "135", "145", "165", "185", "225"})
    //targets - atar
    ////! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i IMAG_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i IMAG_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i IMAG_atp1 = {}
    //! i fill_arr(ALEV, IMAG_anam .. HOTKEY_STR, "[|cffffcc00Level", IMAG_atp1)
    //! i write_fieldArr(ALEV, "atp1", IMAG_atp1)
    //tool tip - aub1
    //! i IMAG_aub1 = {}
    //! i for i=1, ALEV do
       //! i IMAG_aub1[i] = "Confuses the enemy by creating " .. IMAG_Omi1[i] .. " illusions of the hero, dispelling all magic from the monster.  Each illusion deals " .. IMAG_Omi2[i] .. "% damage of the monster.  Lasts " .. IMAG_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", IMAG_aub1)
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
    //! i makechange(current, "anam", IMAG_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", IMAG_aut1)
    ////! i write_fieldVar(ALEV, "auu1", IMAG_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, IMAG_anam, upoi)
    //****************************
    //*** Wind Walk
    //****************************
    //the button used for the buff/aura
    ////! i WALK_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i WALK_fube = "This unit is under the effects of Inner WALK; its attack damage is increased."
    //the buff effect itself
    ////! i WALK_ftat = "Abilities\\Spells\\Human\\InnerWALK\\InnerWALKTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(WALK_ID, base_id)
    //the name of the ability
    //! i WALK_anam = "Wind Walk"
    //! i WALK_areq = ""
    //backstab damage
    //! i WALK_Owk3 = {"30.00", "50.00", "70.00", "100.00", "130.00", "180.00"}
    //! i write_fieldArr(ALEV, 'Owk3', WALK_Owk3)
    //backstab damage - true
    //! i write_fieldVar(ALEV, 'Owk4', "1")
    //movement speed bonus
    //! i WALK_Owk2 = {"0.10", "0.15", "0.20", "0.25", "0.30", "0.40"}
    //! i write_fieldArr(ALEV, 'Owk2', WALK_Owk2)
    //transition time
    //! i write_fieldVar(ALEV, 'Owk1', "0.60")
    //damage dealt
    //! i WALK_Omi2 = {"0.05", "0.07", "0.09", "0.11", "0.13", "0.15"}
    //! i write_fieldArr(ALEV, 'Omi2', WALK_Omi2)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BOwk')
    //cast range - aran
   ////! i write_fieldArr(ALEV, 'aran', "128.0")
    //cast time
    ////! i WALK_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"5.0", "7.0", "9.0", "11.0", "13.00", "15.0"})
    //duration - adur/ahdu
    //! i WALK_adur = {"10.00", "15.00", "20.00", "25.00", "30.00", "35.00"}
    //! i write_fieldArr(ALEV, "adur", WALK_adur)
    //! i write_fieldArr(ALEV, "ahdu", WALK_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "100", "125", "150", "175", "200"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i WALK_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i WALK_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i WALK_atp1 = {}
    //! i fill_arr(ALEV, WALK_anam .. HOTKEY_STR, "[|cffffcc00Level", WALK_atp1)
    //! i write_fieldArr(ALEV, "atp1", WALK_atp1)
    //tool tip - aub1
    //! i WALK_aub1 = {}
    //! i for i=1, ALEV do
       //! i WALK_aub1[i] = "Allows the monster to become invisible, and move " .. WALK_Owk2[i] .. "% faster for " .. WALK_adur[i] .. " seconds.  If the monster attacks a unit to break invisibility, the attack will do " .. WALK_Owk3[i] .. " bonus damage."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", WALK_aub1)
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
    //! i makechange(current, "anam", WALK_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", WALK_aut1)
    ////! i write_fieldVar(ALEV, "auu1", WALK_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, WALK_anam, upoi)
    //****************************
    //*** Anti-magic Shield
    //****************************
    //the button used for the buff/aura
    ////! i ANTI_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i ANTI_fube = "This unit is under the effects of Inner ANTI; its attack damage is increased."
    //the buff effect itself
    ////! i ANTI_ftat = "Abilities\\Spells\\Human\\InnerANTI\\InnerANTITarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(ANTI_ID, base_id)
    //the name of the ability
    //! i ANTI_anam = "Anti-magic Shell"
    //! i ANTI_areq = ""
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bams,Bam2')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "500.0")
    //cast time
    ////! i ANTI_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"5.0", "5.25", "5.5", "5.75", "6.0", "6.5"})
    //duration - adur/ahdu
    //! i ANTI_adur = {"15.00", "20.00", "25.00", "35.00", "45.00", "65.00"}
    //! i write_fieldArr(ALEV, "adur", ANTI_adur)
    //! i write_fieldArr(ALEV, "ahdu", ANTI_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "150", "175", "200"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,vuln,invu")
    //autocast
    ////! i ANTI_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i ANTI_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i ANTI_atp1 = {}
    //! i fill_arr(ALEV, ANTI_anam .. HOTKEY_STR, "[|cffffcc00Level", ANTI_atp1)
    //! i write_fieldArr(ALEV, "atp1", ANTI_atp1)
    //tool tip - aub1
    //! i ANTI_aub1 = {}
    //! i for i=1, ALEV do
       //! i ANTI_aub1[i] = "Creates a barrier that stops spells from affecting a target unit.  Lasts " .. ANTI_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", ANTI_aub1)
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
    //! i makechange(current, "anam", ANTI_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", ANTI_aut1)
    ////! i write_fieldVar(ALEV, "auu1", ANTI_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ANTI_anam, upoi)
    //****************************
    //*** Cripple
    //****************************
    //the button used for the buff/aura
    ////! i CRIP_aart = "ReplaceableTextures\\CommandButtons\\BTNSeaGiantWarStomp.blp"
    //the aura buff text
    ////! i CRIP_fube = "This unit is under the effects of Inner CRIP; its attack damage is increased."
    //the buff effect itself
    ////! i CRIP_ftat = "Abilities\\Spells\\Human\\InnerCRIP\\InnerCRIPTarget.mdl"
    //make the ability
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i setobjecttype("abilities")
    //! i createobject(CRIP_ID, base_id)
    //the name of the ability
    //! i CRIP_anam = "Cripple"
    //! i CRIP_areq = ""
    //attack speed reduction
    //! i CRIP_Cri2 = {"0.30", "0.40", "0.50", "0.70", "0.90", "1.20"}
    //! i write_fieldArr(ALEV, 'Cri2', CRIP_Cri2)
    //! i write_fieldArr(ALEV, 'Cri3', CRIP_Cri2)
    //! i write_fieldArr(ALEV, 'Cri1', CRIP_Cri2)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bcri')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "600.0")
    //cast time
    ////! i CRIP_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"10.00", "10.00", "10.00", "10.00", "10.00", "10.00"})
    //duration - adur/ahdu
    //! i CRIP_adur = {"20.00", "25.00", "30.00", "40.00", "50.00", "70.00"}
    //! i write_fieldArr(ALEV, "adur", CRIP_adur)
    //! i write_fieldArr(ALEV, "ahdu", CRIP_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "100", "125", "150", "175", "200"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i CRIP_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i CRIP_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i CRIP_atp1 = {}
    //! i fill_arr(ALEV, CRIP_anam .. HOTKEY_STR, "[|cffffcc00Level", CRIP_atp1)
    //! i write_fieldArr(ALEV, "atp1", CRIP_atp1)
    //tool tip - aub1
    //! i CRIP_aub1 = {}
    //! i for i=1, ALEV do
       //! i CRIP_aub1[i] = "Reduces movement speed, attack rate, and damage by " .. CRIP_Cri2[i] .. "%.  Lasts  " .. CRIP_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", CRIP_aub1)
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
    //! i makechange(current, "anam", CRIP_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", CRIP_aut1)
    ////! i write_fieldVar(ALEV, "auu1", CRIP_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CRIP_anam, upoi)
    //****************************
    //*** Unholy Frenzy
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
    //! i createobject(UNHO_ID, base_id)
    //the name of the ability
    //! i UNHO_anam = "Unholy Frenzy"
    //! i UNHO_areq = ""
    //attack speed bonus
    //! i UNHO_Uhf1 = {"0.75", "1.00", "1.25", "1.50", "1.75", "2.00"}
    //! i write_fieldArr(ALEV, 'Uhf1', UNHO_Uhf1)
    //damage per second
    //! i UNHO_Uhf2 = {"4.0", "8.0", "12.00", "16.00", "20.00", "24.00"}
    //! i write_fieldArr(ALEV, 'Uhf2', UNHO_Uhf2)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BUhf')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "500.0")
    //cast time
    ////! i UNHO_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"1.00", "1.0", "1.00", "1.00", "1.00", "1.00"})
    //duration - adur/ahdu
    //! i UNHO_adur = {"15.00", "20.00", "25.00", "30.00", "35.00", "40.00"}
    //! i write_fieldArr(ALEV, "adur", UNHO_adur)
    //! i write_fieldArr(ALEV, "ahdu", UNHO_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "125", "150", "175"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,self")
    //autocast
    ////! i UNHO_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i UNHO_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i UNHO_atp1 = {}
    //! i fill_arr(ALEV, UNHO_anam .. HOTKEY_STR, "[|cffffcc00Level", UNHO_atp1)
    //! i write_fieldArr(ALEV, "atp1", UNHO_atp1)
    //tool tip - aub1
    //! i UNHO_aub1 = {}
    //! i for i=1, ALEV do
       //! i UNHO_aub1[i] = "Increases the attack rate of a target unit by " .. UNHO_Uhf1[i] .. "% but drains " .. UNHO_Uhf2[i] .. " hit points per second for " .. UNHO_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", UNHO_aub1)
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
    //! i makechange(current, "anam", UNHO_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", UNHO_aut1)
    ////! i write_fieldVar(ALEV, "auu1", UNHO_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, UNHO_anam, upoi)
    //****************************
    //*** Frost Armor
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
    //! i createobject(FROA_ID, base_id)
    //the name of the ability
    //! i FROA_anam = "Frost Armor"
    //! i FROA_areq = ""
    //armor bonus
    //! i FROA_Ufa2 = {"3.0", "5.0", "7.0", "9.0", "11.0", "13.0"}
    //! i write_fieldArr(ALEV, 'Ufa2', FROA_Ufa2)
    //armor duration
    //! i FROA_Ufa1 = "45.00"
    //! i write_fieldVar(ALEV, 'Ufa1', FROA_Ufa1)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BUfa')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i FROA_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"2.00", "2.00", "2.00", "2.00", "2.00", "2.00"})
    //duration - adur/ahdu
    //! i FROA_adur = {"5.0", "6.0", "7.0", "8.0", "9.0", "10.0"}
    //! i write_fieldArr(ALEV, "adur", FROA_adur)
    //! i write_fieldArr(ALEV, "ahdu", FROA_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "60", "70", "80", "90", "110"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,self")
    //autocast
    ////! i FROA_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i FROA_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i FROA_atp1 = {}
    //! i fill_arr(ALEV, FROA_anam .. HOTKEY_STR, "[|cffffcc00Level", FROA_atp1)
    //! i write_fieldArr(ALEV, "atp1", FROA_atp1)
    //tool tip - aub1
    //! i FROA_aub1 = {}
    //! i for i=1, ALEV do
       //! i FROA_aub1[i] = "Creates a shield of frost around a target friendly unit for " .. FROA_Ufa1 .. " seconds, adding " .. FROA_Ufa2[i] .. " armor and slowing melee units that attack it for " .. FROA_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", FROA_aub1)
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
    //! i makechange(current, "anam", FROA_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", FROA_aut1)
    ////! i write_fieldVar(ALEV, "auu1", FROA_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FROA_anam, upoi)
    //****************************
    //*** Sleep
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
    //! i createobject(SLEP_ID, base_id)
    //the name of the ability
    //! i SLEP_anam = "Sleep"
    //! i SLEP_areq = ""
    //stun duration
    //! i write_fieldArr(ALEV, 'Usl1', "2.0")
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "500.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BUsl,BUsp,Bust')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i SLEP_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"6.00", "6.00", "6.00", "6.00", "6.00", "6.00"})
    //duration - adur/ahdu
    //! i SLEP_adur = {"5.0", "10.0", "15.0", "20.0", "25.0", "30.0"}
    //! i write_fieldArr(ALEV, "adur", SLEP_adur)
    //! i write_fieldArr(ALEV, "ahdu", SLEP_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"100", "90", "80", "70", "60", "50"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i SLEP_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i SLEP_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i SLEP_atp1 = {}
    //! i fill_arr(ALEV, SLEP_anam .. HOTKEY_STR, "[|cffffcc00Level", SLEP_atp1)
    //! i write_fieldArr(ALEV, "atp1", SLEP_atp1)
    //tool tip - aub1
    //! i SLEP_aub1 = {}
    //! i for i=1, ALEV do
       //! i SLEP_aub1[i] = "Puts a target enemy unit to sleep for " .. SLEP_adur[i] .. " seconds.  A sleeping unit can be awoken by attacking it."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", SLEP_aub1)
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
    //! i makechange(current, "anam", SLEP_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", SLEP_aut1)
    ////! i write_fieldVar(ALEV, "auu1", SLEP_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SLEP_anam, upoi)
    //****************************
    //*** Roar
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
    //! i createobject(ROAR_ID, base_id)
    //the name of the ability
    //! i ROAR_anam = "Roar"
    //! i ROAR_areq = ""
    //damage increase
    //! i ROAR_Roa1 = {"0.25", "0.35", "0.45", "0.55", "0.65", "0.75"}
    //! i write_fieldArr(ALEV, 'Roa1', ROAR_Roa1)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Broa')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i ROAR_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"6.00", "6.00", "6.00", "6.00", "6.00", "6.00"})
    //duration - adur/ahdu
    //! i ROAR_adur = {"30.00", "35.0", "40.0", "45.0", "50.0", "60.0"}
    //! i write_fieldArr(ALEV, "adur", ROAR_adur)
    //! i write_fieldArr(ALEV, "ahdu", ROAR_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"100", "120", "140", "160", "180", "200"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,friend,self")
    //autocast
    ////! i ROAR_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i ROAR_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i ROAR_atp1 = {}
    //! i fill_arr(ALEV, ROAR_anam .. HOTKEY_STR, "[|cffffcc00Level", ROAR_atp1)
    //! i write_fieldArr(ALEV, "atp1", ROAR_atp1)
    //tool tip - aub1
    //! i ROAR_aub1 = {}
    //! i for i=1, ALEV do
       //! i ROAR_aub1[i] = "Gives friendly units a " .. ROAR_Roa1[i] .. "% bonus to damage.  Lasts " .. ROAR_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", ROAR_aub1)
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
    //! i makechange(current, "anam", ROAR_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", ROAR_aut1)
    ////! i write_fieldVar(ALEV, "auu1", ROAR_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ROAR_anam, upoi)
    //****************************
    //*** Howl of Terror
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
    //! i createobject(HOWL_ID, base_id)
    //the name of the ability
    //! i HOWL_anam = "Howl of Terror"
    //! i HOWL_areq = ""
    //damage increase
    //! i HOWL_Roa1 = {"0.25", "0.35", "0.45", "0.55", "0.65", "0.75"}
    //! i write_fieldArr(ALEV, 'Roa1', HOWL_Roa1)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Broa')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i HOWL_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"6.00", "6.00", "6.00", "6.00", "6.00", "6.00"})
    //duration - adur/ahdu
    //! i HOWL_adur = {"30.00", "35.0", "40.0", "45.0", "50.0", "60.0"}
    //! i write_fieldArr(ALEV, "adur", HOWL_adur)
    //! i write_fieldArr(ALEV, "ahdu", HOWL_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"70", "80", "90", "100", "110", "130"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,friend,self")
    //autocast
    ////! i HOWL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i HOWL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i HOWL_atp1 = {}
    //! i fill_arr(ALEV, HOWL_anam .. HOTKEY_STR, "[|cffffcc00Level", HOWL_atp1)
    //! i write_fieldArr(ALEV, "atp1", HOWL_atp1)
    //tool tip - aub1
    //! i HOWL_aub1 = {}
    //! i for i=1, ALEV do
       //! i HOWL_aub1[i] = "The monster lets loose a terrifying howl that reduces nearby enemy units' attack damage by " .. HOWL_Roa1[i] .. "% for " .. HOWL_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", HOWL_aub1)
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
    //! i makechange(current, "anam", HOWL_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", HOWL_aut1)
    ////! i write_fieldVar(ALEV, "auu1", HOWL_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, HOWL_anam, upoi)
    //****************************
    //*** Taunt
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
    //! i createobject(TANT_ID, base_id)
    //the name of the ability
    //! i TANT_anam = "Taunt"
    //! i TANT_areq = ""
    //prefer hostiles
    //! i write_fieldVar(ALEV, 'Tau1', '1')
    //aoe - aare
    //! i TANT_aare = {"450.00", "500.00", "550.00", "600.00", "650.00", "700.00"}
    //! i write_fieldArr(ALEV, 'aare', TANT_aare)
    //buff - abuf
    ////! i write_fieldVar(ALEV, 'abuf', 'Broa')
    //cast range - aran
    ////! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i TANT_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"15.00", "14.00", "13.00", "12.00", "11.00", "10.00"})
    //duration - adur/ahdu
    ////! i TANT_adur = {"30.00", "35.0", "40.0", "45.0", "50.0", "60.0"}
    ////! i write_fieldArr(ALEV, "adur", TANT_adur)
    ////! i write_fieldArr(ALEV, "ahdu", TANT_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    ////! i write_fieldArr(ALEV, "amcs", {"70", "80", "90", "100", "110", "130"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,vuln,invu")
    //autocast
    ////! i TANT_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i TANT_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i TANT_atp1 = {}
    //! i fill_arr(ALEV, TANT_anam .. HOTKEY_STR, "[|cffffcc00Level", TANT_atp1)
    //! i write_fieldArr(ALEV, "atp1", TANT_atp1)
    //tool tip - aub1
    //! i TANT_aub1 = {}
    //! i for i=1, ALEV do
       //! i TANT_aub1[i] = "The closest hostile enemies are forced to attack this unit."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", TANT_aub1)
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
    //! i makechange(current, "anam", TANT_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", TANT_aut1)
    ////! i write_fieldVar(ALEV, "auu1", TANT_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, TANT_anam, upoi)
//! endexternalblock
