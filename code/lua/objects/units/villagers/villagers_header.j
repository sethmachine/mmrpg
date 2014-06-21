//! externalblock extension=lua ObjectMerger $FILENAME$
    //********************************************
    //************ Villagers *********************
    //********************************************
	//! i BASE_62 = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
	//! i unitId = 'v005'
    //base object for most NPC characters
    //! i BASE_ID_MAN1 = "nvil"
    //! i BASE_ID_MAN2 = "nvl2"
    //! i BASE_ID_WOMAN = "nvlw"
    //! i BASE_ID_CHILD1 = "nvlk"
    //! i BASE_ID_CHILD2 = "nvk2"
	//generic values
    //! i DUMMY_MAN1 = "v000"
    //! i DUMMY_MAN2 = "v001"
    //! i DUMMY_WOMAN = "v002"
    //! i DUMMY_CHILD1 = "v003"
    //! i DUMMY_CHILD2 = "v004"
    //index for each point value, incremented by 1 each time
    //! i upoi = 0
    //Generic NPC names
    //! i VILLAGER = "Villager"
    //! i CHILD = "Child"
	//! i VIL_CONS = 2000
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
    
    //********************************************
    //************ Generic Man1 ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID_MAN1, DUMMY_MAN1)
    //! i makechange(current, "uabi", "Avul, Awan")
    //! i makechange(current, "ucam", "1")
    //! i makechange(current, "unam", "Villager")
    //! i makechange(current, "unsf", "(Generic Male1)")
    //! i makechange(current, "urac", "human")
    //! i makechange(current, "upoi", (upoi + VIL_CONS) .. "")
	//! i upoi = upoi + 1

    //********************************************
    //************ Generic Man2 ******************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID_MAN2, DUMMY_MAN2)
    //! i makechange(current, "uabi", "Avul, Awan")
    //! i makechange(current, "ucam", "1")
    //! i makechange(current, "unam", "Villager")
    //! i makechange(current, "unsf", "(Generic Male2)")
    //! i makechange(current, "urac", "human")
    //! i makechange(current, "upoi", (upoi + VIL_CONS) .. "")
	//! i upoi = upoi + 1

    //********************************************
    //************ Generic Woman *****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID_WOMAN, DUMMY_WOMAN)
    //! i makechange(current, "uabi", "Avul, Awan")
    //! i makechange(current, "ucam", "1")
    //! i makechange(current, "unam", "Villager")
    //! i makechange(current, "unsf", "(Generic Woman)")
    //! i makechange(current, "urac", "human")
    //! i makechange(current, "upoi", (upoi + VIL_CONS) .. "")
	//! i upoi = upoi + 1

    //********************************************
    //************ Generic Child1 ****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID_CHILD1, DUMMY_CHILD1)
    //! i makechange(current, "uabi", "Avul, Awan")
    //! i makechange(current, "ucam", "1")
    //! i makechange(current, "unam", "Child")
    //! i makechange(current, "unsf", "(Generic Child1)")
    //! i makechange(current, "urac", "human")
    //! i makechange(current, "upoi", (upoi + VIL_CONS) .. "")
	//! i upoi = upoi + 1

    //********************************************
    //************ Generic Child2 ****************
    //********************************************
    //! i setobjecttype("units")
    //! i createobject(BASE_ID_CHILD1, DUMMY_CHILD2)
    //! i makechange(current, "uabi", "Avul, Awan")
    //! i makechange(current, "ucam", "1")
    //! i makechange(current, "unam", "Child")
    //! i makechange(current, "unsf", "(Generic Child2)")
    //! i makechange(current, "urac", "human")
    //! i makechange(current, "upoi", (upoi + VIL_CONS) .. "")
	//! i upoi = upoi + 1
	
	//insert
//! endexternalblock