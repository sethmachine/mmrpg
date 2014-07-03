//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Warps *************************
    //********************************************
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i baseId = "nmgv"
	//! i id = 'w000'
    //! i upoi = 500
	//! i exit_uico = "ReplaceableTextures\\CommandButtons\\BTNCOP.blp"
	//! i exit_umdl = "buildings\\other\\CircleOfPower\\CircleOfPower"
	//! i exit_unam = "Exit"
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
	//! i function write_unit(uico, umdl, unsf, unam, baseId)
		//! i setobjecttype("units")
		//! i createobject(baseId, id)
		//! i makechange(current, "uabi", "Avul")
		//! i makechange(current, "uico", uico)
		//! i makechange(current, "umdl", umdl)
		//! i makechange(current, "utco", "\12")
		//! i makechange(current, "unsf", unsf)
		//! i makechange(current, "upat", "")
		//! i makechange(current, "unam", unam)
		//! i makechange(current, "ushb", "")
		//! i makechange(current, "upoi", upoi)
		//! i id = add(id, "")
	//! i end
	//! i function set_color(red, green, blue)
		//! i makechange(current, "uclr", red)
		//! i makechange(current, "uclg", green)
		//! i makechange(current, "uclb", blue)
	//! i end
//insert
//! endexternalblock
