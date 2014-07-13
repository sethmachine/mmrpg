scope PCSelect initializer init

globals
    constant string CHOOSE_MALE = "-male"
    constant string CHOOSE_FEMALE = "-female"
	rect townArea
endglobals

private function main takes nothing returns boolean
    local string str
    local unit u
    local integer pid
    local integer i = 0
    local player owner
    local region r2
    local item itm
    local unit creep
	local rect sewersArea
    local Monster m
    local PC pc //the player character being created
    set owner = GetTriggerPlayer()
    set pid = GetPlayerId(owner)
    set str = StringCase(GetEventPlayerChatString(), false)
	set sewersArea = Rect(3456, 11552, 9408, 16352)
	call FogModifierStart(CreateFogModifierRect(owner, FOG_OF_WAR_VISIBLE, townArea, true, false))
	call FogModifierStart(CreateFogModifierRect(owner, FOG_OF_WAR_MASKED, sewersArea, true, false))
	//call SetPlayerAllianceStateBJ(owner, BOT_ALLY, bj_ALLIANCE_ALLIED)
	//call SetPlayerAllianceStateBJ(BOT_ALLY, owner, bj_ALLIANCE_ALLIED)
    if str == CHOOSE_MALE then
        set u = CreateUnitAtLoc(owner, MALE_ID, GREATBARK_LOC, 0)
        set pc = PC.create(u, pid, MALE)
        call DestroyTrigger(playerDatum[pid].npcTrig)
        set playerDatum[pid].npcTrig = null
    elseif str == CHOOSE_FEMALE then
        set u = CreateUnitAtLoc(owner, FEMALE_ID, GREATBARK_LOC, 0)
        set pc = PC.create(u, pid, FEMALE)
        call DestroyTrigger(playerDatum[pid].npcTrig)
        set playerDatum[pid].npcTrig = null
    endif
    set playerDatum[pid].pc = pc
    //if owner == Player(0) then
    call playerDatum[pid].keys.add(keyTable[HOME])
    //call playerDatum[pid].keys.add(keyTable[AGON])
    call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(HERBWATER, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(LOVEWATER, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(RIB, GREATBARK_LOC), pid))
    call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(WARP_STAFF, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(LEATHER_ARMOR_0, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(BASIC_SWORD_0, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(MAGE_STAFF_0, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(PENDANT_OF_ENERGY_0, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(WAR_AXE_0, GREATBARK_LOC), pid))
	call playerDatum[pid].bank.addItem(Item.create(CreateItemLoc(HEALTH_STONE_0, GREATBARK_LOC), pid))
    set creep = CreateUnitAtLoc(BOT_ALLY, SLIME, FARM_LOC, 0)
    call SetHeroLevel(creep, 5, true)
    set m = Monster.create(creep, pid)
    call m.levelUp(5)
    call playerDatum[pid].farm.addMonster(m)
    /*set creep = CreateUnitAtLoc(BOT_ALLY, SLIME, FARM_LOC, 0)
    call SetHeroLevel(creep, 5, true)
    set m = Monster.create(creep, pid)
    call m.levelUp(5)
    call playerDatum[pid].farm.addMonster(m)
    set creep = CreateUnitAtLoc(BOT_ALLY, ROSEVINE, FARM_LOC, 0)
    call SetHeroLevel(creep, 30, true)
    set m = Monster.create(creep, pid)
    call m.levelUp(30)
    call playerDatum[pid].farm.addMonster(m)*/
    call playerDatum[pid].startQuest("New Beginnings", true)
    set creep = null
	if DEBUG then
		//call Cheat("whosyourdaddy")
		//call Cheat("iseedeadpeople")
		call Cheat("greedisgood 100000")
		set playerDatum[pid].warps[KALKA_SEWERS].isActive = true
		set playerDatum[pid].warps[KALKA_SEWERS_EXIT].isActive = true
	endif
    //endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t
    local integer i = 0 //counter for looping through players
	set townArea = Rect(-15744, 9504, -5000, 15584)
	call SetPlayerAllianceStateBJ(BOT_ENEMY, BOT_ALLY, bj_ALLIANCE_ALLIED)
	call SetPlayerAllianceStateBJ(BOT_ALLY, BOT_ENEMY, bj_ALLIANCE_ALLIED)
    loop
        exitwhen i == TOTAL_PLAYERS
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