//! externalblock extension=lua ObjectMerger $FILENAME$
    //! i BASE_ID = "ANcl"
    //! i DUMMY_ID = "AF00"
    //range
    //! i RANGE = "0.00"
    //mana cost
    //! i AMCS = "0"

    
    //****************
    // Dummy Food Abil
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(BASE_ID, DUMMY_ID)
    //! i makechange(current, "aani", "attack")
    //! i makechange(current, "acat", "")
    //! i makechange(current, "acap", "")
    //! i makechange(current, "aeat", "")
    //! i makechange(current, "atat", "")
    //! i makechange(current, "ata0", "")
    //! i makechange(current, "Ncl4", "1", "0.00")
    //! i makechange(current, "Ncl1", "1", "0.00")
    //! i makechange(current, "Ncl3", "1", "1")
    //! i makechange(current, "Ncl2", "1", "1")
    //! i makechange(current, "aran", "1", RANGE)
    //! i makechange(current, "aher", "0")
    //! i makechange(current, "aite", "1")
    //! i makechange(current, "alev", "1")
    //! i makechange(current, "amcs", "1", "0")
    //! i makechange(current, "arac", "human")
    //! i makechange(current, "atar", "1", "enemies,hero")
    //! i makechange(current, "ansf", "(Meat)")
    //! i makechange(current, "ahky", "")
    //! i makechange(current, "anam", "Dummy Food")
   
    //****************
    // Feed
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(DUMMY_ID, "AF01")
    //! i makechange(current, "aart", "BTNFood.blp")
    //! i makechange(current, "anam", "Feed")
 
    //****************
    // Porkchop
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(DUMMY_ID, "AF02")
    //! i makechange(current, "aart", "BTNNuggets.blp")
    //! i makechange(current, "anam", "Porkchop")
    //! i makechange(current, "aord", "cloudoffog")
 
    //****************
    // Rib
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(DUMMY_ID, "AF03")
    //! i makechange(current, "aart", "BTNHam.blp")
    //! i makechange(current, "anam", "Rib")
    //! i makechange(current, "aord", "charm")
  
    //****************
    // Sirloin
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(DUMMY_ID, "AF04")
    //! i makechange(current, "aart", "BTNFilet.blp")
    //! i makechange(current, "anam", "Sirloin")
    //! i makechange(current, "aord", "chemicalrage")
    
//! endexternalblock
