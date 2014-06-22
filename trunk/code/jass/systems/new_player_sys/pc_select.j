scope PCSelect initializer init

globals
    constant string CHOOSE_MALE = "-male"
    constant string CHOOSE_FEMALE = "-female"
endglobals

private function main takes nothing returns boolean
    local string str
    local unit u
    local integer pid
    local integer i = 0
    local player owner
    local region r2
    //local Region r
    local item itm
    local unit creep
    local Monster m
    local PC pc //the player character being created
    set owner = GetTriggerPlayer()
    set pid = GetPlayerId(owner)
    set str = StringCase(GetEventPlayerChatString(), false)
    if str == CHOOSE_MALE then
        set u = CreateUnit(owner, MALE_ID, CITY_CENTER_X, CITY_CENTER_Y, 0)
        set pc = PC.create(u, pid, MALE)
        call DestroyTrigger(playerDatum[pid].npcTrig)
        set playerDatum[pid].npcTrig = null
    elseif str == CHOOSE_FEMALE then
        set u = CreateUnit(owner, FEMALE_ID, CITY_CENTER_X, CITY_CENTER_Y, 0)
        set pc = PC.create(u, pid, FEMALE)
        call DestroyTrigger(playerDatum[pid].npcTrig)
        set playerDatum[pid].npcTrig = null
    endif
    set playerDatum[pid].pc = pc
    /*set playerDatum[pid].npcs[Priest.index] = Priest.create()
    set playerDatum[pid].npcs[Farmer.index] = Farmer.create()
    set playerDatum[pid].npcs[Bank.index] = Bank.create()*/
    if owner == Player(0) then
    call playerDatum[pid].keys.add(keyTable[HOME])
    //call playerDatum[pid].keys.add(MagicKey.create("GreatBark", 0, gg_unit_w000_0002))
    //call playerDatum[pid].keys.add(MagicKey.create("Agon", 0, gg_unit_w000_0000))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), 0))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ward', CITY_CENTER_X, CITY_CENTER_Y), 0))
    /*set playerDatum[pid].quests[0] = Quest.create("Test Quest", pid)
    call playerDatum[pid].quests[0].enable()
    call playerDatum[pid].quests[0].setStage(0, "Pick up the orb of Frost")
    set playerDatum[pid].quests[0].goals[0] = Goal.create(ITEM_GET_GOAL, pid)
    call playerDatum[pid].quests[0].goals[0].setGoal('ofro', null, null)
    
    set r = Region.create()
    set r2 = CreateRegion()
    call RegionAddRect(r2, Rect(-12992, 14048, -12608, 14432))
    call r.addRect(-12992, -12608, 14048, 14496)
    //call CreateUnitAtLoc(Player(0), 'hgry', GetRectCenter(Rect(-12992, 14048, -12608, 14432)), 0)
    call playerDatum[pid].quests[0].setStage(1, "Enter the castle")
    set playerDatum[pid].quests[0].goals[1] = Goal.create(REGION_ENTER_GOAL, pid)
    call playerDatum[pid].quests[0].goals[1].setEnterRegionGoal(r2)
    call playerDatum[pid].quests[0].setStage(2, "Pick up Claws of Attack")
    set playerDatum[pid].quests[0].goals[2] = Goal.create(ITEM_TYPE_GET_GOAL, pid)
    call playerDatum[pid].quests[0].goals[2].setGoal('ratf', null, null)
    
    set playerDatum[0].quests[1] = Quest.create("Test Quest2", 0)
    set itm = CreateItemLoc('ofro', GetUnitLoc(playerDatum[0].pc.u))
    set i = playerDatum[0].quests[1].addGoal("Pick up the Mask of Death", ITEM_TYPE_GET_GOAL)
    call playerDatum[0].quests[1].goals[i].setGetItemByTypeGoal('modt')
    set i = playerDatum[0].quests[1].addGoal("Get your monsters from the farm", PARTY_SIZE_GOAL)
    call playerDatum[0].quests[1].goals[i].setPartySizeGoal(2)
    set i = playerDatum[0].quests[1].addGoal("Put one of your monsters back in the farm", PARTY_SIZE_GOAL)
    call playerDatum[0].quests[1].goals[i].setPartySizeGoal(1)
    set i = playerDatum[0].quests[1].addGoal("Give the Mask of Death to the farmer", ITEM_TYPE_GIVE_GOAL)
    call playerDatum[0].quests[1].goals[i].setGiveItemByTypeGoal('modt', 1, Farmer.index, INTRO, TAKE_BTTN)
    set i = playerDatum[0].quests[1].addGoal("Give 3 Mask of Deaths to the farmer", ITEM_TYPE_GIVE_GOAL)
    call playerDatum[0].quests[1].goals[i].setGiveItemByTypeGoal('modt', 3, Farmer.index, INTRO, TAKE_BTTN)
    call playerDatum[0].quests[1].enable()*/
    //set m = Monster.create(CreateUnitAtLoc(Player(10), DUNE_WORM, GetUnitLoc(FARMER_UNIT), 0), 0, 0)
    //call SetHeroLevel(m.u, 25, true)
    //call m.levelUpN(25)
    //call playerDatum[0].farm.addMonster(m)
    set creep = CreateUnitAtLoc(Player(10), SCARAB, GetUnitLoc(playerDatum[0].pc.u), 0)
    call SetHeroLevel(creep, 25, true)
    set m = Monster.create(creep, 0, 0)
    call m.newLevelUp(25)
    call playerDatum[0].farm.addMonster(m)
    call playerDatum[0].startQuest("New Beginnings", true)
    call playerDatum[0].startQuest("Flowers for Al-Jernan", false)
    set creep = null
    endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t
    local integer i = 0 //counter for looping through players
    loop
        exitwhen i == TOTAL_PLAYERS2
        set t = CreateTrigger()
        call TriggerRegisterPlayerChatEvent(t, Player(i), "-", false)
        call TriggerAddCondition(t, Condition(function main))
        set playerDatum[i].npcTrig = t
        call DisplayTimedTextToPlayer(Player(i), 0, 0, 15, "Are you a guy or a girl?  Type '-male' or '-female' to choose your gender!")
        set i = i + 1
    endloop
    set t = null    
endfunction

endscope