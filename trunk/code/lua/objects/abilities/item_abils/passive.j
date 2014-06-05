//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i abilId = 'z000'
	//! i itemBaseId = 'ratc'
	
	//! i function add(value, result)
		//! i if value == "" then
			//! i value = "0"
		//! i end
		//! i local lastValue = string.sub(value, string.len(value), string.len(value))
		//! i local lastBase = string.sub(BASE_62, string.len(BASE_62), string.len(BASE_62))
		//! i if lastValue ~= lastBase then
			//! i local nextBase = string.sub(BASE_62, string.find(BASE_62, lastValue) + 1, string.find(BASE_62, lastValue) + 1)
			//! i return string.sub(value, 1, string.len(value) - 1) .. nextBase .. result
		//! i else
			//! i return add(string.sub(value, 1, string.len(value) - 1), result .. "0")
		//! i end
	//! i end
	
	//! i function write_item(unam, ides, ifil, iico, igol, i)
		//! i abilId = add(abilId, "")
		//! i setobjecttype("items")
		//! i createobject(itemBaseId, abilId)
		//! i makechange(current, "ides", ides)
		//! i makechange(current, "ifil", ifil)
		//! i makechange(current, "iico", iico)
		//! i makechange(current, 'unam', unam .. " (+" .. i .. ")")
		//! i makechange(current, 'utip', "Purchase " .. unam)
		//! i makechange(current, 'igol', "" .. (igol * i))
	//! i end
	
	//! i function write_abils(baseId, baseField, idArr, bonusArr, total, bonus)
		//! i for i=1, total do
			//! i abilId = add(abilId, "")
			//! i idArr[i] = abilId
			//! i bonusArr[i] = bonus * i
			//! i setobjecttype("abilities")
			//! i createobject(baseId, abilId)
			//! i makechange(current, 'ansf', "(" .. (bonus * i) .. ")")
			//! i makechange(current, baseField, "1", "" .. (bonus * i))
			//! i makechange(current, 'aite', "1")
		//! i end
	//! i end
	
	//***************
	// DAMAGE 
	//***************
	//! i DAMAGE_IDS = {}
	//! i DAMAGE_BONUS = {}
	//! i DAMAGE_ID = 'AItc'
	//! i write_abils(DAMAGE_ID, 'Iatt', DAMAGE_IDS, DAMAGE_BONUS, 100, 1)

	//***************
	// HEALTH 
	//***************
	//! i HEALTH_IDS = {}
	//! i HEALTH_BONUS = {}
	//! i HEALTH_ID = 'AIlf'
	//! i write_abils(HEALTH_ID, 'Ilif', HEALTH_IDS, HEALTH_BONUS, 100, 5)

	//***************
	// MANA 
	//***************
	//! i MANA_IDS = {}
	//! i MANA_BONUS = {}
	//! i MANA_ID = 'AImb'
	//! i write_abils(MANA_ID, 'Iman', MANA_IDS, MANA_BONUS, 100, 5)

	//***************
	// ARMOR 
	//***************
	//! i ARMOR_IDS = {}
	//! i ARMOR_BONUS = {}
	//! i ARMOR_ID = 'AId2'
	//! i write_abils(ARMOR_ID, 'Idef', ARMOR_IDS, ARMOR_BONUS, 100, 1)

	//***************
	// AGILITY (DEFENSE)
	//***************
	//! i AGI_IDS = {}
	//! i AGI_BONUS = {}
	//! i AGI_ID = 'AIa1'
	//! i write_abils(AGI_ID, 'Iagi', AGI_IDS, AGI_BONUS, 100, 1)

	//***************
	// STRENGTH
	//***************
	//! i STR_IDS = {}
	//! i STR_BONUS = {}
	//! i STR_ID = 'AIs1'
	//! i write_abils(STR_ID, 'Istr', STR_IDS, STR_BONUS, 100, 1)
	
	//***************
	// INTELLIGENCE
	//***************
	//! i INT_IDS = {}
	//! i INT_BONUS = {}
	//! i INT_ID = 'AIi1'
	//! i write_abils(INT_ID, 'Iint', INT_IDS, INT_BONUS, 100, 1)

	//***************
	// HEALTH REGENERATION
	//***************
	//! i HREGEN_IDS = {}
	//! i HREGEN_BONUS = {}
	//! i HREGEN_ID = 'Arel'
	//! i write_abils(HREGEN_ID, 'Ihpr', HREGEN_IDS, HREGEN_BONUS, 100, 1)

	//***************
	// MANA REGENERATION
	//***************
	//! i MREGEN_IDS = {}
	//! i MREGEN_BONUS = {}
	//! i MREGEN_ID = 'AIrm'
	//! i write_abils(MREGEN_ID, 'Imrp', MREGEN_IDS, MREGEN_BONUS, 100, 0.05)

	//***************
	// MOVEMENT SPEED
	//***************
	//! i MSPEED_IDS = {}
	//! i MSPEED_BONUS = {}
	//! i MSPEED_ID = 'AIms'
	//! i write_abils(MSPEED_ID, 'Imvb', MSPEED_IDS, MSPEED_BONUS, 25, 10)

	//***************
	// SIGHT RANGE
	//***************
	//! i SIGHT_IDS = {}
	//! i SIGHT_BONUS = {}
	//! i SIGHT_ID = 'AIsi'
	//! i write_abils(SIGHT_ID, 'Isib', SIGHT_IDS, SIGHT_BONUS, 10, 100)

	//***************
	// LIFE STEAL
	//***************
	//! i LSTEAL_IDS = {}
	//! i LSTEAL_BONUS = {}
	//! i LSTEAL_ID = 'AIva'
	//! i write_abils(LSTEAL_ID, 'Ivam', LSTEAL_IDS, LSTEAL_BONUS, 100, 0.03)

	//***************
	// ATTACK SPEED
	//***************
	//! i ASPEED_IDS = {}
	//! i ASPEED_BONUS = {}
	//! i ASPEED_ID = 'AIsx'
	//! i write_abils(ASPEED_ID, 'Isx1', ASPEED_IDS, ASPEED_BONUS, 100, 0.03)

	//***************
	// EVASION
	//***************
	//! i EVASION_IDS = {}
	//! i EVASION_BONUS = {}
	//! i EVASION_ID = 'AIev'
	//! i write_abils(EVASION_ID, 'Eev1', EVASION_IDS, EVASION_BONUS, 25, 0.02)

	//***************
	// CRITICAL STRIKE
	//***************
	//! i CRIT_IDS = {}
	//! i CRIT_BONUS = {}
	//! i CRIT_ID = 'AIcs'
	//! i write_abils(CRIT_ID, 'Ocr1', CRIT_IDS, CRIT_BONUS, 8, 5)

	//***************
	// BASH
	//***************
	//! i BASH_IDS = {}
	//! i BASH_BONUS = {}
	//! i BASH_ID = 'AIbx'
	//! i write_abils(BASH_ID, 'Hbh3', BASH_IDS, BASH_BONUS, 20, 10)

	//***************
	// BERSERK
	//***************
	//! i BERSERK_IDS = {}
	//! i BERSERK_BONUS = {}
	//! i BERSERK_ID = 'AIxk'
	//! i write_abils(BERSERK_ID, 'bsk2', BERSERK_IDS, BERSERK_BONUS, 20, 0.10)
	
	
//! endexternalblock