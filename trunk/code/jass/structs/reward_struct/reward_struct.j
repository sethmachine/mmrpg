library RewardStruct

globals
    private constant integer MAX_ITEM_REWARD = 5 //the most item types a quest can reward
	private constant integer MAX_QUEST_REWARD = 5 //the most new quests a reward can make available
endglobals

//a representation of a reward for a quest
struct Reward
    
    boolean goldReward = false
    boolean keyReward = false
    boolean itemReward = false
    boolean expReward = false
	boolean questReward = false
	boolean unknownReward = false
    
    integer gold = 0
    integer key = 0
    integer exp = 0
	integer array quests[MAX_QUEST_REWARD]
    integer array items[MAX_ITEM_REWARD]
    
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        return this
    endmethod
    /*
    method setGoldReward takes integer gold returns nothing
        set goldReward = true
        set this.gold = gold
    endmethod
    
    method setKeyReward takes integer key returns nothing
        set keyReward = true
        set this.key = key
    endmethod
    
    method setExpReward takes integer exp returns nothing
        set expReward = true
        set this.exp = exp
    endmethod
	
	method setUnknownReward takes nothing returns nothing
		set this.unknownReward = true
	endmethod


    method setItemReward takes integer itemId returns nothing
        local integer i = 0
        set itemReward = true
        loop
            exitwhen i >= MAX_ITEM_REWARD
            if items[i] != 0 then
                set items[i] = itemId
                set i = MAX_ITEM_REWARD
            endif
            set i = i + 1
        endloop
    endmethod

    method setQuestReward takes integer questIndex returns nothing
        local integer i = 0
        set questReward = true
        loop
            exitwhen i >= MAX_QUEST_REWARD
            if quests[i] != 0 then
                set quests[i] = questIndex
                set i = MAX_QUEST_REWARD
            endif
            set i = i + 1
        endloop
    endmethod
    
    method award takes integer pid returns nothing
        local player p = players[pid]
        local location loc
        local item itm
        local integer i = 0
        
        if goldReward then
            call SetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD, gold + GetPlayerState(p, PLAYER_STATE_RESOURCE_GOLD))
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, CYAN + "Reward|r: " + SILVER + I2S(gold) + GOLD + " gold!")
        endif
        
        if keyReward then
            call playerDatum[pid].keys.add(keyTable[key])
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, CYAN + "Reward|r: " + GOLD + "key to " + SILVER + keyTable[key].name + "|r!")
        endif
        
        if expReward then
            call AddHeroXP(playerDatum[pid].pc.u, exp, true)
            call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, CYAN + "Reward|r: " + SILVER + I2S(exp) + GOLD + " experience points!")
        endif
        
        if itemReward then
            set loc = GetUnitLoc(playerDatum[pid].pc.u)
            loop
                exitwhen i >= MAX_ITEM_REWARD
                set itm = CreateItemLoc(items[i], loc)
                call SetItemUserData(itm, pid + 1)
                call UnitAddItem(playerDatum[pid].pc.u, itm)
                call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, CYAN + "Reward|r: " + GetItemName(itm))
                set i = i + 1
            endloop
            call RemoveLocation(loc)
        endif
	
        if questReward then
            loop
                exitwhen i >= MAX_QUEST_REWARD
                call playerDatum[pid].quests[this.quests[i]].enable(true)
				set i = i + 1
            endloop
        endif
		
		if unknownReward then
			call DisplayTimedTextToPlayer(p, 0, 0, DSPLY_TXT_DUR, CYAN + "Reward|r: " + "????????")
        endif
		
        if GetLocalPlayer() == p then
            call StartSound(gg_snd_ItemReceived)
        endif
        
        set p = null
        set loc = null
        set itm = null
    endmethod*/
endstruct

endlibrary