//! externalblock extension=lua ObjectMerger $FILENAME$
    //buff abilities
    //! i ROOT_ID = 'AEer'
    //! i MBRN_ID = 'AEmb'
    //! i SHDW_ID = 'AEsh'
    //! i CYCL_ID = 'Acyc'
    //! i FIRE_ID = 'ACfb'
    //! i ICE_ID = 'ACcb'
    //! i ROCK_ID = 'ACtb'
    //! i LIFE_ID = 'ANdr'
    //total levels for each buff(= 6)
    //! i ALEV = "6"
    //race of healing abilities
    //! i ARAC = "undead"
    //req
    //! i AREQ = ""
    //classify buff abilities as hero
    //! i AHER = "0"
    //! i ZOMBIE = "|cff9851aeZombie|r"
    //prefix for all autocasts
    //! i CUSTOM_ID = "At"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Bt"
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
    //*** Entangling Roots
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
    //! i createobject(ROOT_ID, base_id)
    //the name of the ability
    //! i ROOT_anam = "Entangling Roots"
    //! i ROOT_areq = ""
    //damage per second
    //! i ROOT_Eer1 = {"10.00", "15.00", "20.00", "25.00", "35.00", "50.00"}
    //! i write_fieldArr(ALEV, 'Eer1', ROOT_Eer1)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BEer')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i ROOT_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "9.00", "9.00", "10.00"})
    //duration - adur/ahdu
    //! i ROOT_adur = {"3.00", "4.00", "5.00", "6.00", "7.0", "8.0"}
    //! i write_fieldArr(ALEV, "adur", ROOT_adur)
    //! i write_fieldArr(ALEV, "ahdu", ROOT_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"75", "85", "95", "105", "115", "135"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,friend,self")
    //autocast
    ////! i ROOT_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i ROOT_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i ROOT_atp1 = {}
    //! i fill_arr(ALEV, ROOT_anam .. HOTKEY_STR, "[|cffffcc00Level", ROOT_atp1)
    //! i write_fieldArr(ALEV, "atp1", ROOT_atp1)
    //tool tip - aub1
    //! i ROOT_aub1 = {}
    //! i for i=1, ALEV do
       //! i ROOT_aub1[i] = "Causes roots to burst from the ground, immobilizing and disarming a target enemy unit for " .. ROOT_Eer1[i] .. " damage per second for " .. ROOT_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", ROOT_aub1)
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
    //! i makechange(current, "anam", ROOT_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", ROOT_aut1)
    ////! i write_fieldVar(ALEV, "auu1", ROOT_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ROOT_anam, upoi)
    //****************************
    //*** Mana Burn
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
    //! i createobject(MBRN_ID, base_id)
    //the name of the ability
    //! i MBRN_anam = "Mana Burn"
    //! i MBRN_areq = ""
    //bolt delay
    //! i write_fieldVar(ALEV, "Emb2", "0.25")
    //bolt lifetime
    //! i write_fieldVar(ALEV, "Emb3", "1.0")
    //mana drained
    //! i MBRN_Emb1 = {"50.00", "100.00", "150.00", "200.00", "250.00", "300.00"}
    //! i write_fieldArr(ALEV, 'Emb1', MBRN_Emb1)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    ////! i write_fieldVar(ALEV, 'abuf', 'BEer')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "300.0")
    //cast time
    ////! i MBRN_acas = "0.0"
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"7.00", "7.00", "7.00", "8.00", "8.00", "9.00"})
    //duration - adur/ahdu
    ////! i MBRN_adur = {"3.00", "4.00", "5.00", "6.00", "7.0", "8.0"}
    ////! i write_fieldArr(ALEV, "adur", MBRN_adur)
    ////! i write_fieldArr(ALEV, "ahdu", MBRN_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "125", "150", "175"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i MBRN_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i MBRN_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i MBRN_atp1 = {}
    //! i fill_arr(ALEV, MBRN_anam .. HOTKEY_STR, "[|cffffcc00Level", MBRN_atp1)
    //! i write_fieldArr(ALEV, "atp1", MBRN_atp1)
    //tool tip - aub1
    //! i MBRN_aub1 = {}
    //! i for i=1, ALEV do
       //! i MBRN_aub1[i] = "Sends a bolt of negative energy that burns up to " .. MBRN_Emb1[i] .. " points of a target enemy unit's mana.  The mana combusts, dealing damage equal to the amount of mana burned."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", MBRN_aub1)
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
    //! i makechange(current, "anam", MBRN_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", MBRN_aut1)
    ////! i write_fieldVar(ALEV, "auu1", MBRN_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, MBRN_anam, upoi)
    //****************************
    //*** Shadow Strike
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
    //! i createobject(SHDW_ID, base_id)
    //the name of the ability
    //! i SHDW_anam = "Shadow Strike"
    //! i SHDW_areq = ""
    //decay power
    //! i SHDW_Esh4 = "3.00"
    //! i write_fieldVar(ALEV, "Esh4", SHDW_Esh4)
    //decaying damage
    //! i SHDW_Esh1 = {"10.00", "25.00", "40.00", "55.00", "70.00", "85.00"}
    //! i write_fieldArr(ALEV, 'Esh1', SHDW_Esh1)
    //initial damage
    //! i SHDW_Esh5 = {"50.00", "75.00", "150.00", "225.00", "300.00", "400.00"}
    //! i write_fieldArr(ALEV, 'Esh5', SHDW_Esh5)
    //movement speed modifier
    //! i write_fieldVar(ALEV, 'Esh2', "0.50")
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BEsh')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "300.0")
    //cast time
    //! i SHDW_acas = "3.0"
    //! i write_fieldVar(ALEV, 'acas', SHDW_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "9.00", "9.00", "9.00"})
    //duration - adur/ahdu
    //! i SHDW_adur = {"10.00", "11.00", "12.00", "13.00", "14.0", "15.0"}
    //! i write_fieldArr(ALEV, "adur", SHDW_adur)
    //! i write_fieldArr(ALEV, "ahdu", SHDW_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "125", "150", "175"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i SHDW_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i SHDW_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i SHDW_atp1 = {}
    //! i fill_arr(ALEV, SHDW_anam .. HOTKEY_STR, "[|cffffcc00Level", SHDW_atp1)
    //! i write_fieldArr(ALEV, "atp1", SHDW_atp1)
    //tool tip - aub1
    //! i SHDW_aub1 = {}
    //! i for i=1, ALEV do
       //! i SHDW_aub1[i] = "Hurls a poisoned dagger at a target enemy unit, dealing " .. SHDW_Esh5[i] .. " initial damage, and " .. SHDW_Esh1[i] .. " damage every " .. SHDW_Esh4 .. " for " .. SHDW_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", SHDW_aub1)
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
    //! i makechange(current, "anam", SHDW_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", SHDW_aut1)
    ////! i write_fieldVar(ALEV, "auu1", SHDW_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SHDW_anam, upoi)
    //****************************
    //*** Cyclone
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
    //! i createobject(CYCL_ID, base_id)
    //the name of the ability
    //! i CYCL_anam = "Cyclone"
    //! i CYCL_areq = ""
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bcyc,Bcy2')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "600.0")
    //cast time
    ////! i CYCL_acas = "3.0"
    ////! i write_fieldVar(ALEV, 'acas', CYCL_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"5.00", "6.00", "7.00", "8.00", "9.00", "10.00"})
    //duration - adur/ahdu
    //! i CYCL_adur = {"6.00", "8.00", "10.00", "12.00", "14.0", "16.0"}
    //! i write_fieldArr(ALEV, "adur", CYCL_adur)
    //! i write_fieldArr(ALEV, "ahdu", CYCL_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "125", "150", "175"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i CYCL_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i CYCL_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i CYCL_atp1 = {}
    //! i fill_arr(ALEV, CYCL_anam .. HOTKEY_STR, "[|cffffcc00Level", CYCL_atp1)
    //! i write_fieldArr(ALEV, "atp1", CYCL_atp1)
    //tool tip - aub1
    //! i CYCL_aub1 = {}
    //! i for i=1, ALEV do
       //! i CYCL_aub1[i] = "Tosses a target enemy unit into the air, rendering it unable to move, attack, or cast spells, and stopping others from attacking or casting on it.  Lasts " .. CYCL_adur[i] .. " seconds."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", CYCL_aub1)
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
    //! i makechange(current, "anam", CYCL_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", CYCL_aut1)
    ////! i write_fieldVar(ALEV, "auu1", CYCL_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CYCL_anam, upoi)
    //****************************
    //*** Firebolt
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
    //! i createobject(FIRE_ID, base_id)
    //the name of the ability
    //! i FIRE_anam = "Firebolt"
    //! i FIRE_areq = ""
    //damage dealt
    //! i FIRE_Htb1 = {"75.00", "100.00", "125.00", "150.00", "175.00", "200.00"}
    //! i write_fieldArr(ALEV, 'Htb1', FIRE_Htb1)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    ////! i write_fieldVar(ALEV, 'abuf', 'Bcyc,Bcy2')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i FIRE_acas = "3.0"
    ////! i write_fieldVar(ALEV, 'acas', FIRE_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "8.00", "8.00", "9.00"})
    //duration - adur/ahdu
    //! i FIRE_adur = {"2.00", "3.00", "4.00", "5.00", "6.0", "7.0"}
    //! i write_fieldArr(ALEV, "adur", FIRE_adur)
    //! i write_fieldArr(ALEV, "ahdu", FIRE_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"25", "50", "75", "100", "125", "150"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
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
       //! i FIRE_aub1[i] = "Hurls a fiery bolt that stuns a target enemy unit for " .. FIRE_adur[i] .. " seconds, dealing " .. FIRE_Htb1[i] .. " damage."
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
    //*** Icebolt
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
    //! i createobject(ICE_ID, base_id)
    //the name of the ability
    //! i ICE_anam = "Icebolt"
    //! i ICE_areq = ""
    //damage dealt
    //! i ICE_Htb1 = {"75.00", "100.00", "125.00", "150.00", "175.00", "200.00"}
    //! i write_fieldArr(ALEV, 'Htb1', ICE_Htb1)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BHtb')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i ICE_acas = "3.0"
    ////! i write_fieldVar(ALEV, 'acas', ICE_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "8.00", "8.00", "9.00"})
    //duration - adur/ahdu
    //! i ICE_adur = {"2.00", "3.00", "4.00", "5.00", "6.0", "7.0"}
    //! i write_fieldArr(ALEV, "adur", ICE_adur)
    //! i write_fieldArr(ALEV, "ahdu", ICE_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "125", "150", "175"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i ICE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i ICE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i ICE_atp1 = {}
    //! i fill_arr(ALEV, ICE_anam .. HOTKEY_STR, "[|cffffcc00Level", ICE_atp1)
    //! i write_fieldArr(ALEV, "atp1", ICE_atp1)
    //tool tip - aub1
    //! i ICE_aub1 = {}
    //! i for i=1, ALEV do
       //! i ICE_aub1[i] = "Throws a magical shard of ice at a target enemy unit, stunning it for " .. ICE_adur[i] .. " seconds, and dealing " .. ICE_Htb1[i] .. " damage."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", ICE_aub1)
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
    //! i makechange(current, "anam", ICE_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", ICE_aut1)
    ////! i write_fieldVar(ALEV, "auu1", ICE_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ICE_anam, upoi)
    //****************************
    //*** Rock Throw
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
    //! i createobject(ROCK_ID, base_id)
    //the name of the ability
    //! i ROCK_anam = "Rock Throw"
    //! i ROCK_areq = ""
    //damage dealt
    //! i ROCK_Ctb1 = {"75.00", "100.00", "125.00", "150.00", "175.00", "200.00"}
    //! i write_fieldArr(ALEV, 'Ctb1', ROCK_Ctb1)
    //aoe - aare
    ////! i write_fieldVar(ALEV, 'aare', "600.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'BPSE')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "800.0")
    //cast time
    ////! i ROCK_acas = "3.0"
    ////! i write_fieldVar(ALEV, 'acas', ROCK_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "8.00", "8.00", "9.00"})
    //duration - adur/ahdu
    //! i ROCK_adur = {"2.00", "3.00", "4.00", "5.00", "6.0", "7.0"}
    //! i write_fieldArr(ALEV, "adur", ROCK_adur)
    //! i write_fieldArr(ALEV, "ahdu", ROCK_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"50", "75", "100", "125", "150", "175"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i ROCK_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i ROCK_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i ROCK_atp1 = {}
    //! i fill_arr(ALEV, ROCK_anam .. HOTKEY_STR, "[|cffffcc00Level", ROCK_atp1)
    //! i write_fieldArr(ALEV, "atp1", ROCK_atp1)
    //tool tip - aub1
    //! i ROCK_aub1 = {}
    //! i for i=1, ALEV do
       //! i ROCK_aub1[i] = "Throws a magical boulder at an enemy unit, stunning it for " .. ROCK_adur[i] .. " seconds, and dealing " .. ROCK_Ctb1[i] .. " damage."
    //! i end
    //! i write_fieldArr(ALEV, "aub1", ROCK_aub1)
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
    //! i makechange(current, "anam", ROCK_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", ROCK_aut1)
    ////! i write_fieldVar(ALEV, "auu1", ROCK_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ROCK_anam, upoi)
    //****************************
    //*** Life Drain
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
    //! i createobject(LIFE_ID, base_id)
    //the name of the ability
    //! i LIFE_anam = "Life Drain"
    //! i LIFE_areq = ""
    //drain interval
    //! i write_fieldVar(ALEV, 'Ndr3', "1.00")
    //hit points drained
    //! i LIFE_Ndr1 = {"10.00", "20.00", "30.00", "40.00", "50.00", "60.00"}
    //! i write_fieldArr(ALEV, 'Ndr1', LIFE_Ndr1)
    //aoe - aare
    //! i write_fieldVar(ALEV, 'aare', "800.00")
    //buff - abuf
    //! i write_fieldVar(ALEV, 'abuf', 'Bdcb,Bdcl,Bdcm,Bdtb,Bdtl,Bdtm,Bdbl,Bdbm')
    //cast range - aran
    //! i write_fieldArr(ALEV, 'aran', "500.0")
    //cast time
    ////! i LIFE_acas = "3.0"
    ////! i write_fieldVar(ALEV, 'acas', LIFE_acas)
    //cooldown - acdn
    //! i write_fieldArr(ALEV, "acdn", {"8.00", "8.00", "8.00", "8.00", "8.00", "9.00"})
    //duration - adur/ahdu
    //! i LIFE_adur = {"8.00", "8.00", "8.00", "8.00", "8.0", "8.0"}
    //! i write_fieldArr(ALEV, "adur", LIFE_adur)
    //! i write_fieldArr(ALEV, "ahdu", LIFE_adur)
    //effect - aeff
    ////! i write_fieldVar(ALEV, 'aeff', 'XNmo')
    //mana cost - amcs
    //! i write_fieldArr(ALEV, "amcs", {"30", "45", "60", "75", "90", "105"})
    //targets - atar
    //! i write_fieldVar(ALEV, "atar", "air,ground,enemy,neutral")
    //autocast
    ////! i LIFE_aut1 = "|cffc3dbffRight-click to activate auto-casting.|r"
    ////! i LIFE_auu1 = "|cffc3dbffRight-click to deactivate auto-casting.|r"
    //level name - atp1
    //! i LIFE_atp1 = {}
    //! i fill_arr(ALEV, LIFE_anam .. HOTKEY_STR, "[|cffffcc00Level", LIFE_atp1)
    //! i write_fieldArr(ALEV, "atp1", LIFE_atp1)
    //tool tip - aub1
    //! i LIFE_aub1 = {}
    //! i for i=1, ALEV do
       //! i LIFE_aub1[i] = "Absorbs the life essence of a target enemy unit by taking " .. LIFE_Ndr1[i] .. " hit points per second and giving them to the monster.  Lasts " .. LIFE_adur[i] .. " seconds." 
    //! i end
    //! i write_fieldArr(ALEV, "aub1", LIFE_aub1)
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
    //! i makechange(current, "anam", LIFE_anam)
    //field values
    ////! i write_fieldVar(ALEV, "aut1", LIFE_aut1)
    ////! i write_fieldVar(ALEV, "auu1", LIFE_auu1)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, LIFE_anam, upoi)

//! endexternalblock
