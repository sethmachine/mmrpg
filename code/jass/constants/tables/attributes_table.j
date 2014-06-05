library Attributes initializer init requires ClearItems

globals
    //number of attributes
    constant integer MAX_ATTRIBUTES = 8
    constant integer ATTRIBUTE_ABILITY_LVLS = 7
    constant integer MAX_AGI_LVLS = 7
    constant integer MAX_MANA_LVLS = 10
    constant integer MAX_HEALTH_LVLS = 16
    constant integer MAX_HEALTH_TOMES = 50
    constant integer MAX_DAMAGE_TOMES = 98
    //consistent indices for attributes
    constant integer DEF = 0
    constant integer INT = 1
    constant integer STR = 2
    constant integer ATT = 3
    constant integer AGI = 4
    constant integer HP = 5
    constant integer MANA = 6
    constant integer SP = 7
    constant integer array healthTomes[MAX_HEALTH_TOMES]
    constant integer array damageTomes[MAX_DAMAGE_TOMES]
    constant integer DAMAGE_TOME = 'ID00'
    constant integer SPELL_RESIST = 'AS00'
    //ratios of attribute points to 1 point in the actual attribute
    integer array attrRatio[MAX_ATTRIBUTES] //stores ratios of each attribute
    //maximum pts per attribute array
    integer array attrMaxPts[MAX_ATTRIBUTES] //stores max values of each attribute
    //attribute abilities array - for attack speed, mana, and spell resistance
    integer array attackSpeed[ATTRIBUTE_ABILITY_LVLS]
    integer array agiPts[MAX_AGI_LVLS]
    integer array manaPts[MAX_MANA_LVLS]
    integer array healthPts[MAX_HEALTH_LVLS]
endglobals

//some function of an IV that determines its contribution to level up
function IVFunction takes integer statIV returns integer
    return statIV
endfunction

//calculates the stat increase based on a given statIV, and its [min,max] range per level
function calcStatIncrease takes integer statIV, integer statMin, integer statMax returns integer
    return IVFunction(statIV) + GetRandomInt(statMin, statMax)
endfunction

//calculates the highest power of 2 which is below the given value
//a returnType of true returns the actual value rather than the power
function binaryIndex takes integer value, boolean returnType returns integer
    local integer i = 1
    local integer j = 0
    loop
        set i = i * 2
        if i > value then
            if returnType then
                return i / 2
            else
                return j
            endif
        endif
        set j = j + 1
    endloop
    return -1
endfunction

private function init takes nothing returns nothing
    //initialize the values in the attributeRatio table
    set attrRatio[DEF] = 10
    set attrRatio[INT] = 10
    set attrRatio[STR] = 10
    set attrRatio[ATT] = 10
    set attrRatio[AGI] = 10
    set attrRatio[HP] = 1
    set attrRatio[MANA] = 1
    set attrRatio[SP] = 10
    //initialize the values in the attributeMax table
    set attrMaxPts[DEF] = 1000
    set attrMaxPts[INT] = 1000
    set attrMaxPts[STR] = 1000
    set attrMaxPts[ATT] = 1000
    set attrMaxPts[AGI] = 10000
    set attrMaxPts[HP] = 1000
    set attrMaxPts[MANA] = 1000
    set attrMaxPts[SP] = 1000
    //attack speed
    set attackSpeed[0] = 'AA00'
    set attackSpeed[1] = 'AA01'
    set attackSpeed[2] = 'AA02'
    set attackSpeed[3] = 'AA03'
    set attackSpeed[4] = 'AA04'
    set attackSpeed[5] = 'AA05'
    set attackSpeed[6] = 'AA06'
    //attack speed
    set agiPts[0] = 'AA00'
    set agiPts[1] = 'AA01'
    set agiPts[2] = 'AA02'
    set agiPts[3] = 'AA03'
    set agiPts[4] = 'AA04'
    set agiPts[5] = 'AA05'
    set agiPts[6] = 'AA06'
    //mana
    set manaPts[0] = 'AM00'
    set manaPts[1] = 'AM01'
    set manaPts[2] = 'AM02'
    set manaPts[3] = 'AM03'
    set manaPts[4] = 'AM04'
    set manaPts[5] = 'AM05'
    set manaPts[6] = 'AM06'
    set manaPts[7] = 'AM07'
    set manaPts[8] = 'AM08'
    set manaPts[9] = 'AM09'
    //health
    set healthPts[0] = 'H000'
    set healthPts[1] = 'H001'
    set healthPts[2] = 'H002'
    set healthPts[3] = 'H003'
    set healthPts[4] = 'H004'
    set healthPts[5] = 'H005'
    set healthPts[6] = 'H006'
    set healthPts[7] = 'H007'
    set healthPts[8] = 'H008'
    set healthPts[9] = 'H009'
    set healthPts[10] = 'H010'
    set healthPts[11] = 'H011'
    set healthPts[12] = 'H012'
    set healthPts[13] = 'H013'
    set healthPts[14] = 'H014'
    set healthPts[15] = 'H015'
    //health tomes
	set healthTomes[0] = 'IH00'
	set healthTomes[1] = 'IH01'
	set healthTomes[2] = 'IH02'
	set healthTomes[3] = 'IH03'
	set healthTomes[4] = 'IH04'
	set healthTomes[5] = 'IH05'
	set healthTomes[6] = 'IH06'
	set healthTomes[7] = 'IH07'
	set healthTomes[8] = 'IH08'
	set healthTomes[9] = 'IH09'
	set healthTomes[10] = 'IH10'
	set healthTomes[11] = 'IH11'
	set healthTomes[12] = 'IH12'
	set healthTomes[13] = 'IH13'
	set healthTomes[14] = 'IH14'
	set healthTomes[15] = 'IH15'
	set healthTomes[16] = 'IH16'
	set healthTomes[17] = 'IH17'
	set healthTomes[18] = 'IH18'
	set healthTomes[19] = 'IH19'
	set healthTomes[20] = 'IH20'
	set healthTomes[21] = 'IH21'
	set healthTomes[22] = 'IH22'
	set healthTomes[23] = 'IH23'
	set healthTomes[24] = 'IH24'
	set healthTomes[25] = 'IH25'
	set healthTomes[26] = 'IH26'
	set healthTomes[27] = 'IH27'
	set healthTomes[28] = 'IH28'
	set healthTomes[29] = 'IH29'
	set healthTomes[30] = 'IH30'
	set healthTomes[31] = 'IH31'
	set healthTomes[32] = 'IH32'
	set healthTomes[33] = 'IH33'
	set healthTomes[34] = 'IH34'
	set healthTomes[35] = 'IH35'
	set healthTomes[36] = 'IH36'
	set healthTomes[37] = 'IH37'
	set healthTomes[38] = 'IH38'
	set healthTomes[39] = 'IH39'
	set healthTomes[40] = 'IH40'
	set healthTomes[41] = 'IH41'
	set healthTomes[42] = 'IH42'
	set healthTomes[43] = 'IH43'
	set healthTomes[44] = 'IH44'
	set healthTomes[45] = 'IH45'
	set healthTomes[46] = 'IH46'
	set healthTomes[47] = 'IH47'
	set healthTomes[48] = 'IH48'
	set healthTomes[49] = 'IH49'
	set healthTomes[50] = 'IH50'
    //damage tomes
	set damageTomes[0] = 'ID00'
	set damageTomes[1] = 'ID01'
	set damageTomes[2] = 'ID02'
	set damageTomes[3] = 'ID03'
	set damageTomes[4] = 'ID04'
	set damageTomes[5] = 'ID05'
	set damageTomes[6] = 'ID06'
	set damageTomes[7] = 'ID07'
	set damageTomes[8] = 'ID08'
	set damageTomes[9] = 'ID09'
	set damageTomes[10] = 'ID10'
	set damageTomes[11] = 'ID11'
	set damageTomes[12] = 'ID12'
	set damageTomes[13] = 'ID13'
	set damageTomes[14] = 'ID14'
	set damageTomes[15] = 'ID15'
	set damageTomes[16] = 'ID16'
	set damageTomes[17] = 'ID17'
	set damageTomes[18] = 'ID18'
	set damageTomes[19] = 'ID19'
	set damageTomes[20] = 'ID20'
	set damageTomes[21] = 'ID21'
	set damageTomes[22] = 'ID22'
	set damageTomes[23] = 'ID23'
	set damageTomes[24] = 'ID24'
	set damageTomes[25] = 'ID25'
	set damageTomes[26] = 'ID26'
	set damageTomes[27] = 'ID27'
	set damageTomes[28] = 'ID28'
	set damageTomes[29] = 'ID29'
	set damageTomes[30] = 'ID30'
	set damageTomes[31] = 'ID31'
	set damageTomes[32] = 'ID32'
	set damageTomes[33] = 'ID33'
	set damageTomes[34] = 'ID34'
	set damageTomes[35] = 'ID35'
	set damageTomes[36] = 'ID36'
	set damageTomes[37] = 'ID37'
	set damageTomes[38] = 'ID38'
	set damageTomes[39] = 'ID39'
	set damageTomes[40] = 'ID40'
	set damageTomes[41] = 'ID41'
	set damageTomes[42] = 'ID42'
	set damageTomes[43] = 'ID43'
	set damageTomes[44] = 'ID44'
	set damageTomes[45] = 'ID45'
	set damageTomes[46] = 'ID46'
	set damageTomes[47] = 'ID47'
	set damageTomes[48] = 'ID48'
	set damageTomes[49] = 'ID49'
	set damageTomes[50] = 'ID50'
	set damageTomes[51] = 'ID51'
	set damageTomes[52] = 'ID52'
	set damageTomes[53] = 'ID53'
	set damageTomes[54] = 'ID54'
	set damageTomes[55] = 'ID55'
	set damageTomes[56] = 'ID56'
	set damageTomes[57] = 'ID57'
	set damageTomes[58] = 'ID58'
	set damageTomes[59] = 'ID59'
	set damageTomes[60] = 'ID60'
	set damageTomes[61] = 'ID61'
	set damageTomes[62] = 'ID62'
	set damageTomes[63] = 'ID63'
	set damageTomes[64] = 'ID64'
	set damageTomes[65] = 'ID65'
	set damageTomes[66] = 'ID66'
	set damageTomes[67] = 'ID67'
	set damageTomes[68] = 'ID68'
	set damageTomes[69] = 'ID69'
	set damageTomes[70] = 'ID70'
	set damageTomes[71] = 'ID71'
	set damageTomes[72] = 'ID72'
	set damageTomes[73] = 'ID73'
	set damageTomes[74] = 'ID74'
	set damageTomes[75] = 'ID75'
	set damageTomes[76] = 'ID76'
	set damageTomes[77] = 'ID77'
	set damageTomes[78] = 'ID78'
	set damageTomes[79] = 'ID79'
	set damageTomes[80] = 'ID80'
	set damageTomes[81] = 'ID81'
	set damageTomes[82] = 'ID82'
	set damageTomes[83] = 'ID83'
	set damageTomes[84] = 'ID84'
	set damageTomes[85] = 'ID85'
	set damageTomes[86] = 'ID86'
	set damageTomes[87] = 'ID87'
	set damageTomes[88] = 'ID88'
	set damageTomes[89] = 'ID89'
	set damageTomes[90] = 'ID90'
	set damageTomes[91] = 'ID91'
	set damageTomes[92] = 'ID92'
	set damageTomes[93] = 'ID93'
	set damageTomes[94] = 'ID94'
	set damageTomes[95] = 'ID95'
	set damageTomes[96] = 'ID96'
	set damageTomes[97] = 'ID97'
endfunction

endlibrary