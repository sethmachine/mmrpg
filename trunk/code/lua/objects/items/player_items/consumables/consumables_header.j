//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i itemId = 'c000'
	//health potion as base object for consumables
	//! i baseId = 'pghe'
	//item is for player using/holding
	//! i PLAYER_ITEM = 1
	//number of uses per item
	//! i MEAT_CHARGES = 3
	//! i POTION_CHARGES = 3
	//! i WARP_STAFF_CHARGES = 3
	//! i ADUR = 10
	
	//think about importing these values/arrays
	//that way we don't have to write specific rawcodes
	//and we don't need to go back and change everything
	//if an item ability's value does change
	//import! "ADUR" item_abils\potions.j
	//import! "HEALTH_Rej1" item_abils\potions.j
	
	
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
	
	//! i function write_item(unam, ides, ifil, iico, igol, ilev, iuse)
		//! i setobjecttype("items")
		//! i createobject(baseId, itemId)
		//! i makechange(current, "ides", ides)
		//! i makechange(current, "ifil", ifil)
		//! i makechange(current, "iico", iico)
		//! i makechange(current, "igol", igol)
		//! i makechange(current, 'unam', unam)
		//! i makechange(current, 'ilev', ilev)
		//! i makechange(current, 'iuse', iuse)
		//! i makechange(current, 'ipri', "0")
		//! i makechange(current, 'istr', "1")
		//! i makechange(current, 'ilvo', "0")
		//! i makechange(current, 'utip', "Purchase " .. unam)
		//! i itemId = add(itemId, "")
	//! i end
	
	//insert
//! endexternalblock