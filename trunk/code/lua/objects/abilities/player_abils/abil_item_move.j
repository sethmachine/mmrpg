//! externalblock extension=lua ObjectMerger $FILENAME$    
    //****************
    // Item Move
    //****************
    //! i setobjecttype("abilities")
    //! i createobject("ANcl", "Amve")

    //button position (2, 1) in command card
    //! i makechange(current, "abpx", "1")
    //! i makechange(current, "abpy", "1")

    //art attachment points (nulled)
    //! i makechange(current, "acat", "")
    //! i makechange(current, "acap", "")

    //effect and art
    //! i makechange(current, "aeat", "")
    //! i makechange(current, "aart", "BTNItemMove.blp")

    //target attachment points (nulled)
    //! i makechange(current, "atat", "")
    //! i makechange(current, "ata0", "")

    //various channel effects (does not disable ability!)
    //! i makechange(current, "Ncl4", "1", "0.98")
    //! i makechange(current, "Ncl6", "1", "magicleash")
    //! i makechange(current, "Ncl5", "1", "0")
    //! i makechange(current, "Ncl1", "1", "0.00")
    //! i makechange(current, "Ncl3", "1", "1")
    //! i makechange(current, "Ncl2", "1", "1")

    //cast range, not hero ability, 1 levels
    //! i makechange(current, "aran", "1", "100")
    //! i makechange(current, "aher", "0")
    //! i makechange(current, "alev", "1")

    //race, targets allowed
    //! i makechange(current, "arac", "human")
    //! i makechange(current, "atar", "1", "item")

    //! i makechange(current, "ansf", "(W)")
    //! i makechange(current, "ahky", "W")
    //! i makechange(current, "anam", "Item Move")
    //! i makechange(current, "aord", "magicleash")
    //! i makechange(current, "acdn", "0", "0")
    //! i makechange(current, "aani", "spell, channel")
    //! i makechange(current, "aubx", "0")
    //! i makechange(current, "auby", "2")
    //! i makechange(current, "achd", "0")
    //! i makechange(current, "atp1", "1", "Item Move [W]")
    //! i makechange(current, "aub1", "1", "Moves the target item to your backpack.  Fails if the item is not yours or your backpack is full.")  
//! endexternalblock

