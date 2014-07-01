//! externalblock extension=lua ObjectMerger $FILENAME$
    //inventory base ability
    //! i INV_ID = "AInv"
    //attack base ability
    //! i ATT_ID = "ANcl"
    //monsters can hold up to 2 items
    //! i TOTAL_SLOTS = "2"
    //attack base ability hotkey
    //! i ATT_HOTKEY = "Q"
    //cooldown timer
    //! i ATT_COOLDOWN = "15.00"
    //range
    //! i ATT_MELEE_RANGE = "100.00"
    //! i ATT_RANGED_RANGE = "600.00"
    //damage based on attack points modifier
    //! i ATT_MELEE_MOD = "0.50"
    //! i ATT_RANGED_MOD = "0.30"
    //! i BASE_DMG = "5"
    //prefixes
    //! i MINV_PREFIX = "AMI"
    //! i ATT_PREFIX = "ATT"
    //counter
    //! i counter = 0
    //Strings for tooltips, etc.
    //! i AUB1_MELEE = "The monster attacks with its full power, dealing damage based on its Attack points. |n|n|cffffcc00Calculation:|r " .. BASE_DMG .. " + " .. ATT_MELEE_MOD .. " * Attack Points |n|n|cff95C3D0Cooldown: " .. ATT_COOLDOWN .. " seconds.|r"
    //! i AUB1_RANGED = "The monster attacks with its full power, dealing damage based on its Attack points. |n|n|cffffcc00Calculation:|r " .. BASE_DMG .. " + " .. ATT_RANGED_MOD .. " * Attack Points |n|n|cff95C3D0Cooldown: " .. ATT_COOLDOWN .. " seconds.|r"
    //Button to use
    //! i ATT_BTN = "ReplaceableTextures\\CommandButtons\\BTNUpgradeRegenerationAura.blp"
    //effect to use when it hits
    //! i ATT_ART = "Objects\\Spawnmodels\\Human\\HumanLargeDeathExplode\\HumanLargeDeathExplode.mdl"
    //****************
    // Monster Inventory
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(INV_ID, MINV_PREFIX .. "0")
    //! i makechange(current, "inv1", "1", TOTAL_SLOTS)
    //! i makechange(current, "ansf", "(Monster)")
    //! i makechange(current, "anam", "Inventory")
    //! i makechange(current, "aart", "ReplaceableTextures\\CommandButtons\\BTNPackBeast.blp")
    
    //****************
    // Attack (melee)
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(ATT_ID, ATT_PREFIX .. counter)
    //! i makechange(current, "ansf", "(Q) (Melee)")
    //! i makechange(current, "anam", "Attack")
    //! i makechange(current, "acdn", "1", ATT_COOLDOWN)
    //! i makechange(current, "ahky", ATT_HOTKEY)
    //! i makechange(current, "aran", "1", ATT_MELEE_RANGE)
    //! i makechange(current, "aani", "attack")
    //! i makechange(current, "alev", "1")
    //! i makechange(current, "abpx", "0")
    //! i makechange(current, "abpy", "2")
    //! i makechange(current, "aubx", "0")
    //! i makechange(current, "auby", "2")
    //! i makechange(current, "acat", "")
    //! i makechange(current, "acap", "")
    //! i makechange(current, "aeat", "")
    //! i makechange(current, "atat", ATT_ART)
    //! i makechange(current, "ata0", "")
    //! i makechange(current, "Ncl4", "1", "0.00")
    //! i makechange(current, "Ncl6", "1", "cannibalize")
    //! i makechange(current, "aord", "cannibalize")
    //! i makechange(current, "Ncl1", "1", "0.00")
    //! i makechange(current, "Ncl3", "1", "1")
    //! i makechange(current, "Ncl2", "1", "1")
    //! i makechange(current, "aher", "0")
    //! i makechange(current, "atar", "1", "ground, enemies, air")
    //! i makechange(current, "achd", "0")
    //! i makechange(current, "atp1", "1", "Attack [" .. ATT_HOTKEY .. "] (melee)")
    //! i makechange(current, "aub1", "1", AUB1_MELEE)
    //! i makechange(current, "aart", ATT_BTN)
    //! i counter = counter + 1

    //****************
    // Attack (ranged)
    //****************
    //! i setobjecttype("abilities")
    //! i createobject(ATT_ID, ATT_PREFIX .. counter)
    //! i makechange(current, "ansf", "(Q) (Ranged)")
    //! i makechange(current, "anam", "Attack")
    //! i makechange(current, "acdn", "1", ATT_COOLDOWN)
    //! i makechange(current, "ahky", ATT_HOTKEY)
    //! i makechange(current, "aran", "1", ATT_RANGED_RANGE)
    //! i makechange(current, "aani", "attack")
    //! i makechange(current, "abpx", "0")
    //! i makechange(current, "abpy", "2")
    //! i makechange(current, "aubx", "0")
    //! i makechange(current, "auby", "2")
    //! i makechange(current, "acat", "")
    //! i makechange(current, "acap", "")
    //! i makechange(current, "aeat", "")
    //! i makechange(current, "atat", ATT_ART)
    //! i makechange(current, "ata0", "")
    //! i makechange(current, "Ncl4", "1", "0.00")
    //! i makechange(current, "Ncl6", "1", "cannibalize")
    //! i makechange(current, "aord", "cannibalize")
    //! i makechange(current, "Ncl1", "1", "0.00")
    //! i makechange(current, "Ncl3", "1", "1")
    //! i makechange(current, "Ncl2", "1", "1")
    //! i makechange(current, "aher", "0")
    //! i makechange(current, "alev", "1")
    //! i makechange(current, "atar", "1", "ground,enemies,air")
    //! i makechange(current, "achd", "0")
    //! i makechange(current, "atp1", "1", "Attack [" .. ATT_HOTKEY .. "] (ranged)")
    //! i makechange(current, "aub1", "1", AUB1_RANGED)
    //! i makechange(current, "aart", ATT_BTN)
    //! i counter = counter + 1
//! endexternalblock
