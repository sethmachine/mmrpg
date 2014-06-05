//! externalblock extension=lua ObjectMerger $FILENAME$
    //passive base buff ID
    //passive base abilities ID
    //! i FEED_PASS_ID = 'Afbk'
    //! i SENT_PASS_ID = 'Adts'
    //! i FNIX_PASS_ID = 'Apxf'
    //! i BASH_PASS_ID = 'AHbh'
    //! i EVEN_PASS_ID = 'Aven'
    //! i PULV_PASS_ID = 'Awar'
    //! i CRIT_PASS_ID = 'AOcr'
    //! i DISE_PASS_ID = 'Aap1'
    //! i SPKE_PASS_ID = 'AUts'
    //! i SKIN_PASS_ID = 'Assk'
    //! i SLOW_PASS_ID = 'Aspo'
    //! i EVAD_PASS_ID = 'AEev'
    //! i CLEV_PASS_ID = 'ANca'
    //! i IMMO_PASS_ID = 'ANpi'
    //total levels for each aura(= 6)
    //! i ALEV = "6"
    //race of all passives
    //! i ARAC = "human"
    //all passives are also hero abilities
    //! i AHER = "1"
    //prefix for all passives
    //! i CUSTOM_ID = "Ap"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Bp"
    //! i ABPX = "2"
    //! i ABPY = "2"
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
    
    //atp1 tool tip writing function
    //! i function fill_arr(maxLvls, name, lvlStr, arr)
        //! i for i=1, maxLvls do
            //! i arr[i] = name .. " " .. lvlStr .. " " .. i .. "|r]"
        //! i end
    //! i  end
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
    
    //constants for each passive
    
    //*************************
    //***** Feedback **********
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //the name of the aura
    //! i FEED_ANAM = "Feedback"
    //the bonus for each level, a total of 6
    //! i FEED_DAM = {}
    //! i FEED_DAM[1] = "1.0"
    //! i FEED_DAM[2] = "1.5"
    //! i FEED_DAM[3] = "2.0"
    //! i FEED_DAM[4] = "3.0"
    //! i FEED_DAM[5] = "4.0"
    //! i FEED_DAM[6] = "6.0"
    //max mana drained per hit
    //! i FBK_3_1 = {}
    //! i FBK_3_1[1] = "2.0"
    //! i FBK_3_1[2] = "4.0"
    //! i FBK_3_1[3] = "6.0"
    //! i FBK_3_1[4] = "9.0"
    //! i FBK_3_1[5] = "12.0"
    //! i FBK_3_1[6] = "16.0"
    //tool tip (display level)
    //! i FEED_ATP1 = {}
    //! i fill_arr(ALEV, FEED_ANAM .. HOTKEY_STR, "[|cffffcc00Level", FEED_ATP1)
    //tool tip (display quantity/effect)
    //! i FEED_AUB1 = {}
    //! i for i=1, ALEV do
        //! i FEED_AUB1[i] = "The monsters' attacks destroy " .. FEED_DAM[i] .. " mana per hit. The mana combusts, dealing damage to the attacked unit"
    //! i end
    //*************************
    //***** Truesight *********
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //the name of the aura
    //! i TRUE_ANAM = "Truesight"
    //the bonus for each level, a total of 6
    //! i TRUE_DAM = {}
    //! i TRUE_DAM[1] = "200.0"
    //! i TRUE_DAM[2] = "300.0"
    //! i TRUE_DAM[3] = "400.0"
    //! i TRUE_DAM[4] = "600.0"
    //! i TRUE_DAM[5] = "800.0"
    //! i TRUE_DAM[6] = "1100.0"
    //tool tip (display level)
    //! i TRUE_ATP1 = {}
    //! i fill_arr(ALEV, TRUE_ANAM .. HOTKEY_STR, "[|cffffcc00Level", TRUE_ATP1)
    //tool tip (display quantity/effect)
    //! i TRUE_AUB1 = {}
    //! i for i=1, ALEV do
        //! i TRUE_AUB1[i] = "Reveals invisible units within " .. TRUE_DAM[i] .. " range of the monster."
    //! i end
    //*************************
    //***** Bash **************
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //the name of the aura
    //! i BASH_ANAM = "Bash"
    //the bonus for each level, a total of 6
    //! i BASH_DAM = {}
    //! i BASH_DAM[1] = "1.0"
    //! i BASH_DAM[2] = "1.5"
    //! i BASH_DAM[3] = "2.0"
    //! i BASH_DAM[4] = "3.0"
    //! i BASH_DAM[5] = "4.0"
    //! i BASH_DAM[6] = "6.0"
    //bash duration
    //! i BASH_ADUR = {}
    //! i BASH_ADUR[1] = "0.50"
    //! i BASH_ADUR[2] = "0.75"
    //! i BASH_ADUR[3] = "1.0"
    //! i BASH_ADUR[4] = "1.50"
    //! i BASH_ADUR[5] = "2.0"
    //! i BASH_ADUR[6] = "3.0"
    //bash proc chance
    //! i BASH_Hbh1 = {}
    //! i BASH_Hbh1[1] = "0.10"
    //! i BASH_Hbh1[2] = "0.12"
    //! i BASH_Hbh1[3] = "0.14"
    //! i BASH_Hbh1[4] = "0.18"
    //! i BASH_Hbh1[5] = "0.22"
    //! i BASH_Hbh1[6] = "0.25"
    //tool tip (display level)
    //! i BASH_ATP1 = {}
    //! i fill_arr(ALEV, BASH_ANAM .. HOTKEY_STR, "[|cffffcc00Level", BASH_ATP1)
    //tool tip (display quantity/effect)
    //! i BASH_AUB1 = {}
    //! i for i=1, ALEV do
        //! i BASH_AUB1[i] = "Gives a " .. BASH_Hbh1[i] .. "% chance that an attack will do " .. BASH_DAM[i] .. " bonus damage and stun an opponent for " .. BASH_ADUR[i] .. " seconds."
    //! i end
    //*************************
    //***** Envenomed Spears **
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    //! i EVEN_ABUF = "Bpoi,Bpsd"
    //damage type - stacking
    //! i EVEN_POI4 = "1"
    //the name of the aura
    //! i EVEN_ANAM = "Envenomed Spears"
    //the bonus for each level, a total of 6
    //! i EVEN_POI1 = {}
    //! i EVEN_POI1[1] = "1.0"
    //! i EVEN_POI1[2] = "1.5"
    //! i EVEN_POI1[3] = "2.0"
    //! i EVEN_POI1[4] = "3.0"
    //! i EVEN_POI1[5] = "4.0"
    //! i EVEN_POI1[6] = "6.0"
    //EVEN duration
    //! i EVEN_ADUR = {}
    //! i EVEN_ADUR[1] = "10.00"
    //! i EVEN_ADUR[2] = "15.00"
    //! i EVEN_ADUR[3] = "20.00"
    //! i EVEN_ADUR[4] = "30.00"
    //! i EVEN_ADUR[5] = "40.00"
    //! i EVEN_ADUR[6] = "60.00"
    //tool tip (display level)
    //! i EVEN_ATP1 = {}
    //! i fill_arr(ALEV, EVEN_ANAM .. HOTKEY_STR, "[|cffffcc00Level", EVEN_ATP1)
    //tool tip (display quantity/effect)
    //! i EVEN_AUB1 = {}
    //! i for i=1, ALEV do
        //! i EVEN_AUB1[i] = "Deals " .. EVEN_POI1[i] .. " poison damage per second.  Lasts " .. EVEN_ADUR[i] .. " seconds."
    //! i end
    //*************************
    //***** Pulverize *********
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i PULV_ABUF = "Bpoi,Bpsd"
    //damage type - stacking
    //! i PULV_POI4 = "1"
    //the name of the aura
    //! i PULV_ANAM = "Pulverize"
    //chance to pulverize
    //! i PULV_WAR1 = {}
    //! i PULV_WAR1[1] = "10.00"
    //! i PULV_WAR1[2] = "12.00"
    //! i PULV_WAR1[3] = "14.00"
    //! i PULV_WAR1[4] = "17.00"
    //! i PULV_WAR1[5] = "20.00"
    //! i PULV_WAR1[6] = "24.00"
    //damage dealt
    //! i PULV_WAR2 = {}
    //! i PULV_WAR2[1] = "25.00"
    //! i PULV_WAR2[2] = "30.00"
    //! i PULV_WAR2[3] = "35.00"
    //! i PULV_WAR2[4] = "45.00"
    //! i PULV_WAR2[5] = "55.00"
    //! i PULV_WAR2[6] = "70.00"
    //full damage radius
    //! i PULV_WAR3 = "250.00"
    //half damage radius
    //! i PULV_WAR4 = "350.00"
    //tool tip (display level)
    //! i PULV_ATP1 = {}
    //! i fill_arr(ALEV, PULV_ANAM .. HOTKEY_STR, "[|cffffcc00Level", PULV_ATP1)
    //tool tip (display quantity/effect)
    //! i PULV_AUB1 = {}
    //! i for i=1, ALEV do
        //! i PULV_AUB1[i] = "Gives a " .. PULV_WAR1[i] .. "% chance that an attack will deal " .. PULV_WAR2[i] .. " damage to nearby units."
    //! i end
    //*************************
    //***** Critical Strike ***
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i CRIT_ABUF = "Bpoi,Bpsd"
    //damage type - stacking
    //! i CRIT_POI4 = "1"
    //the name of the aura
    //! i CRIT_ANAM = "Critical Strike"
    //chance to critical
    //! i CRIT_OCR1 = {}
    //! i CRIT_OCR1[1] = "7.00"
    //! i CRIT_OCR1[2] = "8.00"
    //! i CRIT_OCR1[3] = "9.00"
    //! i CRIT_OCR1[4] = "11.00"
    //! i CRIT_OCR1[5] = "13.00"
    //! i CRIT_OCR1[6] = "16.00"
    //multiplier
    //! i CRIT_OCR2 = {}
    //! i CRIT_OCR2[1] = "1.5"
    //! i CRIT_OCR2[2] = "2.0"
    //! i CRIT_OCR2[3] = "2.5"
    //! i CRIT_OCR2[4] = "3.25"
    //! i CRIT_OCR2[5] = "4.0"
    //! i CRIT_OCR2[6] = "5.0"
    //full damage radius
    //! i CRIT_WAR3 = "250.00"
    //half damage radius
    //! i CRIT_WAR4 = "350.00"
    //tool tip (display level)
    //! i CRIT_ATP1 = {}
    //! i fill_arr(ALEV, CRIT_ANAM .. HOTKEY_STR, "[|cffffcc00Level", CRIT_ATP1)
    //tool tip (display quantity/effect)
    //! i CRIT_AUB1 = {}
    //! i for i=1, ALEV do
        //! i CRIT_AUB1[i] = "Gives a " .. CRIT_OCR1[i] .. "% chance to do " .. CRIT_OCR2[i] .. " times normal damage on an attack."
    //! i end
    //*************************
    //***** Disease Cloud *****
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    //! i DISE_ABUF = "Bapl"
    //damage type - stacking
    //! i DISE_POI4 = "1"
    //the name of the aura
    //! i DISE_ANAM = "Disease Cloud"
    //duration
    //! i DISE_APL1 = {}
    //! i DISE_APL1[1] = "60.00"
    //! i DISE_APL1[2] = "80.00"
    //! i DISE_APL1[3] = "100.00"
    //! i DISE_APL1[4] = "140.00"
    //! i DISE_APL1[5] = "180.00"
    //! i DISE_APL1[6] = "240.00"
    //damage per second
    //! i DISE_APL2 = {}
    //! i DISE_APL2[1] = "1.00"
    //! i DISE_APL2[2] = "1.50"
    //! i DISE_APL2[3] = "2.00"
    //! i DISE_APL2[4] = "3.00"
    //! i DISE_APL2[5] = "4.00"
    //! i DISE_APL2[6] = "6.00"
    //aoe
    //! i DISE_AARE = "176.00"
    //! i DISE_APL3 = "10.00"
    //tool tip (display level)
    //! i DISE_ATP1 = {}
    //! i fill_arr(ALEV, DISE_ANAM .. HOTKEY_STR, "[|cffffcc00Level", DISE_ATP1)
    //tool tip (display quantity/effect)
    //! i DISE_AUB1 = {}
    //! i for i=1, ALEV do
        //! i DISE_AUB1[i] = "Infects nearby enemy living units with Disease Cloud. Disease Cloud deals " .. DISE_APL2[i] .. " damage per second. |nLasts " .. DISE_APL1[i] .. " seconds."
    //! i end
    //*************************
    //***** Spiked Carapace ***
    //*************************
    //the button used for the buff/aura
    ////! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i SPKE_ABUF = "Bapl"
    //damage type - stacking
    ////! i SPKE_POI4 = "1"
    //the name of the aura
    //! i SPKE_ANAM = "Spiked Carapace"
    //armor bonus
    //! i SPKE_UTS3 = {}
    //! i SPKE_UTS3[1] = "0.00"
    //! i SPKE_UTS3[2] = "0.00"
    //! i SPKE_UTS3[3] = "0.00"
    //! i SPKE_UTS3[4] = "0.00"
    //! i SPKE_UTS3[5] = "0.00"
    //! i SPKE_UTS3[6] = "0.00"
    //damage reduction percent
    //! i SPKE_UTS2 = {}
    //! i SPKE_UTS2[1] = "1.0"
    //! i SPKE_UTS2[2] = "1.0"
    //! i SPKE_UTS2[3] = "1.0"
    //! i SPKE_UTS2[4] = "1.0"
    //! i SPKE_UTS2[5] = "1.0"
    //! i SPKE_UTS2[6] = "1.0"
    //damage returned
    //! i SPKE_UTS1 = {}
    //! i SPKE_UTS1[1] = "0.10"
    //! i SPKE_UTS1[2] = "0.15"
    //! i SPKE_UTS1[3] = "0.20"
    //! i SPKE_UTS1[4] = "0.30"
    //! i SPKE_UTS1[5] = "0.40"
    //! i SPKE_UTS1[6] = "0.55"
    //tool tip (display level)
    //! i SPKE_ATP1 = {}
    //! i fill_arr(ALEV, SPKE_ANAM .. HOTKEY_STR, "[|cffffcc00Level", SPKE_ATP1)
    //tool tip (display quantity/effect)
    //! i SPKE_AUB1 = {}
    //! i for i=1, ALEV do
        //! i SPKE_AUB1[i] = "Enhances the monster with organic barbs, which return " .. SPKE_UTS1[i] .. "% of melee attack damage."
    //! i end
    //*************************
    //***** Steel Frame *******
    //*************************
    //the button used for the buff/aura
    //! i STEL_AART = "SteelFrame.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i STEL_ABUF = "Bapl"
    //damage type - stacking
    ////! i STEL_POI4 = "1"
    //the name of the aura
    //! i STEL_ANAM = "Steel Frame"
    //armor bonus
    //! i STEL_UTS3 = {}
    //! i STEL_UTS3[1] = "3.00"
    //! i STEL_UTS3[2] = "5.00"
    //! i STEL_UTS3[3] = "7.00"
    //! i STEL_UTS3[4] = "10.00"
    //! i STEL_UTS3[5] = "13.00"
    //! i STEL_UTS3[6] = "17.00"
    //damage reduction percent
    //! i STEL_UTS2 = {}
    //! i STEL_UTS2[1] = "1.0"
    //! i STEL_UTS2[2] = "1.0"
    //! i STEL_UTS2[3] = "1.0"
    //! i STEL_UTS2[4] = "1.0"
    //! i STEL_UTS2[5] = "1.0"
    //! i STEL_UTS2[6] = "1.0"
    //damage returned
    //! i STEL_UTS1 = {}
    //! i STEL_UTS1[1] = "0.00"
    //! i STEL_UTS1[2] = "0.00"
    //! i STEL_UTS1[3] = "0.00"
    //! i STEL_UTS1[4] = "0.00"
    //! i STEL_UTS1[5] = "0.00"
    //! i STEL_UTS1[6] = "0.00"
    //tool tip (display level)
    //! i STEL_ATP1 = {}
    //! i fill_arr(ALEV, STEL_ANAM .. HOTKEY_STR, "[|cffffcc00Level", STEL_ATP1)
    //tool tip (display quantity/effect)
    //! i STEL_AUB1 = {}
    //! i for i=1, ALEV do
        //! i STEL_AUB1[i] = "Enhances the monster's physical defenses, increasing its armor by " .. STEL_UTS3[i] .. " points."
    //! i end
    //*************************
    //***** Reflect Bounder ***
    //*************************
    //the button used for the buff/aura
    //! i REFL_AART = "ReflectBounder.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i REFL_ABUF = "Bapl"
    //damage type - stacking
    ////! i REFL_POI4 = "1"
    //the name of the aura
    //! i REFL_ANAM = "Reflect Bounder"
    //armor bonus
    //! i REFL_UTS3 = {}
    //! i REFL_UTS3[1] = "0.00"
    //! i REFL_UTS3[2] = "0.00"
    //! i REFL_UTS3[3] = "0.00"
    //! i REFL_UTS3[4] = "0.00"
    //! i REFL_UTS3[5] = "0.00"
    //! i REFL_UTS3[6] = "0.00"
    //damage reduction percent
    //! i REFL_UTS2 = {}
    //! i REFL_UTS2[1] = "0.98"
    //! i REFL_UTS2[2] = "0.97"
    //! i REFL_UTS2[3] = "0.96"
    //! i REFL_UTS2[4] = "0.94"
    //! i REFL_UTS2[5] = "0.92"
    //! i REFL_UTS2[6] = "0.90"
    //damage returned
    //! i REFL_UTS1 = {}
    //! i REFL_UTS1[1] = "0.02"
    //! i REFL_UTS1[2] = "0.03"
    //! i REFL_UTS1[3] = "0.04"
    //! i REFL_UTS1[4] = "0.06"
    //! i REFL_UTS1[5] = "0.08"
    //! i REFL_UTS1[6] = "0.10"
    //tool tip (display level)
    //! i REFL_ATP1 = {}
    //! i fill_arr(ALEV, REFL_ANAM .. HOTKEY_STR, "[|cffffcc00Level", REFL_ATP1)
    //tool tip (display quantity/effect)
    //! i REFL_AUB1 = {}
    //! i for i=1, ALEV do
        //! i REFL_AUB1[i] = "The monster is protected by a magical shield, reflecting back " .. REFL_UTS3[i] * 100 .. "% of all melee damage."
    //! i end
    //*************************
    //***** Enduring Form *****
    //*************************
    //the button used for the buff/aura
    //! i EDUR_AART = "EnduringForm.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i EDUR_ABUF = "Bapl"
    //damage type - stacking
    ////! i EDUR_POI4 = "1"
    //the name of the aura
    //! i EDUR_ANAM = "Enduring Form"
    //armor bonus
    //! i EDUR_UTS3 = {}
    //! i EDUR_UTS3[1] = "0.00"
    //! i EDUR_UTS3[2] = "0.00"
    //! i EDUR_UTS3[3] = "0.00"
    //! i EDUR_UTS3[4] = "0.00"
    //! i EDUR_UTS3[5] = "0.00"
    //! i EDUR_UTS3[6] = "0.00"
    //damage reduction percent
    //! i EDUR_UTS2 = {}
    //! i EDUR_UTS2[1] = "0.96"
    //! i EDUR_UTS2[2] = "0.94"
    //! i EDUR_UTS2[3] = "0.92"
    //! i EDUR_UTS2[4] = "0.89"
    //! i EDUR_UTS2[5] = "0.86"
    //! i EDUR_UTS2[6] = "0.82"
    //damage returned
    //! i EDUR_UTS1 = {}
    //! i EDUR_UTS1[1] = "0.00"
    //! i EDUR_UTS1[2] = "0.00"
    //! i EDUR_UTS1[3] = "0.00"
    //! i EDUR_UTS1[4] = "0.00"
    //! i EDUR_UTS1[5] = "0.00"
    //! i EDUR_UTS1[6] = "0.00"
    //tool tip (display level)
    //! i EDUR_ATP1 = {}
    //! i fill_arr(ALEV, EDUR_ANAM .. HOTKEY_STR, "[|cffffcc00Level", EDUR_ATP1)
    //tool tip (display quantity/effect)
    //! i EDUR_AUB1 = {}
    //! i for i=1, ALEV do
        //! i EDUR_AUB1[i] = "Reduces all melee damage by " .. EDUR_UTS2[i] * 100 .. "%."
    //! i end
    //*************************
    //***** Hardened Skin *****
    //*************************
    //the button used for the buff/aura
    //! i SKIN_AART = "EnduringForm.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i SKIN_ABUF = "Bapl"
    //damage type - stacking
    ////! i SKIN_POI4 = "1"
    //the name of the aura
    //! i SKIN_ANAM = "Hardened Skin"
    //chance
    //! i SKIN_Ssk1 = {}
    //! i SKIN_Ssk1[1] = "100.00"
    //! i SKIN_Ssk1[2] = "100.00"
    //! i SKIN_Ssk1[3] = "100.00"
    //! i SKIN_Ssk1[4] = "100.00"
    //! i SKIN_Ssk1[5] = "100.00"
    //! i SKIN_Ssk1[6] = "100.00"
    //ignored damage
    //! i SKIN_Ssk3 = {}
    //! i SKIN_Ssk3[1] = "3.0"
    //! i SKIN_Ssk3[2] = "6.0"
    //! i SKIN_Ssk3[3] = "9.0"
    //! i SKIN_Ssk3[4] = "13.0"
    //! i SKIN_Ssk3[5] = "17.0"
    //! i SKIN_Ssk3[6] = "22.0"
    //melee + ranged
    //! i SKIN_Ssk5_4 = "1"
    //min damage
    //! i SKIN_Ssk2 = "3.0"
    //targets
    //! i SKIN_atar = "enemy,allied"
    //tool tip (display level)
    //! i SKIN_ATP1 = {}
    //! i fill_arr(ALEV, SKIN_ANAM .. HOTKEY_STR, "[|cffffcc00Level", SKIN_ATP1)
    //tool tip (display quantity/effect)
    //! i SKIN_AUB1 = {}
    //! i for i=1, ALEV do
        //! i SKIN_AUB1[i] = "Reduces all physical attacks by " .. SKIN_Ssk3[i] .. " damage.  Attacks cannot be reduced below " .. SKIN_Ssk3[i] .. " damage."
    //! i end
    //*************************
    //***** Timely Parry ******
    //*************************
    //the button used for the buff/aura
    //! i PARR_AART = "Parry.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i PARR_ABUF = "Bapl"
    //damage type - stacking
    ////! i PARR_POI4 = "1"
    //the name of the aura
    //! i PARR_ANAM = "Timely Parry"
    //chance
    //! i PARR_Ssk1 = {}
    //! i PARR_Ssk1[1] = "7.0"
    //! i PARR_Ssk1[2] = "10.0"
    //! i PARR_Ssk1[3] = "13.0"
    //! i PARR_Ssk1[4] = "17.0"
    //! i PARR_Ssk1[5] = "21.0"
    //! i PARR_Ssk1[6] = "25.0"
    //ignored damage
    //! i PARR_Ssk3 = {}
    //! i PARR_Ssk3[1] = "15.00"
    //! i PARR_Ssk3[2] = "25.00"
    //! i PARR_Ssk3[3] = "35.00"
    //! i PARR_Ssk3[4] = "50.00"
    //! i PARR_Ssk3[5] = "65.00"
    //! i PARR_Ssk3[6] = "85.00"
    //melee + ranged
    //! i PARR_Ssk5_4 = "1"
    //min damage
    //! i PARR_Ssk2 = "0.0"
    //targets
    //! i PARR_atar = "enemy,allied"
    //tool tip (display level)
    //! i PARR_ATP1 = {}
    //! i fill_arr(ALEV, PARR_ANAM .. HOTKEY_STR, "[|cffffcc00Level", PARR_ATP1)
    //tool tip (display quantity/effect)
    //! i PARR_AUB1 = {}
    //! i for i=1, ALEV do
        //! i PARR_AUB1[i] = "The monster has a " .. PARR_Ssk1[i] .. "% chance to skillfully block a physical attack, reducing it by " .. PARR_Ssk3[i] .. " damage."
    //! i end
    //*************************
    //***** Slow Poison *******
    //*************************
    //the button used for the buff/aura
    ////! i SLOW_AART = "SLOWy.blp"
    //the aura buff text
    ////! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    ////! i MIST_ATAT = "MistAura.mdx"
    //buffs applied
    //! i SLOW_abuf = "Bspo,Bssd"
    //damage type - stacking
    //! i SLOW_Spo4 = "1"
    //the name of the aura
    //! i SLOW_ANAM = "Slow Poison"
    //attack speed factor
    //! i SLOW_Spo3 = {}
    //! i SLOW_Spo3[1] = "5.0"
    //! i SLOW_Spo3[2] = "7.5"
    //! i SLOW_Spo3[3] = "10.0"
    //! i SLOW_Spo3[4] = "15.0"
    //! i SLOW_Spo3[5] = "20.0"
    //! i SLOW_Spo3[6] = "30.0"
    //movement speed factor
    //! i SLOW_Spo2 = {}
    //! i SLOW_Spo2[1] = "3.0"
    //! i SLOW_Spo2[2] = "5.0"
    //! i SLOW_Spo2[3] = "7.0"
    //! i SLOW_Spo2[4] = "10.0"
    //! i SLOW_Spo2[5] = "13.0"
    //! i SLOW_Spo2[6] = "17.0"
    //damage per second
    //! i SLOW_Spo1 = {}
    //! i SLOW_Spo1[1] = "3.0"
    //! i SLOW_Spo1[2] = "5.0"
    //! i SLOW_Spo1[3] = "7.0"
    //! i SLOW_Spo1[4] = "10.0"
    //! i SLOW_Spo1[5] = "13.0"
    //! i SLOW_Spo1[6] = "17.0"
    //duration
    //! i SLOW_ahdu_adur = {}
    //! i SLOW_ahdu_adur[1] = "0.75"
    //! i SLOW_ahdu_adur[2] = "1.0"
    //! i SLOW_ahdu_adur[3] = "1.25"
    //! i SLOW_ahdu_adur[4] = "1.75"
    //! i SLOW_ahdu_adur[5] = "2.25"
    //! i SLOW_ahdu_adur[6] = "3.0"
    //targets
    //! i SLOW_atar = "air,ground,organic"
    //tool tip (display level)
    //! i SLOW_ATP1 = {}
    //! i fill_arr(ALEV, SLOW_ANAM .. HOTKEY_STR, "[|cffffcc00Level", SLOW_ATP1)
    //tool tip (display quantity/effect)
    //! i SLOW_AUB1 = {}
    //! i for i=1, ALEV do
        //! i SLOW_AUB1[i] = "A poison attack that deals " .. SLOW_Spo1[i] .. " damage per second, and slows the target enemy's movement by " .. SLOW_Spo1[i] .. "% and attack by " .. SLOW_Spo3[i] .. "% for " .. SLOW_ahdu_adur[i] .. " seconds."
    //! i end
    //*************************
    //***** Jolting Venom *****
    //*************************
    //the button used for the buff/aura
    //! i FAST_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNMagicImmunity.blp"
    //the aura buff text
    //! i FAST_BUFF_FUBE = "This unit was hit by Jolting Venom; its movement speed and attack rate have been increased, and it will take damage over time."
    //the aura effect itself
    ////! i FAST_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i FAST_abuf = "Bspo,Bssd"
    //damage type - stacking
    //! i FAST_Spo4 = "1"
    //the name of the aura
    //! i FAST_ANAM = "Jolting Venom"
    //attack speed factor
    //! i FAST_Spo3 = {}
    //! i FAST_Spo3[1] = "-2.5"
    //! i FAST_Spo3[2] = "-5.0"
    //! i FAST_Spo3[3] = "-7.5"
    //! i FAST_Spo3[4] = "-12.5"
    //! i FAST_Spo3[5] = "-17.5"
    //! i FAST_Spo3[6] = "-23.0"
    //movement speed factor
    //! i FAST_Spo2 = {}
    //! i FAST_Spo2[1] = "-1.0"
    //! i FAST_Spo2[2] = "-2.0"
    //! i FAST_Spo2[3] = "-3.0"
    //! i FAST_Spo2[4] = "-5.0"
    //! i FAST_Spo2[5] = "-7.0"
    //! i FAST_Spo2[6] = "-10.0"
    //damage per second
    //! i FAST_Spo1 = {}
    //! i FAST_Spo1[1] = "10.0"
    //! i FAST_Spo1[2] = "15.0"
    //! i FAST_Spo1[3] = "20.0"
    //! i FAST_Spo1[4] = "30.0"
    //! i FAST_Spo1[5] = "40.0"
    //! i FAST_Spo1[6] = "60.0"
    //duration
    //! i FAST_ahdu_adur = {}
    //! i FAST_ahdu_adur[1] = "1.5"
    //! i FAST_ahdu_adur[2] = "2.0"
    //! i FAST_ahdu_adur[3] = "2.5"
    //! i FAST_ahdu_adur[4] = "3.5"
    //! i FAST_ahdu_adur[5] = "4.5"
    //! i FAST_ahdu_adur[6] = "6.0"
    //targets
    //! i FAST_atar = "air,ground,organic"
    //tool tip (display level)
    //! i FAST_ATP1 = {}
    //! i fill_arr(ALEV, FAST_ANAM .. HOTKEY_STR, "[|cffffcc00Level", FAST_ATP1)
    //tool tip (display quantity/effect)
    //! i FAST_AUB1 = {}
    //! i for i=1, ALEV do
        //! i FAST_AUB1[i] = "A shocking venomous attack that deals " .. FAST_Spo1[i] .. " damage per second, and increases the target enemy's movement by " .. FAST_Spo1[i] .. "% and attack by " .. FAST_Spo3[i] .. "% for " .. FAST_ahdu_adur[i] .. " seconds."
    //! i end
    //*************************
    //***** Evasion ***********
    //*************************
    //the button used for the buff/aura
    ////! i EVAD_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNMagicImmunity.blp"
    //the aura buff text
    ////! i EVAD_BUFF_FUBE = "This unit was hit by Jolting Venom; its movement speed and attack rate have been increased, and it will take damage over time."
    //the aura effect itself
    ////! i EVAD_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i EVAD_abuf = "Bspo,Bssd"
    //damage type - stacking
    ////! i EVAD_Spo4 = "1"
    //the name of the aura
    //! i EVAD_ANAM = "Evasion"
    //attack speed factor
    //! i EVAD_Eev1 = {}
    //! i EVAD_Eev1[1] = "0.03"
    //! i EVAD_Eev1[2] = "0.05"
    //! i EVAD_Eev1[3] = "0.07"
    //! i EVAD_Eev1[4] = "0.10"
    //! i EVAD_Eev1[5] = "0.13"
    //! i EVAD_Eev1[6] = "0.16"
    //targets
    ////! i EVAD_atar = "air,ground,organic"
    //tool tip (display level)
    //! i EVAD_ATP1 = {}
    //! i fill_arr(ALEV, EVAD_ANAM .. HOTKEY_STR, "[|cffffcc00Level", EVAD_ATP1)
    //tool tip (display quantity/effect)
    //! i EVAD_AUB1 = {}
    //! i for i=1, ALEV do
        //! i EVAD_AUB1[i] = "Gives a " .. EVAD_Eev1[i] * 100 .. "% chance to avoid an attack."
    //! i end
    //*************************
    //***** Cleaving Attack ***
    //*************************
    //the button used for the buff/aura
    ////! i CLEV_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNMagicImmunity.blp"
    //the aura buff text
    ////! i CLEV_BUFF_FUBE = "This unit was hit by Jolting Venom; its movement speed and attack rate have been increased, and it will take damage over time."
    //the aura effect itself
    ////! i CLEV_ATAT = "MistAura.mdx"
    //buffs applied
    ////! i CLEV_abuf = "Bspo,Bssd"
    //damage type - stacking
    ////! i CLEV_Spo4 = "1"
    //the name of the aura
    //! i CLEV_ANAM = "Cleaving Attack"
    //splash factor
    //! i CLEV_nca1 = {}
    //! i CLEV_nca1[1] = "10.00"
    //! i CLEV_nca1[2] = "20.00"
    //! i CLEV_nca1[3] = "30.00"
    //! i CLEV_nca1[4] = "50.00"
    //! i CLEV_nca1[5] = "60.00"
    //! i CLEV_nca1[6] = "90.00"
    //aoe
    //! i CLEV_aare = {}
    //! i CLEV_aare[1] = "150.00"
    //! i CLEV_aare[2] = "175.00"
    //! i CLEV_aare[3] = "200.00"
    //! i CLEV_aare[4] = "250.00"
    //! i CLEV_aare[5] = "300.00"
    //! i CLEV_aare[6] = "400.00"
    //targets
    ////! i CLEV_atar = "air,ground,organic"
    //tool tip (display level)
    //! i CLEV_ATP1 = {}
    //! i fill_arr(ALEV, CLEV_ANAM .. HOTKEY_STR, "[|cffffcc00Level", CLEV_ATP1)
    //tool tip (display quantity/effect)
    //! i CLEV_AUB1 = {}
    //! i for i=1, ALEV do
        //! i CLEV_AUB1[i] = "The monster strikes with such force that " .. CLEV_nca1[i] * 100 .. "% of its damage strikes through to enemies within " .. CLEV_aare[i] .. " range of the attacked unit."
    //! i end
    //*************************
    //** Permanent Immolation *
    //*************************
    //the button used for the buff/aura
    ////! i IMMO_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNMagicImmunity.blp"
    //the aura buff text
    ////! i IMMO_BUFF_FUBE = "This unit was hit by Jolting Venom; its movement speed and attack rate have been increased, and it will take damage over time."
    //the aura effect itself
    ////! i IMMO_atat = "MistAura.mdx"
    //buffs applied
    //! i IMMO_abuf = "BEim, BEia"
    //damage type - stacking
    ////! i IMMO_Spo4 = "1"
    //the name of the aura
    //! i IMMO_ANAM = "Permanent Immolation"
    //splash factor
    //! i IMMO_Eim1 = {}
    //! i IMMO_Eim1[1] = "5.00"
    //! i IMMO_Eim1[2] = "7.50"
    //! i IMMO_Eim1[3] = "10.00"
    //! i IMMO_Eim1[4] = "13.00"
    //! i IMMO_Eim1[5] = "16.00"
    //! i IMMO_Eim1[6] = "20.00"
    //aoe
    //! i IMMO_aare = {}
    //! i IMMO_aare[1] = "200.00"
    //! i IMMO_aare[2] = "215.00"
    //! i IMMO_aare[3] = "230.00"
    //! i IMMO_aare[4] = "260.00"
    //! i IMMO_aare[5] = "290.00"
    //! i IMMO_aare[6] = "330.00"
    //targets
    //! i IMMO_atar = "air,ground,organic,friend,enemy"
    //tool tip (display level)
    //! i IMMO_ATP1 = {}
    //! i fill_arr(ALEV, IMMO_ANAM .. HOTKEY_STR, "[|cffffcc00Level", IMMO_ATP1)
    //tool tip (display quantity/effect)
    //! i IMMO_AUB1 = {}
    //! i for i=1, ALEV do
        //! i IMMO_AUB1[i] = "Burns nearby units in " .. IMMO_aare[i] .. " range for " .. IMMO_Eim1[i] .. " points of damage per second."
    //! i end
    
    //counter
    //! i upoi = 0
    //! i buff_id = 0
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
    //*************************
    //***** Feedback **********
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(FEED_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "fbk4", FEED_DAM)
    //! i write_fieldArr(ALEV, "fbk2", FEED_DAM)
    //max mana burnt per hit
    //! i write_fieldArr(ALEV, "fbk3", FBK_3_1)
    //! i write_fieldArr(ALEV, "fbk1", FBK_3_1)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", FEED_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", FEED_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FEED_ANAM, upoi)
    //*************************
    //***** Truesight *********
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SENT_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "areq", "")
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "aran", TRUE_DAM)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", TRUE_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", TRUE_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, TRUE_ANAM, upoi)
    //*************************
    //***** Bash **************
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(BASH_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Hbh3", BASH_DAM)
    //! i write_fieldArr(ALEV, "Hbh1", BASH_Hbh1)
    //! i write_fieldArr(ALEV, "adur", BASH_ADUR)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", BASH_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", BASH_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BASH_ANAM, upoi)
    //*************************
    //***** Envenomed Spears **
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(EVEN_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Poi1", EVEN_POI1)
    //! i write_fieldArr(ALEV, "ahdu", EVEN_ADUR)
    //! i write_fieldArr(ALEV, "adur", EVEN_ADUR)
    //! i write_fieldVar(ALEV, "abuf", EVEN_ABUF)
    //! i write_fieldVar(ALEV, "Poi4", EVEN_POI4)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", EVEN_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", EVEN_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, EVEN_ANAM, upoi)
    //*************************
    //***** Pulverize *********
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(PULV_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "War1", PULV_WAR1)
    //! i write_fieldArr(ALEV, "War2", PULV_WAR2)
    //! i write_fieldVar(ALEV, "War3", PULV_WAR3)
    //! i write_fieldVar(ALEV, "War4", PULV_WAR4)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", PULV_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", PULV_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, PULV_ANAM, upoi)
    //*************************
    //***** Critical Strike ***
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(CRIT_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Ocr1", CRIT_OCR1)
    //! i write_fieldArr(ALEV, "Ocr2", CRIT_OCR2)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", CRIT_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", CRIT_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CRIT_ANAM, upoi)
    //*************************
    //***** Diesease Cloud ****
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(DISE_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Apl1", DISE_APL1)
    //! i write_fieldArr(ALEV, "Apl2", DISE_APL2)
    //! i write_fieldVar(ALEV, "Apl3", DISE_APL3)
    //! i write_fieldVar(ALEV, "aare", DISE_AARE)
    //! i write_fieldVar(ALEV, "abuf", DISE_ABUF)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", DISE_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", DISE_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DISE_ANAM, upoi)
    //*************************
    //***** Spiked Carapace ***
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SPKE_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Uts1", SPKE_UTS1)
    //! i write_fieldArr(ALEV, "Uts2", SPKE_UTS2)
    //! i write_fieldArr(ALEV, "Uts3", SPKE_UTS3)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", SPKE_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", SPKE_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SPKE_ANAM, upoi)
    //*************************
    //***** Steel Frame *******
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SPKE_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "aart", STEL_AART)
    //! i makechange(current, "anam", STEL_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Uts1", STEL_UTS1)
    //! i write_fieldArr(ALEV, "Uts2", STEL_UTS2)
    //! i write_fieldArr(ALEV, "Uts3", STEL_UTS3)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", STEL_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", STEL_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, STEL_ANAM, upoi)
    //*************************
    //***** Reflect Bounder ***
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SPKE_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "aart", REFL_AART)
    //! i makechange(current, "anam", REFL_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Uts1", REFL_UTS1)
    //! i write_fieldArr(ALEV, "Uts2", REFL_UTS2)
    //! i write_fieldArr(ALEV, "Uts3", REFL_UTS3)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", REFL_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", REFL_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, REFL_ANAM, upoi)
    //*************************
    //***** Enduring Form *****
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SPKE_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "aart", EDUR_AART)
    //! i makechange(current, "anam", EDUR_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Uts1", EDUR_UTS1)
    //! i write_fieldArr(ALEV, "Uts2", EDUR_UTS2)
    //! i write_fieldArr(ALEV, "Uts3", EDUR_UTS3)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", EDUR_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", EDUR_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, EDUR_ANAM, upoi)
    //*************************
    //***** Hardened Skin *****
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SKIN_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "anam", SKIN_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Ssk1", SKIN_Ssk1)
    //! i write_fieldArr(ALEV, "Ssk3", SKIN_Ssk3)
    //! i write_fieldVar(ALEV, "Ssk5", SKIN_Ssk5_4)
    //! i write_fieldVar(ALEV, "Ssk4", SKIN_Ssk5_4)
    //! i write_fieldArr(ALEV, "Ssk2", SKIN_Ssk3)
    //! i write_fieldVar(ALEV, "atar", SKIN_atar)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", SKIN_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", SKIN_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SKIN_ANAM, upoi)
    //*************************
    //***** Timely Parry ******
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SKIN_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "aart", PARR_AART)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "anam", PARR_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Ssk1", PARR_Ssk1)
    //! i write_fieldArr(ALEV, "Ssk3", PARR_Ssk3)
    //! i write_fieldVar(ALEV, "Ssk5", PARR_Ssk5_4)
    //! i write_fieldVar(ALEV, "Ssk4", PARR_Ssk5_4)
    //! i write_fieldVar(ALEV, "Ssk2", PARR_Ssk2)
    //! i write_fieldVar(ALEV, "atar", PARR_atar)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", PARR_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", PARR_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, PARR_ANAM, upoi)
    //*************************
    //***** Slow Poison *******
    //*************************
    //! i setobjecttype("abilities")
    //! i createobject(SLOW_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    ////! i makechange(current, "aart", SLOW_AART)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "anam", SLOW_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Spo3", SLOW_Spo3)
    //! i write_fieldArr(ALEV, "Spo1", SLOW_Spo1)
    //! i write_fieldArr(ALEV, "Spo2", SLOW_Spo2)
    //! i write_fieldVar(ALEV, "Spo4", SLOW_Spo4)
    //! i write_fieldVar(ALEV, "atar", SLOW_atar)
    //! i write_fieldVar(ALEV, "abuf", SLOW_abuf)
    //! i write_fieldArr(ALEV, "adur", SLOW_ahdu_adur)
    //! i write_fieldArr(ALEV, "ahdu", SLOW_ahdu_adur)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", SLOW_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", SLOW_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SLOW_ANAM, upoi)
    //*************************
    //***** Jolting Venom *****
    //*************************
    //buff - 1
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject('Bspo', buff_id)
    //! i makechange(current, "fart", FAST_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", FAST_ANAM)
    //! i makechange(current, "fube", FAST_BUFF_FUBE)
    //! i FAST_abuf = buff_id
    //buff - 2
    //! i setobjecttype("buffs")
    //! i buff_id = make_id("Bs", upoi)
    //! i createobject('Bssd', buff_id)
    //! i makechange(current, "fart", FAST_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", FAST_ANAM)
    //! i makechange(current, "fube", FAST_BUFF_FUBE)
    //! i FAST_abuf = FAST_abuf .. "," .. buff_id
    //ability
    //! i setobjecttype("abilities")
    //! i createobject(SLOW_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "aart", FAST_AART)
    //! i makechange(current, "areq", "")
    //! i makechange(current, "anam", FAST_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Spo3", FAST_Spo3)
    //! i write_fieldArr(ALEV, "Spo1", FAST_Spo1)
    //! i write_fieldArr(ALEV, "Spo2", FAST_Spo2)
    //! i write_fieldVar(ALEV, "Spo4", FAST_Spo4)
    //! i write_fieldVar(ALEV, "atar", FAST_atar)
    //! i write_fieldVar(ALEV, "abuf", FAST_abuf)
    //! i write_fieldArr(ALEV, "adur", FAST_ahdu_adur)
    //! i write_fieldArr(ALEV, "ahdu", FAST_ahdu_adur)
    //targets
    ////! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", FAST_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", FAST_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FAST_ANAM, upoi)
    //*************************
    //***** Evasion ***********
    //*************************
    //ability
    //! i setobjecttype("abilities")
    //! i createobject(EVAD_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    ////! i makechange(current, "aart", EVAD_AART)
    ////! i makechange(current, "areq", "")
    //! i makechange(current, "anam", EVAD_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Eev1", EVAD_Eev1)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", EVAD_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", EVAD_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, EVAD_ANAM, upoi)
    //*************************
    //***** Cleaving Attack ***
    //*************************
    //ability
    //! i setobjecttype("abilities")
    //! i createobject(CLEV_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    ////! i makechange(current, "aart", CLEV_AART)
    ////! i makechange(current, "areq", "")
    //! i makechange(current, "anam", CLEV_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "nca1", CLEV_nca1)
    //! i write_fieldArr(ALEV, "aare", CLEV_aare)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", CLEV_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", CLEV_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CLEV_ANAM, upoi)
    //*************************
    //** Permanent Immolation *
    //*************************
    //ability
    //! i setobjecttype("abilities")
    //! i createobject(IMMO_PASS_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "ansf", "")
    //! i makechange(current, "aher", AHER)
    //! i makechange(current, "arac", ARAC)
    ////! i makechange(current, "aart", IMMO_AART)
    ////! i makechange(current, "areq", "")
    //! i makechange(current, "anam", IMMO_ANAM)
    //damage per point of mana burnt
    //! i write_fieldArr(ALEV, "Eim1", IMMO_Eim1)
    //! i write_fieldArr(ALEV, "aare", IMMO_aare)
    //! i write_fieldVar(ALEV, "atar", IMMO_atar)
    //! i write_fieldVar(ALEV, "abuf", IMMO_abuf)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", IMMO_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", IMMO_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, IMMO_ANAM, upoi)
//! endexternalblock
