//! externalblock extension=lua ObjectMerger $FILENAME$
    //base id for the attachment ability
    //we'll use armor bonus +1
    //! i ARMOR_ID = "AId1"
    //! i DUMMY_ID = "AT00"
    //! i upoi = 0
    //****************************
    //Dummy attachment ability
    //****************************
    //! i setobjecttype("abilities")
    //! i createobject(ARMOR_ID, DUMMY_ID)
    //! i makechange(current, "Idef", "1", "0")
    //! i makechange(current, "aite", "0")
    //! i makechange(current, "ansf", "Dummy")
    //! i makechange(current, "anam", "Attachment")
    //****************************
    //SkeletonMask attachment ability
    //****************************
    //! i setobjecttype("abilities")
    //! i createobject(DUMMY_ID, "AT01")
    //! i makechange(current, "anam", "SkeletonMaskAttachment")
    //! i makechange(current, "atat", "SkeletonMask.mdx")
    //! i makechange(current, "ata0", "head")
    //! i makechange(current, "atac", "1")
//! endexternalblock
