//! externalblock extension=lua ObjectMerger $FILENAME$
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i id = 'f000'
	//! i baseId = 'shwd'
	
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
	
	//! i function write_item(unam, ides, ifil, iico, igol)
		//! i id = add(id, "")
		//! i setobjecttype("items")
		//! i createobject(baseId, id)
		//! i makechange(current, "ides", ides)
		//! i makechange(current, "ifil", ifil)
		//! i makechange(current, "iico", iico)
		//! i makechange(current, "igol", igol)
		//! i makechange(current, 'unam', unam)
	//! i end
	
		//[[ Desert Flowers
	//! i igol = 0
	//! i iico = "ReplaceableTextures\\CommandButtons\\BTNDryadDispelMagic.blp"
	//! i ifil = "Objects\\InventoryItems\\Shimmerweed\\Shimmerweed.mdl"
	//! i ides = "A gathering of rare desert flowers."
	//! i unam = "Desert Flowers"
	//! i write_item(unam, ides, ifil, iico, igol)
	//! i makechange(current, "ipaw", "0")
	//! i makechange(current, "idraw", "0")
	//! i makechange(current, 'utub', "A gathering of rare desert flowers.")
	//! i end
	//]]

//! endexternalblock
