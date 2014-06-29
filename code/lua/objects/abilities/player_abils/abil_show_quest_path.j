//! externalblock extension=lua ObjectMerger $FILENAME$    
    //****************
    // Show Quest Path
    //****************
    //! i setobjecttype("abilities")
    //! i createobject("ANcl", "qpth")

    //button position (2, 1) in command card
    //! i makechange(current, "abpx", "2")
    //! i makechange(current, "abpy", "1")

    //art attachment points (nulled)
    //! i makechange(current, "acat", "")
    //! i makechange(current, "acap", "")

    //effect and art
    //! i makechange(current, "aeat", "")
    //! i makechange(current, "aart", "BTNPath.blp")

    //target attachment points (nulled)
    //! i makechange(current, "atat", "")
    //! i makechange(current, "ata0", "")

    //various channel effects (does not disable ability!)
    //! i makechange(current, "Ncl4", "1", "0.98")
    //! i makechange(current, "Ncl6", "1", "roar")
    //! i makechange(current, "Ncl5", "1", "0")
    //! i makechange(current, "Ncl1", "1", "0.00")
    //! i makechange(current, "Ncl3", "1", "1")
	//the target of the spell
	//0 = instant
	//1 = unit / item target
    //! i makechange(current, "Ncl2", "1", "0")

    //cast range, not hero ability, 1 levels
    //! i makechange(current, "aran", "1", "100")
    //! i makechange(current, "aher", "0")
    //! i makechange(current, "alev", "1")

    //race, targets allowed
    //! i makechange(current, "arac", "human")
    //! i makechange(current, "atar", "1", "")

    //! i makechange(current, "ansf", "(Y)")
    //! i makechange(current, "ahky", "Y")
    //! i makechange(current, "anam", "Quest Path")
    //! i makechange(current, "aord", "roar")
    //! i makechange(current, "acdn", "1", "0.00")
    //! i makechange(current, "aani", "spell,channel")
    //! i makechange(current, "aubx", "0")
    //! i makechange(current, "auby", "2")
    //! i makechange(current, "achd", "0")
    //! i makechange(current, "atp1", "1", "Quest Path [Y]")
    //! i makechange(current, "aub1", "1", "Reveals the location of any active quest's goal.")  
//! endexternalblock

