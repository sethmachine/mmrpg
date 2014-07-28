    //********************************
    // Unknown Reward 
    //********************************
    set r = Reward.create()
    call r.setUnknownReward()
    set rewardTable[i] = r
    set i = i + 1