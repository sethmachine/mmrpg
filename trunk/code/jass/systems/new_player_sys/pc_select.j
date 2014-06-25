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
    local item itm
    local unit creep
    local Monster m
    local PC pc //the player character being created
    set owner = GetTriggerPlayer()
    set pid = GetPlayerId(owner)
    set str = StringCase(GetEventPlayerChatString(), false)
	call SetPlayerAllianceStateBJ(owner, BOT_ALLY, bj_ALLIANCE_ALLIED)
	call SetPlayerAllianceStateBJ(BOT_ALLY, owner, bj_ALLIANCE_ALLIED)
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
    //if owner == Player(0) then
    call playerDatum[pid].keys.add(keyTable[HOME])
    call playerDatum[pid].keys.add(keyTable[AGON])
    call playerDatum[pid].bank.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), pid))
    call playerDatum[pid].backpack.addItem(Item.create(CreateItem('ofro', CITY_CENTER_X, CITY_CENTER_Y), pid))
    set creep = CreateUnitAtLoc(BOT_ALLY, SLIME, FARM_LOC, 0)
    call SetHeroLevel(creep, 5, true)
    set m = Monster.create(creep, pid, GetRandomInt(0, 1))
    call m.levelUp(5)
    call playerDatum[pid].farm.addMonster(m)
    call playerDatum[pid].startQuest("New Beginnings", true)
    set creep = null
    //endif
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t
    local integer i = 0 //counter for looping through players
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