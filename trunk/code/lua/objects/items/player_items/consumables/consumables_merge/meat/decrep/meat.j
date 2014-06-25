//! externalblock extension=lua ObjectMerger $FILENAME$
    //! i BASE_ID = "pghe"
    //! i DUMMY_ID = "IF00"
    //charges
    //! i CHARGES = 3
    //range
    //! i RANGE = "0.00"
    //Strings for tooltips, etc.
    //! i IDES_1 = "Slightly increases the chance of a defeated monster joining you."
    //! i IDES_2 = "Increases the chance of a defeated monster joining you."
    //! i IDES_3 = "Greatly increases the chance of a defeated monster joining you."
    //! i IDES_4 = "Massively increases the chance of a defeated monster joining you."
    
    //****************
    // Dummy Food Item
    //****************
    //! i setobjecttype("items")
    //! i createobject(BASE_ID, DUMMY_ID)
    //! i makechange(current, "ifil", "Meat.mdx")
    ////! i makechange(current, "iclg", "0")
    ////! i makechange(current, "iclb", "0")
    //! i makechange(current, "ilvo", "0")
    //! i makechange(current, "ilev", "0")
    //! i makechange(current, "iuse", CHARGES)
    //! i makechange(current, "ipri", "0")
    //! i makechange(current, "istr", "1")
    //! i makechange(current, "unam", "Dummy Food Item")
	//! i makechange(current, "ilev", "1")
   
    //****************
    // Feed
    //****************
    //! i setobjecttype("items")
    //! i createobject(DUMMY_ID, "IF01")
    //! i makechange(current, "iabi", "AF01")
    //! i makechange(current, "iico", "BTNFood.blp")
    //! i makechange(current, "icid", "AF01")
    //! i makechange(current, "ides", IDES_1)
    //! i makechange(current, "unam", "Monster Feed")
    //! i makechange(current, "utip", "Purchase Monster Feed")
    //! i makechange(current, "utub", IDES_1)
    
 
    //****************
    // Porkchop
    //****************
    //! i setobjecttype("items")
    //! i createobject(DUMMY_ID, "IF02")
    //! i makechange(current, "iabi", "AF02")
    //! i makechange(current, "iico", "BTNNuggets.blp")
    //! i makechange(current, "icid", "AF02")
    //! i makechange(current, "ides", IDES_2)
    //! i makechange(current, "unam", "Porkchop")
    //! i makechange(current, "utip", "Purchase Porkchop")
    //! i makechange(current, "utub", IDES_2)
 
    //****************
    // Rib
    //****************
    //! i setobjecttype("items")
    //! i createobject(DUMMY_ID, "IF03")
    //! i makechange(current, "iabi", "AF03")
    //! i makechange(current, "iico", "BTNHam.blp")
    //! i makechange(current, "icid", "AF03")
    //! i makechange(current, "ides", IDES_3)
    //! i makechange(current, "unam", "Rib")
    //! i makechange(current, "utip", "Purchase Rib")
    //! i makechange(current, "utub", IDES_3)
  
    //****************
    // Sirloin
    //****************
    //! i setobjecttype("items")
    //! i createobject(DUMMY_ID, "IF04")
    //! i makechange(current, "iabi", "AF04")
    //! i makechange(current, "iico", "BTNFilet.blp")
    //! i makechange(current, "icid", "AF04")
    //! i makechange(current, "ides", IDES_4)
    //! i makechange(current, "unam", "Sirloin")
    //! i makechange(current, "utip", "Purchase Sirloin")
    //! i makechange(current, "utub", IDES_4)
    
//! endexternalblock
