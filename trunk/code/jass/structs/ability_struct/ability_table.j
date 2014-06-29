library AbilityTable initializer initTable requires AbilityStruct, AbilityIds

globals
    constant integer TOTAL_ABILITIES = 150 //number of unique abilities of all kinds
    Ability array abilityTable
endglobals

private function initTable takes nothing returns nothing
    local Ability ab
	//**********************************************
	//*************** Devotion Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa00', 'Aa01', 'Aa02', 'Aa03', 'Aa04')
	set abilityTable[DEVOTION_AURA] = ab
	//**********************************************
	//*************** Shattering Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa05', 'Aa06', 'Aa07', 'Aa08', 'Aa09')
	set abilityTable[SHATTERING_AURA] = ab
	//**********************************************
	//*************** Brilliance Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa10', 'Aa11', 'Aa12', 'Aa13', 'Aa14')
	set abilityTable[BRILLIANCE_AURA] = ab
	//**********************************************
	//*************** Darkness Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa15', 'Aa16', 'Aa17', 'Aa18', 'Aa19')
	set abilityTable[DARKNESS_AURA] = ab
	//**********************************************
	//*************** Haste Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa20', 'Aa21', 'Aa22', 'Aa23', 'Aa24')
	set abilityTable[HASTE_AURA] = ab
	//**********************************************
	//*************** Zeal Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa25', 'Aa26', 'Aa27', 'Aa28', 'Aa29')
	set abilityTable[ZEAL_AURA] = ab
	//**********************************************
	//*************** Despair Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa30', 'Aa31', 'Aa32', 'Aa33', 'Aa34')
	set abilityTable[DESPAIR_AURA] = ab
	//**********************************************
	//*************** Mist Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa35', 'Aa36', 'Aa37', 'Aa38', 'Aa39')
	set abilityTable[MIST_AURA] = ab
	//**********************************************
	//*************** Glacial Presence
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa40', 'Aa41', 'Aa42', 'Aa43', 'Aa44')
	set abilityTable[GLACIAL_PRESENCE] = ab
	//**********************************************
	//*************** Life Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa45', 'Aa46', 'Aa47', 'Aa48', 'Aa49')
	set abilityTable[LIFE_AURA] = ab
	//**********************************************
	//*************** Corruption Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa50', 'Aa51', 'Aa52', 'Aa53', 'Aa54')
	set abilityTable[CORRUPTION_AURA] = ab
	//**********************************************
	//*************** Vampiric Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa55', 'Aa56', 'Aa57', 'Aa58', 'Aa59')
	set abilityTable[VAMPIRIC_AURA] = ab
	//**********************************************
	//*************** Reflection Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa60', 'Aa61', 'Aa62', 'Aa63', 'Aa64')
	set abilityTable[REFLECTION_AURA] = ab
	//**********************************************
	//*************** Thorns Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa65', 'Aa66', 'Aa67', 'Aa68', 'Aa69')
	set abilityTable[THORNS_AURA] = ab
	//**********************************************
	//*************** Trueshot Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa70', 'Aa71', 'Aa72', 'Aa73', 'Aa74')
	set abilityTable[TRUESHOT_AURA] = ab
	//**********************************************
	//*************** Command Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa75', 'Aa76', 'Aa77', 'Aa78', 'Aa79')
	set abilityTable[COMMAND_AURA] = ab
	//**********************************************
	//*************** Fear Aura
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Aa80', 'Aa81', 'Aa82', 'Aa83', 'Aa84')
	set abilityTable[FEAR_AURA] = ab
	//**********************************************
	//*************** Feedback
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap00', 'Ap01', 'Ap02', 'Ap03', 'Ap04')
	set abilityTable[FEEDBACK] = ab
	//**********************************************
	//*************** Truesight
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap05', 'Ap06', 'Ap07', 'Ap08', 'Ap09')
	set abilityTable[TRUESIGHT] = ab
	//**********************************************
	//*************** Bash
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap10', 'Ap11', 'Ap12', 'Ap13', 'Ap14')
	set abilityTable[BASH] = ab
	//**********************************************
	//*************** Envenomed Spears
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap15', 'Ap16', 'Ap17', 'Ap18', 'Ap19')
	set abilityTable[ENVENOMED_SPEARS] = ab
	//**********************************************
	//*************** Pulverize
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap20', 'Ap21', 'Ap22', 'Ap23', 'Ap24')
	set abilityTable[PULVERIZE] = ab
	//**********************************************
	//*************** Critical Strike
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    5,        8,     1)
	call ab.setIds('Ap25', 'Ap26', 'Ap27', 'Ap28', 'Ap29')
	set abilityTable[CRITICAL_STRIKE] = ab
	//**********************************************
	//*************** Disease Cloud
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap30', 'Ap31', 'Ap32', 'Ap33', 'Ap34')
	set abilityTable[DISEASE_CLOUD] = ab
	//**********************************************
	//*************** Spiked Carapace
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    6,        6,     1)
	call ab.setIds('Ap35', 'Ap36', 'Ap37', 'Ap38', 'Ap39')
	set abilityTable[SPIKED_CARAPACE] = ab
	//**********************************************
	//*************** Steel Frame
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap40', 'Ap41', 'Ap42', 'Ap43', 'Ap44')
	set abilityTable[STEEL_FRAME] = ab
	//**********************************************
	//*************** Reflect Bounder
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    8,        10,     1)
	call ab.setIds('Ap45', 'Ap46', 'Ap47', 'Ap48', 'Ap49')
	set abilityTable[REFLECT_BOUNDER] = ab
	//**********************************************
	//*************** Enduring Form
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    1,        1,     1)
	call ab.setIds('Ap50', 'Ap51', 'Ap52', 'Ap53', 'Ap54')
	set abilityTable[ENDURING_FORM] = ab
	//**********************************************
	//*************** Hardened Skin
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    5,        7,     1)
	call ab.setIds('Ap55', 'Ap56', 'Ap57', 'Ap58', 'Ap59')
	set abilityTable[HARDENED_SKIN] = ab
	//**********************************************
	//*************** Timely Parry
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap60', 'Ap61', 'Ap62', 'Ap63', 'Ap64')
	set abilityTable[TIMELY_PARRY] = ab
	//**********************************************
	//*************** Slow Poison
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        7,     1)
	call ab.setIds('Ap65', 'Ap66', 'Ap67', 'Ap68', 'Ap69')
	set abilityTable[SLOW_POISON] = ab
	//**********************************************
	//*************** Jolting Venom
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        6,     1)
	call ab.setIds('Ap70', 'Ap71', 'Ap72', 'Ap73', 'Ap74')
	set abilityTable[JOLTING_VENOM] = ab
	//**********************************************
	//*************** Evasion
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        5,     1)
	call ab.setIds('Ap75', 'Ap76', 'Ap77', 'Ap78', 'Ap79')
	set abilityTable[EVASION] = ab
	//**********************************************
	//*************** Cleaving Attack
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap80', 'Ap81', 'Ap82', 'Ap83', 'Ap84')
	set abilityTable[CLEAVING_ATTACK] = ab
	//**********************************************
	//*************** Permanent Immolation
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ap85', 'Ap86', 'Ap87', 'Ap88', 'Ap89')
	set abilityTable[PERMANENT_IMMOLATION] = ab
	//**********************************************
	//*************** Heal
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah00', 'Ah01', 'Ah02', 'Ah03', 'Ah04')
	set abilityTable[HEAL] = ab
	//**********************************************
	//*************** Holy Light
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah05', 'Ah06', 'Ah07', 'Ah08', 'Ah09')
	set abilityTable[HOLY_LIGHT] = ab
	//**********************************************
	//*************** Healing Ward
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah10', 'Ah11', 'Ah12', 'Ah13', 'Ah14')
	set abilityTable[HEALING_WARD] = ab
	//**********************************************
	//*************** Healing Wave
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah15', 'Ah16', 'Ah17', 'Ah18', 'Ah19')
	set abilityTable[HEALING_WAVE] = ab
	//**********************************************
	//*************** Essence of Blight
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah20', 'Ah21', 'Ah22', 'Ah23', 'Ah24')
	set abilityTable[ESSENCE_OF_BLIGHT] = ab
	//**********************************************
	//*************** Death Coil
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah25', 'Ah26', 'Ah27', 'Ah28', 'Ah29')
	set abilityTable[DEATH_COIL] = ab
	//**********************************************
	//*************** Rejuvenation
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ah30', 'Ah31', 'Ah32', 'Ah33', 'Ah34')
	set abilityTable[REJUVENATION] = ab
	//**********************************************
	//*************** Inner Fire
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac00', 'Ac01', 'Ac02', 'Ac03', 'Ac04')
	set abilityTable[INNER_FIRE] = ab
	//**********************************************
	//*************** Aegis
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac05', 'Ac06', 'Ac07', 'Ac08', 'Ac09')
	set abilityTable[AEGIS] = ab
	//**********************************************
	//*************** Slow
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac10', 'Ac11', 'Ac12', 'Ac13', 'Ac14')
	set abilityTable[SLOW] = ab
	//**********************************************
	//*************** Spell Steal
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac15', 'Ac16', 'Ac17', 'Ac18', 'Ac19')
	set abilityTable[SPELL_STEAL] = ab
	//**********************************************
	//*************** Bloodlust
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac20', 'Ac21', 'Ac22', 'Ac23', 'Ac24')
	set abilityTable[BLOODLUST] = ab
	//**********************************************
	//*************** Curse
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac25', 'Ac26', 'Ac27', 'Ac28', 'Ac29')
	set abilityTable[CURSE] = ab
	//**********************************************
	//*************** Spirit Touch
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac30', 'Ac31', 'Ac32', 'Ac33', 'Ac34')
	set abilityTable[SPIRIT_TOUCH] = ab
	//**********************************************
	//*************** Web
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    3,        4,     1)
	call ab.setIds('Ac35', 'Ac36', 'Ac37', 'Ac38', 'Ac39')
	set abilityTable[WEB] = ab
	//**********************************************
	//*************** Fairy Fire
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac40', 'Ac41', 'Ac42', 'Ac43', 'Ac44')
	set abilityTable[FAIRY_FIRE] = ab
	//**********************************************
	//*************** Phase Shift
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac45', 'Ac46', 'Ac47', 'Ac48', 'Ac49')
	set abilityTable[PHASE_SHIFT] = ab
	//**********************************************
	//*************** Abolish Magic
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        5,     1)
	call ab.setIds('Ac50', 'Ac51', 'Ac52', 'Ac53', 'Ac54')
	set abilityTable[ABOLISH_MAGIC] = ab
	//**********************************************
	//*************** Searing Arrows
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        5,     1)
	call ab.setIds('Ac55', 'Ac56', 'Ac57', 'Ac58', 'Ac59')
	set abilityTable[SEARING_ARROWS] = ab
	//**********************************************
	//*************** Cold Arrows
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ac60', 'Ac61', 'Ac62', 'Ac63', 'Ac64')
	set abilityTable[COLD_ARROWS] = ab
	//**********************************************
	//*************** Parasite
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        10,     1)
	call ab.setIds('Ac65', 'Ac66', 'Ac67', 'Ac68', 'Ac69')
	set abilityTable[PARASITE] = ab
	//**********************************************
	//*************** Dispel Magic
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae00', 'Ae01', 'Ae02', 'Ae03', 'Ae04')
	set abilityTable[DISPEL_MAGIC] = ab
	//**********************************************
	//*************** Ice Air
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae05', 'Ae06', 'Ae07', 'Ae08', 'Ae09')
	set abilityTable[ICE_AIR] = ab
	//**********************************************
	//*************** Thunder Clap
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae10', 'Ae11', 'Ae12', 'Ae13', 'Ae14')
	set abilityTable[THUNDER_CLAP] = ab
	//**********************************************
	//*************** Chain Lightning
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae15', 'Ae16', 'Ae17', 'Ae18', 'Ae19')
	set abilityTable[CHAIN_LIGHTNING] = ab
	//**********************************************
	//*************** Shockwave
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae20', 'Ae21', 'Ae22', 'Ae23', 'Ae24')
	set abilityTable[SHOCKWAVE] = ab
	//**********************************************
	//*************** Warstomp
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae25', 'Ae26', 'Ae27', 'Ae28', 'Ae29')
	set abilityTable[WARSTOMP] = ab
	//**********************************************
	//*************** Devour Magic
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae30', 'Ae31', 'Ae32', 'Ae33', 'Ae34')
	set abilityTable[DEVOUR_MAGIC] = ab
	//**********************************************
	//*************** Carrion Swarm
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    3,       5,     1)
	call ab.setIds('Ae35', 'Ae36', 'Ae37', 'Ae38', 'Ae39')
	set abilityTable[CARRION_SWARM] = ab
	//**********************************************
	//*************** Death and Decay
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae40', 'Ae41', 'Ae42', 'Ae43', 'Ae44')
	set abilityTable[DEATH_AND_DECAY] = ab
	//**********************************************
	//*************** Frost Nova
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae45', 'Ae46', 'Ae47', 'Ae48', 'Ae49')
	set abilityTable[FROST_NOVA] = ab
	//**********************************************
	//*************** Impale
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    3,        4,     1)
	call ab.setIds('Ae50', 'Ae51', 'Ae52', 'Ae53', 'Ae54')
	set abilityTable[IMPALE] = ab
	//**********************************************
	//*************** Fan of Knives
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    3,        4,     1)
	call ab.setIds('Ae55', 'Ae56', 'Ae57', 'Ae58', 'Ae59')
	set abilityTable[FAN_OF_KNIVES] = ab
	//**********************************************
	//*************** Lightning
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae60', 'Ae61', 'Ae62', 'Ae63', 'Ae64')
	set abilityTable[LIGHTNING] = ab
	//**********************************************
	//*************** Breath of Frost
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae65', 'Ae66', 'Ae67', 'Ae68', 'Ae69')
	set abilityTable[BREATH_OF_FROST] = ab
	//**********************************************
	//*************** Breath of Fire
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae70', 'Ae71', 'Ae72', 'Ae73', 'Ae74')
	set abilityTable[BREATH_OF_FIRE] = ab
	//**********************************************
	//*************** Palm of Destruction
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae75', 'Ae76', 'Ae77', 'Ae78', 'Ae79')
	set abilityTable[PALM_OF_DESTRUCTION] = ab
	//**********************************************
	//*************** Fire Air
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae80', 'Ae81', 'Ae82', 'Ae83', 'Ae84')
	set abilityTable[FIRE_AIR] = ab
	//**********************************************
	//*************** Crushing Wave
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ae85', 'Ae86', 'Ae87', 'Ae88', 'Ae89')
	set abilityTable[CRUSHING_WAVE] = ab
	//**********************************************
	//*************** Banish
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab00', 'Ab01', 'Ab02', 'Ab03', 'Ab04')
	set abilityTable[BANISH] = ab
	//**********************************************
	//*************** Divine Shield
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab05', 'Ab06', 'Ab07', 'Ab08', 'Ab09')
	set abilityTable[DIVINE_SHIELD] = ab
	//**********************************************
	//*************** Siphon Mana
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab10', 'Ab11', 'Ab12', 'Ab13', 'Ab14')
	set abilityTable[SIPHON_MANA] = ab
	//**********************************************
	//*************** Berserk
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab15', 'Ab16', 'Ab17', 'Ab18', 'Ab19')
	set abilityTable[BERSERK] = ab
	//**********************************************
	//*************** Lightning Shield
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab20', 'Ab21', 'Ab22', 'Ab23', 'Ab24')
	set abilityTable[LIGHTNING_SHIELD] = ab
	//**********************************************
	//*************** Purge
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab25', 'Ab26', 'Ab27', 'Ab28', 'Ab29')
	set abilityTable[PURGE] = ab
	//**********************************************
	//*************** Spirit Link
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab30', 'Ab31', 'Ab32', 'Ab33', 'Ab34')
	set abilityTable[SPIRIT_LINK] = ab
	//**********************************************
	//*************** Hex
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab35', 'Ab36', 'Ab37', 'Ab38', 'Ab39')
	set abilityTable[HEX] = ab
	//**********************************************
	//*************** Mirror Image
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    7,        9,     1)
	call ab.setIds('Ab40', 'Ab41', 'Ab42', 'Ab43', 'Ab44')
	set abilityTable[MIRROR_IMAGE] = ab
	//**********************************************
	//*************** Wind Walk
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab45', 'Ab46', 'Ab47', 'Ab48', 'Ab49')
	set abilityTable[WIND_WALK] = ab
	//**********************************************
	//*************** Cripple
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        6,     1)
	call ab.setIds('Ab50', 'Ab51', 'Ab52', 'Ab53', 'Ab54')
	set abilityTable[CRIPPLE] = ab
	//**********************************************
	//*************** Unholy Frenzy
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    3,        5,     1)
	call ab.setIds('Ab55', 'Ab56', 'Ab57', 'Ab58', 'Ab59')
	set abilityTable[UNHOLY_FRENZY] = ab
	//**********************************************
	//*************** Frost Armor
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab60', 'Ab61', 'Ab62', 'Ab63', 'Ab64')
	set abilityTable[FROST_ARMOR] = ab
	//**********************************************
	//*************** Sleep
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    4,        5,     1)
	call ab.setIds('Ab65', 'Ab66', 'Ab67', 'Ab68', 'Ab69')
	set abilityTable[SLEEP] = ab
	//**********************************************
	//*************** Roar
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab70', 'Ab71', 'Ab72', 'Ab73', 'Ab74')
	set abilityTable[ROAR] = ab
	//**********************************************
	//*************** Howl of Terror
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('Ab75', 'Ab76', 'Ab77', 'Ab78', 'Ab79')
	set abilityTable[HOWL_OF_TERROR] = ab
	//**********************************************
	//*************** Taunt
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    2,        3,     1)
	call ab.setIds('Ab80', 'Ab81', 'Ab82', 'Ab83', 'Ab84')
	set abilityTable[TAUNT] = ab
	//**********************************************
	//*************** Entangling Roots
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('At00', 'At01', 'At02', 'At03', 'At04')
	set abilityTable[ENTANGLING_ROOTS] = ab
	//**********************************************
	//*************** Mana Burn
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('At05', 'At06', 'At07', 'At08', 'At09')
	set abilityTable[MANA_BURN] = ab
	//**********************************************
	//*************** Shadow Strike
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    3,        7,     1)
	call ab.setIds('At10', 'At11', 'At12', 'At13', 'At14')
	set abilityTable[SHADOW_STRIKE] = ab
	//**********************************************
	//*************** Cyclone
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    5,        7,     1)
	call ab.setIds('At15', 'At16', 'At17', 'At18', 'At19')
	set abilityTable[CYCLONE] = ab
	//**********************************************
	//*************** Firebolt
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    5,        7,     1)
	call ab.setIds('At20', 'At21', 'At22', 'At23', 'At24')
	set abilityTable[FIREBOLT] = ab
	//**********************************************
	//*************** Icebolt
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('At25', 'At26', 'At27', 'At28', 'At29')
	set abilityTable[ICEBOLT] = ab
	//**********************************************
	//*************** Rock Throw
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('At30', 'At31', 'At32', 'At33', 'At34')
	set abilityTable[ROCK_THROW] = ab
	//**********************************************
	//*************** Life Drain
	//************************ minLvl    minInt   IC
	set ab = Ability.create(    10,        25,     1)
	call ab.setIds('At35', 'At36', 'At37', 'At38', 'At39')
	set abilityTable[LIFE_DRAIN] = ab
endfunction

endlibrary