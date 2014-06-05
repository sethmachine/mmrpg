//! externalblock extension=lua ObjectMerger $FILENAME$
    //aura base buff ID
    //! i DEVOTION_BUFF_ID = 'BHad'
    //! i BRIL_BUFF_ID = 'BHab'
    //! i EDUR_BUFF_ID = 'BOae'
    //! i UNHO_BUFF_ID = 'BUau'
    //! i VAMP_BUFF_ID = 'BUav'
    //! i THRN_BUFF_ID = 'BEah'
    //! i TRUE_BUFF_ID = 'BEar'
    //! i CMND_BUFF_ID = 'BOac'
    //aura base abilities ID
    //! i DEVOTION_AURA_ID = 'AHad'
    //! i BRIL_AURA_ID = 'AHab'
    //! i EDUR_AURA_ID = 'AOae'
    //! i UNHO_AURA_ID = 'AUau'
    //! i VAMP_AURA_ID = 'AUav'
    //! i THRN_AURA_ID = 'AEah'
    //! i TRUE_AURA_ID = 'AEar'
    //! i CMND_AURA_ID = 'ACac'
    //total levels for each aura(= 6)
    //! i ALEV = "6"
    //range of aura, if relevant
    //! i ARAN = "600.00"
    //race of all auras
    //! i ARAC = "human"
    //all auras are also hero abilities
    //! i AHER = "1"
    //prefix for all auras
    //! i CUSTOM_ID = "Aa"
    //prefix for all aura buffs
    //! i CUSTOM_BUFF_ID = "Ba"
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
    //constants for each buff/aura
    
    //*************************
    //***** Devotion Aura *****
    //*************************
    //the button used for the buff/aura
    //! i DEVO_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNDevotion.blp"
    //the aura buff text
    //! i DEVO_BUFF_FUBE = "This unit is under the effects of Devotion Aura; it has increased armor."
    //the aura effect itself
    //! i DEVO_ATAT = "Abilities\Spells\Human\DevotionAura\DevotionAura.mdl"
    //the name of the aura
    //! i DEVO_ANAM = "Devotion Aura"
    //the bonus for each level, a total of 6
    //! i DEVO_LVL = {}
    //! i DEVO_LVL[1] = "1.0"
    //! i DEVO_LVL[2] = "2.0"
    //! i DEVO_LVL[3] = "3.0"
    //! i DEVO_LVL[4] = "5.0"
    //! i DEVO_LVL[5] = "7.0"
    //! i DEVO_LVL[6] = "10.0"
    //the area of effect range for each level, a total of 6
    //! i DEVO_AARE = {}
    //! i DEVO_AARE[1] = "500.0"
    //! i DEVO_AARE[2] = "550.0"
    //! i DEVO_AARE[3] = "600.0"
    //! i DEVO_AARE[4] = "700.0"
    //! i DEVO_AARE[5] = "800.0"
    //! i DEVO_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i DEVO_ATAR = "air,ground,friend,self,vuln,invu"
    //tool tip (display level)
    //! i DEVO_ATP1 = {}
    //! i fill_arr(ALEV, DEVO_ANAM .. HOTKEY_STR, "[|cffffcc00Level", DEVO_ATP1)
    //tool tip (display quantity/effect)
    //! i DEVO_AUB1 = {}
    //! i for i=1, ALEV do
        //! i DEVO_AUB1[i] = "Gives " .. DEVO_LVL[i] .. " additional armor to nearby friendly units."
    //! i end
    //*************************
    //***** Shattering Aura ***
    //*************************
    //the button used for the buff/aura
    //! i SHAT_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNFragmentationBombs.blp"
    //the aura buff text
    //! i SHAT_BUFF_FUBE = "This unit is under the effects of Shattering Aura; it has decreased armor."
    //the aura effect itself
    //! i SHAT_ATAT = "war3mapimported\\BlightwalkerAura.mdx"
    //the name of the aura
    //! i SHAT_ANAM = "Shattering Aura"
    //the bonus for each level, a total of 6
    //! i SHAT_LVL = {}
    //! i SHAT_LVL[1] = "-0.75"
    //! i SHAT_LVL[2] = "-1.50"
    //! i SHAT_LVL[3] = "-2.25"
    //! i SHAT_LVL[4] = "-3.25"
    //! i SHAT_LVL[5] = "-5.25"
    //! i SHAT_LVL[6] = "-8.00"
    //the area of effect range for each level, a total of 6
    //! i SHAT_AARE = {}
    //! i SHAT_AARE[1] = "400.0"
    //! i SHAT_AARE[2] = "450.0"
    //! i SHAT_AARE[3] = "500.0"
    //! i SHAT_AARE[4] = "600.0"
    //! i SHAT_AARE[5] = "700.0"
    //! i SHAT_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i SHAT_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i SHAT_ATP1 = {}
    //! i fill_arr(ALEV, SHAT_ANAM .. HOTKEY_STR, "[|cffffcc00Level", SHAT_ATP1)
    //tool tip (display quantity/effect)
    //! i SHAT_AUB1 = {}
    //! i for i=1, ALEV do
        //! i SHAT_AUB1[i] = "Reduces nearby enemy units' armor by " .. SHAT_LVL[i]
    //! i end
    //*************************
    //***** Brilliance Aura ***
    //*************************
    //the button used for the buff/aura
    //! i BRIL_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNBrilliance.blp"
    //the aura buff text
    //! i BRIL_BUFF_FUBE = "This unit is under the effects of Brilliance Aura; it has an increased mana regeneration."
    //the aura effect itself
    //! i BRIL_ATAT = "Abilities\Spells\Human\BrillianceAura\BrillianceAura.mdl"
    //the name of the aura
    //! i BRIL_ANAM = "Brilliance Aura"
    //the bonus for each level, a total of 6
    //! i BRIL_LVL = {}
    //! i BRIL_LVL[1] = "0.50"
    //! i BRIL_LVL[2] = "0.75"
    //! i BRIL_LVL[3] = "1.00"
    //! i BRIL_LVL[4] = "1.30"
    //! i BRIL_LVL[5] = "1.60"
    //! i BRIL_LVL[6] = "2.00"
    //the area of effect range for each level, a total of 6
    //! i BRIL_AARE = {}
    //! i BRIL_AARE[1] = "500.0"
    //! i BRIL_AARE[2] = "550.0"
    //! i BRIL_AARE[3] = "600.0"
    //! i BRIL_AARE[4] = "700.0"
    //! i BRIL_AARE[5] = "800.0"
    //! i BRIL_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i BRIL_ATAR = "air,ground,friend,self,vuln,invu"
    //tool tip (display level)
    //! i BRIL_ATP1 = {}
    //! i fill_arr(ALEV, BRIL_ANAM .. HOTKEY_STR, "[|cffffcc00Level", BRIL_ATP1)
    //tool tip (display quantity/effect)
    //! i BRIL_AUB1 = {}
    //! i for i=1, ALEV do
        //! i BRIL_AUB1[i] = "Gives " .. (BRIL_LVL[i] * 100) .. "% additional mana regeneration to nearby friendly units."
    //! i end
    //************************
    //***** Darkness Aura ****
    //************************
    //the button used for the buff/aura
    //! i DARK_AART = "PASDarkElfAura.blp"
    //the aura buff text
    //! i DARK_BUFF_FUBE = "This unit is under the effects of Darkness Aura; it has a decreased mana regeneration."
    //the aura effect itself
    //! i DARK_ATAT = "DarkElfAura.mdx"
    //the name of the aura
    //! i DARK_ANAM = "Darkness Aura"
    //the bonus for each level, a total of 6
    //! i DARK_LVL = {}
    //! i DARK_LVL[1] = "-0.75"
    //! i DARK_LVL[2] = "-1.05"
    //! i DARK_LVL[3] = "-1.35"
    //! i DARK_LVL[4] = "-1.75"
    //! i DARK_LVL[5] = "-2.05"
    //! i DARK_LVL[6] = "-2.55"
    //the area of effect range for each level, a total of 6
    //! i DARK_AARE = {}
    //! i DARK_AARE[1] = "400.0"
    //! i DARK_AARE[2] = "450.0"
    //! i DARK_AARE[3] = "500.0"
    //! i DARK_AARE[4] = "600.0"
    //! i DARK_AARE[5] = "700.0"
    //! i DARK_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i DARK_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i DARK_ATP1 = {}
    //! i fill_arr(ALEV, DARK_ANAM .. HOTKEY_STR, "[|cffffcc00Level", DARK_ATP1)
    //tool tip (display quantity/effect)
    //! i DARK_AUB1 = {}
    //! i for i=1, ALEV do
        //! i DARK_AUB1[i] = "Gives " .. (DARK_LVL[i] * 100) .. "% decreased mana regeneration to nearby enemy units."
    //! i end
    //*************************
    //***** Haste Aura ********
    //*************************
    //the button used for the buff/aura
    //! i EDUR_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNCommand.blp"
    //the aura buff text
    //! i EDUR_BUFF_FUBE = "This unit is under the effects of Haste Aura; it has an increased movement speed."
    //the aura effect itself
    //! i EDUR_ATAT = "Abilities\\Spells\\Orc\\CommandAura\\CommandAura.mdl"
    //the name of the aura
    //! i EDUR_ANAM = "Haste Aura"
    //the bonus for each level, a total of 6
    //! i EDUR_LVL = {}
    //! i EDUR_LVL[1] = "0.10"
    //! i EDUR_LVL[2] = "0.20"
    //! i EDUR_LVL[3] = "0.30"
    //! i EDUR_LVL[4] = "0.70"
    //! i EDUR_LVL[5] = "1.10"
    //! i EDUR_LVL[6] = "1.60"
    //remove extra bonus
    //! i EDUR_NULL = {}
    //! i EDUR_NULL[1] = "0.00"
    //! i EDUR_NULL[2] = "0.00"
    //! i EDUR_NULL[3] = "0.00"
    //! i EDUR_NULL[4] = "0.00"
    //! i EDUR_NULL[5] = "0.00"
    //! i EDUR_NULL[6] = "0.00"
    //the area of effect range for each level, a total of 6
    //! i EDUR_AARE = {}
    //! i EDUR_AARE[1] = "500.0"
    //! i EDUR_AARE[2] = "550.0"
    //! i EDUR_AARE[3] = "600.0"
    //! i EDUR_AARE[4] = "700.0"
    //! i EDUR_AARE[5] = "800.0"
    //! i EDUR_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i EDUR_ATAR = "air,ground,friend,self,vuln,invu"
    //tool tip (display level)
    //! i EDUR_ATP1 = {}
    //! i fill_arr(ALEV, EDUR_ANAM .. HOTKEY_STR, "[|cffffcc00Level", EDUR_ATP1)
    //tool tip (display quantity/effect)
    //! i EDUR_AUB1 = {}
    //! i for i=1, ALEV do
        //! i EDUR_AUB1[i] = "Gives " .. (EDUR_LVL[i] * 100) .. "% additional movement speed to nearby friendly units."
    //! i end
    //*************************
    //***** Zeal Aura *********
    //*************************
    //the button used for the buff/aura
    //! i ZEAL_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNReincarnation.blp"
    //the aura buff text
    //! i ZEAL_BUFF_FUBE = "This unit is under the effects of Zeal Aura; it has an increased attack speed."
    //the aura effect itself
    //! i ZEAL_ATAT = "ZealAura.mdx"
    //the name of the aura
    //! i ZEAL_ANAM = "Zeal Aura"
    //the bonus for each level, a total of 6
    //! i ZEAL_LVL = {}
    //! i ZEAL_LVL[1] = "0.05"
    //! i ZEAL_LVL[2] = "0.10"
    //! i ZEAL_LVL[3] = "0.15"
    //! i ZEAL_LVL[4] = "0.25"
    //! i ZEAL_LVL[5] = "0.35"
    //! i ZEAL_LVL[6] = "0.55"
    //remove extra bonus
    //! i ZEAL_NULL = {}
    //! i ZEAL_NULL[1] = "0.00"
    //! i ZEAL_NULL[2] = "0.00"
    //! i ZEAL_NULL[3] = "0.00"
    //! i ZEAL_NULL[4] = "0.00"
    //! i ZEAL_NULL[5] = "0.00"
    //! i ZEAL_NULL[6] = "0.00"
    //the area of effect range for each level, a total of 6
    //! i ZEAL_AARE = {}
    //! i ZEAL_AARE[1] = "500.0"
    //! i ZEAL_AARE[2] = "550.0"
    //! i ZEAL_AARE[3] = "600.0"
    //! i ZEAL_AARE[4] = "700.0"
    //! i ZEAL_AARE[5] = "800.0"
    //! i ZEAL_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i ZEAL_ATAR = "air,ground,friend,self,vuln,invu"
    //tool tip (display level)
    //! i ZEAL_ATP1 = {}
    //! i fill_arr(ALEV, ZEAL_ANAM .. HOTKEY_STR, "[|cffffcc00Level", ZEAL_ATP1)
    //tool tip (display quantity/effect)
    //! i ZEAL_AUB1 = {}
    //! i for i=1, ALEV do
        //! i ZEAL_AUB1[i] = "Gives " .. (ZEAL_LVL[i] * 100) .. "% additional attack speed to nearby friendly units."
    //! i end

    //*************************
    //***** Despair Aura ******
    //*************************
    //the button used for the buff/aura
    //! i DESP_AART = "PASHorrorSoul.blp"
    //the aura buff text
    //! i DESP_BUFF_FUBE = "This unit is under the effects of Despair Aura; it has a decreased attack speed."
    //the aura effect itself
    //! i DESP_ATAT = "Abilities\\Spells\\Undead\\RegenerationAura\\ObsidianRegenAura.mdl"
    //the name of the aura
    //! i DESP_ANAM = "Despair Aura"
    //the bonus for each level, a total of 6
    //! i DESP_LVL = {}
    //! i DESP_LVL[1] = "-0.05"
    //! i DESP_LVL[2] = "-0.10"
    //! i DESP_LVL[3] = "-0.15"
    //! i DESP_LVL[4] = "-0.25"
    //! i DESP_LVL[5] = "-0.35"
    //! i DESP_LVL[6] = "-0.55"
    //remove extra bonus
    //! i DESP_NULL = {}
    //! i DESP_NULL[1] = "0.0"
    //! i DESP_NULL[2] = "0.0"
    //! i DESP_NULL[3] = "0.0"
    //! i DESP_NULL[4] = "0.0"
    //! i DESP_NULL[5] = "0.0"
    //! i DESP_NULL[6] = "0.0"
    //the area of effect range for each level, a total of 6
    //! i DESP_AARE = {}
    //! i DESP_AARE[1] = "400.0"
    //! i DESP_AARE[2] = "450.0"
    //! i DESP_AARE[3] = "500.0"
    //! i DESP_AARE[4] = "600.0"
    //! i DESP_AARE[5] = "700.0"
    //! i DESP_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i DESP_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i DESP_ATP1 = {}
    //! i fill_arr(ALEV, DESP_ANAM .. HOTKEY_STR, "[|cffffcc00Level", DESP_ATP1)
    //tool tip (display quantity/effect)
    //! i DESP_AUB1 = {}
    //! i for i=1, ALEV do
        //! i DESP_AUB1[i] = "Reduces nearby enemy units' attack speed by " .. (DESP_LVL[i] * 100) .. "%."
    //! i end
    //*************************
    //***** Mist Aura *********
    //*************************
    //the button used for the buff/aura
    //! i MIST_AART = "ReplaceableTextures\\CommandButtons\\BTNCloudOfFog.blp"
    //the aura buff text
    //! i MIST_BUFF_FUBE = "This unit is under the effects of Mist Aura; it has a decreased movement speed."
    //the aura effect itself
    //! i MIST_ATAT = "MistAura.mdx"
    //the name of the aura
    //! i MIST_ANAM = "Mist Aura"
    //the bonus for each level, a total of 6
    //! i MIST_LVL = {}
    //! i MIST_LVL[1] = "-0.05"
    //! i MIST_LVL[2] = "-0.10"
    //! i MIST_LVL[3] = "-0.15"
    //! i MIST_LVL[4] = "-0.25"
    //! i MIST_LVL[5] = "-0.35"
    //! i MIST_LVL[6] = "-0.55"
    //remove extra bonus
    //! i MIST_NULL = {}
    //! i MIST_NULL[1] = "0.0"
    //! i MIST_NULL[2] = "0.0"
    //! i MIST_NULL[3] = "0.0"
    //! i MIST_NULL[4] = "0.0"
    //! i MIST_NULL[5] = "0.0"
    //! i MIST_NULL[6] = "0.0"
    //the area of effect range for each level, a total of 6
    //! i MIST_AARE = {}
    //! i MIST_AARE[1] = "400.0"
    //! i MIST_AARE[2] = "450.0"
    //! i MIST_AARE[3] = "500.0"
    //! i MIST_AARE[4] = "600.0"
    //! i MIST_AARE[5] = "700.0"
    //! i MIST_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i MIST_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i MIST_ATP1 = {}
    //! i fill_arr(ALEV, MIST_ANAM .. HOTKEY_STR, "[|cffffcc00Level", MIST_ATP1)
    //tool tip (display quantity/effect)
    //! i MIST_AUB1 = {}
    //! i for i=1, ALEV do
        //! i MIST_AUB1[i] = "Reduces nearby enemy units' movement speed by " .. (MIST_LVL[i] * 100) .. "%."
    //! i end
    //*************************
    //***** Glacial Presence **
    //*************************
    //the button used for the buff/aura
    //! i GLAC_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNFreezingBreath.blp"
    //the aura buff text
    //! i GLAC_BUFF_FUBE = "This unit is under the effects of Glacial Presence; it has a decreased movement and attack speed."
    //the aura effect itself
    //! i GLAC_ATAT = "war3mapimported\\GlaciarAura.mdx"
    //the name of the aura
    //! i GLAC_ANAM = "Glacial Presence"
    //the bonus for each level, a total of 6
    //! i GLAC_LVL = {}
    //! i GLAC_LVL[1] = "-0.07"
    //! i GLAC_LVL[2] = "-0.14"
    //! i GLAC_LVL[3] = "-0.21"
    //! i GLAC_LVL[4] = "-0.31"
    //! i GLAC_LVL[5] = "-0.41"
    //! i GLAC_LVL[6] = "-0.61"
    //remove extra bonus
    //! i GLAC_NULL = {}
    //! i GLAC_NULL[1] = "-0.07"
    //! i GLAC_NULL[2] = "-0.14"
    //! i GLAC_NULL[3] = "-0.21"
    //! i GLAC_NULL[4] = "-0.31"
    //! i GLAC_NULL[5] = "-0.41"
    //! i GLAC_NULL[6] = "-0.61"
    //the area of effect range for each level, a total of 6
    //! i GLAC_AARE = {}
    //! i GLAC_AARE[1] = "150.0"
    //! i GLAC_AARE[2] = "175.0"
    //! i GLAC_AARE[3] = "200.0"
    //! i GLAC_AARE[4] = "250.0"
    //! i GLAC_AARE[5] = "350.0"
    //! i GLAC_AARE[6] = "425.0"
    //targets allowed (e.g. ally, enemy)
    //! i GLAC_ATAR = "air,ground,enemy,friend,vuln,invu"
    //tool tip (display level)
    //! i GLAC_ATP1 = {}
    //! i fill_arr(ALEV, GLAC_ANAM .. HOTKEY_STR, "[|cffffcc00Level", GLAC_ATP1)
    //tool tip (display quantity/effect)
    //! i GLAC_AUB1 = {}
    //! i for i=1, ALEV do
        //! i GLAC_AUB1[i] = "Reduces nearby units' movement speed by " .. (GLAC_LVL[i] * 100) .. "% and attack speed by " .. (GLAC_NULL[i] * 100) .. "%."
    //! i end
    //*************************
    //***** Life Aura *********
    //*************************
    //the button used for the buff/aura
    //! i LIFE_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNRegenerate.blp"
    //the aura buff text
    //! i LIFE_BUFF_FUBE = "This unit is under the effects of Life Aura; it has an increased health regeneration."
    //the aura effect itself
    //! i LIFE_ATAT = "LifeAura.mdx"
    //the name of the aura
    //! i LIFE_ANAM = "Life Aura"
    //the bonus for each level, a total of 6
    //! i LIFE_LVL = {}
    //! i LIFE_LVL[1] = "0.20"
    //! i LIFE_LVL[2] = "0.40"
    //! i LIFE_LVL[3] = "0.60"
    //! i LIFE_LVL[4] = "0.90"
    //! i LIFE_LVL[5] = "1.30"
    //! i LIFE_LVL[6] = "1.80"
    //remove extra bonus
    //! i LIFE_NULL = {}
    //! i LIFE_NULL[1] = "0"
    //! i LIFE_NULL[2] = "0"
    //! i LIFE_NULL[3] = "0"
    //! i LIFE_NULL[4] = "0"
    //! i LIFE_NULL[5] = "0"
    //! i LIFE_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i LIFE_AARE = {}
    //! i LIFE_AARE[1] = "500.0"
    //! i LIFE_AARE[2] = "550.0"
    //! i LIFE_AARE[3] = "600.0"
    //! i LIFE_AARE[4] = "700.0"
    //! i LIFE_AARE[5] = "800.0"
    //! i LIFE_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i LIFE_ATAR = "air,ground,self,friend,vuln,invu"
    //tool tip (display level)
    //! i LIFE_ATP1 = {}
    //! i fill_arr(ALEV, LIFE_ANAM .. HOTKEY_STR, "[|cffffcc00Level", LIFE_ATP1)
    //tool tip (display quantity/effect)
    //! i LIFE_AUB1 = {}
    //! i for i=1, ALEV do
        //! i LIFE_AUB1[i] = "Gives " .. (LIFE_LVL[i] * 100) .. "% increased health regeneration to nearby friendly units."
    //! i end
    //*************************
    //***** Corruption Aura ***
    //*************************
    //the button used for the buff/aura
    //! i CORR_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNRegenerationAura.blp"
    //the aura buff text
    //! i CORR_BUFF_FUBE = "This unit is under the effects of Corruption Aura; it has a decreased health regeneration."
    //the aura effect itself
    //! i CORR_ATAT = "Abilities\\Spells\\Undead\\UnholyAura\\UnholyAura.mdl"
    //the name of the aura
    //! i CORR_ANAM = "Corruption Aura"
    //the bonus for each level, a total of 6
    //! i CORR_LVL = {}
    //! i CORR_LVL[1] = "-0.10"
    //! i CORR_LVL[2] = "-0.20"
    //! i CORR_LVL[3] = "-0.30"
    //! i CORR_LVL[4] = "-0.50"
    //! i CORR_LVL[5] = "-0.70"
    //! i CORR_LVL[6] = "-1.00"
    //remove extra bonus
    //! i CORR_NULL = {}
    //! i CORR_NULL[1] = "0"
    //! i CORR_NULL[2] = "0"
    //! i CORR_NULL[3] = "0"
    //! i CORR_NULL[4] = "0"
    //! i CORR_NULL[5] = "0"
    //! i CORR_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i CORR_AARE = {}
    //! i CORR_AARE[1] = "400.0"
    //! i CORR_AARE[2] = "450.0"
    //! i CORR_AARE[3] = "500.0"
    //! i CORR_AARE[4] = "600.0"
    //! i CORR_AARE[5] = "700.0"
    //! i CORR_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i CORR_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i CORR_ATP1 = {}
    //! i fill_arr(ALEV, CORR_ANAM .. HOTKEY_STR, "[|cffffcc00Level", CORR_ATP1)
    //tool tip (display quantity/effect)
    //! i CORR_AUB1 = {}
    //! i for i=1, ALEV do
        //! i CORR_AUB1[i] = "Gives " .. (CORR_LVL[i] * 100) .. "% decreased health regeneration to nearby enemy units."
    //! i end
    //*************************
    //***** Vampiric Aura *****
    //*************************
    //the button used for the buff/aura
    //! i VAMP_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNVampiricAura.blp"
    //the aura buff text
    //! i VAMP_BUFF_FUBE = "This unit is under the effects of Vampiric Aura; damage it deals to enemy units will restore hit points."
    //the aura effect itself
    //! i VAMP_ATAT = "Abilities\\Spells\\Undead\\VampiricAura\\VampiricAura.mdl"
    //the name of the aura
    //! i VAMP_ANAM = "Vampiric Aura"
    //the bonus for each level, a total of 6
    //! i VAMP_LVL = {}
    //! i VAMP_LVL[1] = "0.10"
    //! i VAMP_LVL[2] = "0.15"
    //! i VAMP_LVL[3] = "0.20"
    //! i VAMP_LVL[4] = "0.30"
    //! i VAMP_LVL[5] = "0.40"
    //! i VAMP_LVL[6] = "0.60"
    //remove extra bonus
    //! i VAMP_NULL = {}
    //! i VAMP_NULL[1] = "0"
    //! i VAMP_NULL[2] = "0"
    //! i VAMP_NULL[3] = "0"
    //! i VAMP_NULL[4] = "0"
    //! i VAMP_NULL[5] = "0"
    //! i VAMP_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i VAMP_AARE = {}
    //! i VAMP_AARE[1] = "500.0"
    //! i VAMP_AARE[2] = "550.0"
    //! i VAMP_AARE[3] = "600.0"
    //! i VAMP_AARE[4] = "700.0"
    //! i VAMP_AARE[5] = "800.0"
    //! i VAMP_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i VAMP_ATAR = "air,ground,self,friend,vuln,invu"
    //tool tip (display level)
    //! i VAMP_ATP1 = {}
    //! i fill_arr(ALEV, VAMP_ANAM .. HOTKEY_STR, "[|cffffcc00Level", VAMP_ATP1)
    //tool tip (display quantity/effect)
    //! i VAMP_AUB1 = {}
    //! i for i=1, ALEV do
        //! i VAMP_AUB1[i] = "Nearby friendly melee units gain " .. (VAMP_LVL[i] * 100) .. "% of their attack damage when they hit enemy units"
    //! i end
    //*************************
    //***** Reflection Aura ***
    //*************************
    //the button used for the buff/aura
    //! i REFL_AART = "PASReflect.blp"
    //the aura buff text
    //! i REFL_BUFF_FUBE = "This unit is under the effects of Reflection Aura; melee units that attack it will take damage."
    //the aura effect itself
    //! i REFL_ATAT = "war3mapImported\\Runical-Holy_Aura.mdx"
    //the name of the aura
    //! i REFL_ANAM = "Reflection Aura"
    //the bonus for each level, a total of 6
    //! i REFL_LVL = {}
    //! i REFL_LVL[1] = "0.05"
    //! i REFL_LVL[2] = "0.07"
    //! i REFL_LVL[3] = "0.09"
    //! i REFL_LVL[4] = "0.12"
    //! i REFL_LVL[5] = "0.15"
    //! i REFL_LVL[6] = "0.20"
    //remove extra bonus
    //! i REFL_NULL = {}
    //! i REFL_NULL[1] = "0"
    //! i REFL_NULL[2] = "0"
    //! i REFL_NULL[3] = "0"
    //! i REFL_NULL[4] = "0"
    //! i REFL_NULL[5] = "0"
    //! i REFL_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i REFL_AARE = {}
    //! i REFL_AARE[1] = "500.0"
    //! i REFL_AARE[2] = "550.0"
    //! i REFL_AARE[3] = "600.0"
    //! i REFL_AARE[4] = "700.0"
    //! i REFL_AARE[5] = "800.0"
    //! i REFL_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i REFL_ATAR = "air,ground,self,friend,vuln,invu"
    //tool tip (display level)
    //! i REFL_ATP1 = {}
    //! i fill_arr(ALEV, REFL_ANAM .. HOTKEY_STR, "[|cffffcc00Level", REFL_ATP1)
    //tool tip (display quantity/effect)
    //! i REFL_AUB1 = {}
    //! i for i=1, ALEV do
        //! i REFL_AUB1[i] = "An aura that gives friendly nearby units a damage shield, which deals " .. (REFL_LVL[i] * 100) .. "% of an enemy unit's melee attack damage back to it."
    //! i end
    //*************************
    //***** Thorns Aura *******
    //*************************
    //the button used for the buff/aura
    //! i THRN_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNThorns.blp"
    //the aura buff text
    //! i THRN_BUFF_FUBE = "This unit is under the effects of Thorns Aura; melee units that attack it will do increased damage."
    //the aura effect itself
    //! i THRN_ATAT = "Abilities\\Spells\\NightElf\\ThornsAura\\ThornsAura.mdl"
    //the name of the aura
    //! i THRN_ANAM = "Thorns Aura"
    //the bonus for each level, a total of 6
    //! i THRN_LVL = {}
    //! i THRN_LVL[1] = "-0.02"
    //! i THRN_LVL[2] = "-0.04"
    //! i THRN_LVL[3] = "-0.06"
    //! i THRN_LVL[4] = "-0.09"
    //! i THRN_LVL[5] = "-0.12"
    //! i THRN_LVL[6] = "-0.16"
    //remove extra bonus
    //! i THRN_NULL = {}
    //! i THRN_NULL[1] = "0"
    //! i THRN_NULL[2] = "0"
    //! i THRN_NULL[3] = "0"
    //! i THRN_NULL[4] = "0"
    //! i THRN_NULL[5] = "0"
    //! i THRN_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i THRN_AARE = {}
    //! i THRN_AARE[1] = "400.0"
    //! i THRN_AARE[2] = "450.0"
    //! i THRN_AARE[3] = "500.0"
    //! i THRN_AARE[4] = "600.0"
    //! i THRN_AARE[5] = "700.0"
    //! i THRN_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i THRN_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i THRN_ATP1 = {}
    //! i fill_arr(ALEV, THRN_ANAM .. HOTKEY_STR, "[|cffffcc00Level", THRN_ATP1)
    //tool tip (display quantity/effect)
    //! i THRN_AUB1 = {}
    //! i for i=1, ALEV do
        //! i THRN_AUB1[i] = "An aura that gives nearby enemy units a damaging shield, which deals " .. (THRN_LVL[i] * 100) .. "% of a friendly unit's melee attack damage."
    //! i end
    //*************************
    //***** Trueshot Aura *****
    //*************************
    //the button used for the buff/aura
    //! i TRUE_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNTrueShot.blp"
    //the aura buff text
    //! i TRUE_BUFF_FUBE = "This unit is under the effects of Trueshot Aura; its ranged attacks will deal more damage."
    //the aura effect itself
    //! i TRUE_ATAT = "Abilities\\Spells\\NightElf\\TrueshotAura\\TrueshotAura.mdl"
    //the name of the aura
    //! i TRUE_ANAM = "Trueshot Aura"
    //the bonus for each level, a total of 6
    //! i TRUE_LVL = {}
    //! i TRUE_LVL[1] = "0.10"
    //! i TRUE_LVL[2] = "0.20"
    //! i TRUE_LVL[3] = "0.30"
    //! i TRUE_LVL[4] = "0.50"
    //! i TRUE_LVL[5] = "0.70"
    //! i TRUE_LVL[6] = "1.00"
    //remove extra bonus
    //! i TRUE_NULL = {}
    //! i TRUE_NULL[1] = "0"
    //! i TRUE_NULL[2] = "0"
    //! i TRUE_NULL[3] = "0"
    //! i TRUE_NULL[4] = "0"
    //! i TRUE_NULL[5] = "0"
    //! i TRUE_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i TRUE_AARE = {}
    //! i TRUE_AARE[1] = "500.0"
    //! i TRUE_AARE[2] = "550.0"
    //! i TRUE_AARE[3] = "600.0"
    //! i TRUE_AARE[4] = "700.0"
    //! i TRUE_AARE[5] = "800.0"
    //! i TRUE_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i TRUE_ATAR = "air,ground,self,friend,vuln,invu"
    //tool tip (display level)
    //! i TRUE_ATP1 = {}
    //! i fill_arr(ALEV, TRUE_ANAM .. HOTKEY_STR, "[|cffffcc00Level", TRUE_ATP1)
    //tool tip (display quantity/effect)
    //! i TRUE_AUB1 = {}
    //! i for i=1, ALEV do
        //! i TRUE_AUB1[i] = "An aura that gives nearby friendly units a " .. (TRUE_LVL[i] * 100) .. "% bonus damage to their ranged attacks."
    //! i end
    //*************************
    //***** Command Aura ******
    //*************************
    //the button used for the buff/aura
    //! i CMND_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNGnollCommandAura.blp"
    //the aura buff text
    //! i CMND_BUFF_FUBE = "This unit is under the effects of Command Aura; it has increased attack damage."
    //the aura effect itself
    //! i CMND_ATAT = "Abilities\\Spells\\Orc\\WarDrums\\DrumsCasterHeal.mdl"
    //the name of the aura
    //! i CMND_ANAM = "Command Aura"
    //the bonus for each level, a total of 6
    //! i CMND_LVL = {}
    //! i CMND_LVL[1] = "0.05"
    //! i CMND_LVL[2] = "0.10"
    //! i CMND_LVL[3] = "0.15"
    //! i CMND_LVL[4] = "0.25"
    //! i CMND_LVL[5] = "0.35"
    //! i CMND_LVL[6] = "0.60"
    //remove extra bonus
    //! i CMND_NULL = {}
    //! i CMND_NULL[1] = "0"
    //! i CMND_NULL[2] = "0"
    //! i CMND_NULL[3] = "0"
    //! i CMND_NULL[4] = "0"
    //! i CMND_NULL[5] = "0"
    //! i CMND_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i CMND_AARE = {}
    //! i CMND_AARE[1] = "500.0"
    //! i CMND_AARE[2] = "550.0"
    //! i CMND_AARE[3] = "600.0"
    //! i CMND_AARE[4] = "700.0"
    //! i CMND_AARE[5] = "800.0"
    //! i CMND_AARE[6] = "1000.0"
    //targets allowed (e.g. ally, enemy)
    //! i CMND_ATAR = "air,ground,self,friend,vuln,invu"
    //tool tip (display level)
    //! i CMND_ATP1 = {}
    //! i fill_arr(ALEV, CMND_ANAM .. HOTKEY_STR, "[|cffffcc00Level", CMND_ATP1)
    //tool tip (display quantity/effect)
    //! i CMND_AUB1 = {}
    //! i for i=1, ALEV do
        //! i CMND_AUB1[i] = "An aura that gives nearby friendly units a " .. (CMND_LVL[i] * 100) .. "% bonus damage to their attacks."
    //! i end
    //*************************
    //***** Fear Aura *********
    //*************************
    //the button used for the buff/aura
    //! i FEAR_AART = "ReplaceableTextures\\PassiveButtons\\PASBTNUnholyAura.blp"
    //the aura buff text
    //! i FEAR_BUFF_FUBE = "This unit is under the effects of Fear Aura; it has decreased attack damage."
    //the aura effect itself
    //! i FEAR_ATAT = "Abilities\\Spells\\Undead\\UnholyAura\\UnholyAura.mdl"
    //the name of the aura
    //! i FEAR_ANAM = "Fear Aura"
    //the bonus for each level, a total of 6
    //! i FEAR_LVL = {}
    //! i FEAR_LVL[1] = "-0.05"
    //! i FEAR_LVL[2] = "-0.10"
    //! i FEAR_LVL[3] = "-0.15"
    //! i FEAR_LVL[4] = "-0.25"
    //! i FEAR_LVL[5] = "-0.35"
    //! i FEAR_LVL[6] = "-0.60"
    //remove extra bonus
    //! i FEAR_NULL = {}
    //! i FEAR_NULL[1] = "0"
    //! i FEAR_NULL[2] = "0"
    //! i FEAR_NULL[3] = "0"
    //! i FEAR_NULL[4] = "0"
    //! i FEAR_NULL[5] = "0"
    //! i FEAR_NULL[6] = "0"
    //the area of effect range for each level, a total of 6
    //! i FEAR_AARE = {}
    //! i FEAR_AARE[1] = "400.0"
    //! i FEAR_AARE[2] = "450.0"
    //! i FEAR_AARE[3] = "500.0"
    //! i FEAR_AARE[4] = "600.0"
    //! i FEAR_AARE[5] = "700.0"
    //! i FEAR_AARE[6] = "900.0"
    //targets allowed (e.g. ally, enemy)
    //! i FEAR_ATAR = "air,ground,enemy,vuln,invu"
    //tool tip (display level)
    //! i FEAR_ATP1 = {}
    //! i fill_arr(ALEV, FEAR_ANAM .. HOTKEY_STR, "[|cffffcc00Level", FEAR_ATP1)
    //tool tip (display quantity/effect)
    //! i FEAR_AUB1 = {}
    //! i for i=1, ALEV do
        //! i FEAR_AUB1[i] = "An aura that reduces nearby enemy units' damage by " .. (FEAR_LVL[i] * 100) .. "%."
    //! i end
    //************************************
    //*********** Devotion Aura ********** 
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(DEVOTION_BUFF_ID, buff_id)
    //! i makechange(current, "fart", DEVO_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", DEVO_ANAM)
    //! i makechange(current, "fube", DEVO_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(DEVOTION_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //armor bonus per lvl
    //! i write_fieldArr(ALEV, "Had1", DEVO_LVL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", DEVO_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", DEVO_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", DEVO_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", DEVO_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DEVO_ANAM, upoi)
    //************************************
    //*********** Shattering Aura ********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(DEVOTION_BUFF_ID, buff_id)
    //! i makechange(current, "fart", SHAT_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", SHAT_ANAM)
    //! i makechange(current, "fube", SHAT_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(DEVOTION_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", SHAT_AART)
    //! i makechange(current, "atat", SHAT_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", SHAT_ANAM)
    //armor bonus per lvl
    //! i write_fieldArr(ALEV, "Had1", SHAT_LVL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", SHAT_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", SHAT_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", SHAT_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", SHAT_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, SHAT_ANAM, upoi)
    //************************************
    //*********** Brilliance Aura ******** 
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(BRIL_BUFF_ID, buff_id)
    //! i makechange(current, "fart", BRIL_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", BRIL_ANAM)
    //! i makechange(current, "fube", BRIL_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(BRIL_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", BRIL_ANAM)
    //armor bonus per lvl
    //! i write_fieldArr(ALEV, "Hab1", BRIL_LVL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", BRIL_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", BRIL_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", BRIL_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", BRIL_AUB1)    
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, BRIL_ANAM, upoi)
    //************************************
    //*********** Darkness Aura **********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(BRIL_BUFF_ID, buff_id)
    //! i makechange(current, "fart", DARK_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", DARK_ANAM)
    //! i makechange(current, "fube", DARK_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(BRIL_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", DARK_AART)
    //! i makechange(current, "atat", DARK_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", DARK_ANAM)
    //armor bonus per lvl
    //! i write_fieldArr(ALEV, "Hab1", DARK_LVL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", DARK_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", DARK_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", DARK_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", DARK_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DARK_ANAM, upoi)
    //************************************
    //*********** Haste Aura *************
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(EDUR_BUFF_ID, buff_id)
    //! i makechange(current, "fart", EDUR_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", EDUR_ANAM)
    //! i makechange(current, "fube", EDUR_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(EDUR_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", EDUR_AART)
    //! i makechange(current, "atat", EDUR_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", EDUR_ANAM)
    //! i makechange(current, "arac", ARAC)
    //ms bonus per lvl
    //! i write_fieldArr(ALEV, "Oae1", EDUR_LVL)
    //remove attack speed bonus
    //! i write_fieldArr(ALEV, "Oae2", EDUR_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", EDUR_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", EDUR_ATAR)
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
    //************************************
    //*********** Zeal Aura **************
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(EDUR_BUFF_ID, buff_id)
    //! i makechange(current, "fart", ZEAL_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", ZEAL_ANAM)
    //! i makechange(current, "fube", ZEAL_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(EDUR_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", ZEAL_AART)
    //! i makechange(current, "atat", ZEAL_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", ZEAL_ANAM)
    //! i makechange(current, "arac", ARAC)
    //ms bonus per lvl
    //! i write_fieldArr(ALEV, "Oae2", ZEAL_LVL)
    //remove attack speed bonus
    //! i write_fieldArr(ALEV, "Oae1", ZEAL_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", ZEAL_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", ZEAL_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", ZEAL_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", ZEAL_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, ZEAL_ANAM, upoi)
    //************************************
    //*********** Despair Aura ***********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(EDUR_BUFF_ID, buff_id)
    //! i makechange(current, "fart", DESP_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", DESP_ANAM)
    //! i makechange(current, "fube", DESP_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(EDUR_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", DESP_AART)
    //! i makechange(current, "atat", DESP_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", DESP_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Oae2", DESP_LVL)
    //remove bonus
    //! i write_fieldArr(ALEV, "Oae1", DESP_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", DESP_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", DESP_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", DESP_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", DESP_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, DESP_ANAM, upoi)
    //************************************
    //*********** Mist Aura **************
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(EDUR_BUFF_ID, buff_id)
    //! i makechange(current, "fart", MIST_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", MIST_ANAM)
    //! i makechange(current, "fube", MIST_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(EDUR_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", MIST_AART)
    //! i makechange(current, "atat", MIST_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", MIST_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Oae1", MIST_LVL)
    //remove bonus
    //! i write_fieldArr(ALEV, "Oae2", MIST_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", MIST_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", MIST_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", MIST_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", MIST_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, MIST_ANAM, upoi)
    //************************************
    //*********** Glacial Presence *******
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(EDUR_BUFF_ID, buff_id)
    //! i makechange(current, "fart", GLAC_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", GLAC_ANAM)
    //! i makechange(current, "fube", GLAC_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(EDUR_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", GLAC_AART)
    //! i makechange(current, "atat", GLAC_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", GLAC_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Oae2", GLAC_LVL)
    //remove bonus
    //! i write_fieldArr(ALEV, "Oae1", GLAC_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", GLAC_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", GLAC_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", GLAC_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", GLAC_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, GLAC_ANAM, upoi)
    //************************************
    //*********** Life Aura **************
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(UNHO_BUFF_ID, buff_id)
    //! i makechange(current, "fart", LIFE_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", LIFE_ANAM)
    //! i makechange(current, "fube", LIFE_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(UNHO_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", LIFE_AART)
    //! i makechange(current, "atat", LIFE_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", LIFE_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Uau2", LIFE_LVL)
    //remove bonus
    //! i write_fieldArr(ALEV, "Uau1", LIFE_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", LIFE_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", LIFE_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", LIFE_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", LIFE_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, LIFE_ANAM, upoi)
    //************************************
    //*********** Corruption Aura ********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(UNHO_BUFF_ID, buff_id)
    //! i makechange(current, "fart", CORR_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", CORR_ANAM)
    //! i makechange(current, "fube", CORR_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(UNHO_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", CORR_AART)
    //! i makechange(current, "atat", CORR_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", CORR_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Uau2", CORR_LVL)
    //remove bonus
    //! i write_fieldArr(ALEV, "Uau1", CORR_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", CORR_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", CORR_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", CORR_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", CORR_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CORR_ANAM, upoi)
    //************************************
    //*********** Vampiric Aura **********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(VAMP_BUFF_ID, buff_id)
    //! i makechange(current, "fart", VAMP_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", VAMP_ANAM)
    //! i makechange(current, "fube", VAMP_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(VAMP_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", VAMP_AART)
    //! i makechange(current, "atat", VAMP_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", VAMP_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Uav1", VAMP_LVL)
    //remove bonus
    ////! i write_fieldArr(ALEV, "Uau1", VAMP_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", VAMP_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", VAMP_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", VAMP_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", VAMP_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, VAMP_ANAM, upoi)
    //************************************
    //*********** Reflection Aura ********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(THRN_BUFF_ID, buff_id)
    //! i makechange(current, "fart", REFL_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", REFL_ANAM)
    //! i makechange(current, "fube", REFL_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(THRN_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", REFL_AART)
    //! i makechange(current, "atat", REFL_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", REFL_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Eah1", REFL_LVL)
    //remove bonus
    ////! i write_fieldArr(ALEV, "Uau1", REFL_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", REFL_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", REFL_ATAR)
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
    //************************************
    //*********** Thorns Aura ************
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(THRN_BUFF_ID, buff_id)
    //! i makechange(current, "fart", THRN_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", THRN_ANAM)
    //! i makechange(current, "fube", THRN_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(THRN_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", THRN_AART)
    //! i makechange(current, "atat", THRN_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", THRN_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Eah1", THRN_LVL)
    //remove bonus
    ////! i write_fieldArr(ALEV, "Uau1", THRN_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", THRN_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", THRN_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", THRN_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", THRN_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, THRN_ANAM, upoi)
    //************************************
    //*********** Trueshot Aura **********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(TRUE_BUFF_ID, buff_id)
    //! i makechange(current, "fart", TRUE_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", TRUE_ANAM)
    //! i makechange(current, "fube", TRUE_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(TRUE_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", TRUE_AART)
    //! i makechange(current, "atat", TRUE_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", TRUE_ANAM)
    //! i makechange(current, "arac", ARAC)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Ear1", TRUE_LVL)
    //remove bonus
    ////! i write_fieldArr(ALEV, "Uau1", TRUE_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", TRUE_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", TRUE_ATAR)
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
    //************************************
    //*********** Command Aura ***********
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(CMND_BUFF_ID, buff_id)
    //! i makechange(current, "fart", CMND_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", CMND_ANAM)
    //! i makechange(current, "fube", CMND_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(CMND_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", CMND_AART)
    //! i makechange(current, "atat", CMND_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", CMND_ANAM)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "aher", AHER)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Cac1", CMND_LVL)
    //remove bonus
    ////! i write_fieldArr(ALEV, "Uau1", CMND_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", CMND_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", CMND_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", CMND_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", CMND_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, CMND_ANAM, upoi)
    //************************************
    //*********** Fear Aura **************
    //************************************
    //buff
    //! i setobjecttype("buffs")
    //! i buff_id = make_id(CUSTOM_BUFF_ID, upoi)
    //! i createobject(CMND_BUFF_ID, buff_id)
    //! i makechange(current, "fart", FEAR_AART)
    //! i makechange(current, "frac", ARAC)
    //! i makechange(current, "ftip", FEAR_ANAM)
    //! i makechange(current, "fube", FEAR_BUFF_FUBE)
    //the aura
    //! i setobjecttype("abilities")
    //! i createobject(CMND_AURA_ID, make_id(CUSTOM_ID, upoi))
    //! i makechange(current, "aart", FEAR_AART)
    //! i makechange(current, "atat", FEAR_ATAT)
    //! i makechange(current, "alev", ALEV)
    //! i makechange(current, "anam", FEAR_ANAM)
    //! i makechange(current, "arac", ARAC)
    //! i makechange(current, "aher", AHER)
    //bonus per lvl
    //! i write_fieldArr(ALEV, "Cac1", FEAR_LVL)
    //remove bonus
    ////! i write_fieldArr(ALEV, "Uau1", FEAR_NULL)
    //range of aura per lvl
    //! i write_fieldArr(ALEV, "aare", FEAR_AARE)
    //the aura buff
    //! i write_fieldVar(ALEV, "abuf", "" .. buff_id)
    //targets
    //! i write_fieldVar(ALEV, "atar", FEAR_ATAR)
    //atp1
    //! i write_fieldArr(ALEV, "atp1", FEAR_ATP1)
    //aub1
    //! i write_fieldArr(ALEV, "aub1", FEAR_AUB1)
    //! i base_id = make_id(CUSTOM_ID, upoi)
    //! i makechange(current, "abpx", ABPX_Q)
    //! i makechange(current, "abpy", ABPY_Q)
    //! i makechange(current, "aubx", ABPX_Q)
    //! i makechange(current, "auby", ABPY_Q)
    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", HOTKEY)
    //! i makechange(current, "auhk", HOTKEY)
    //make the 4 copies now: W, E, R, T
    //! i upoi = copy_abil(base_id, FEAR_ANAM, upoi)
//! endexternalblock
