library PortalTrig requires PlayerDataTable

globals
    private constant string PORTAL_MSG = CYAN + "Select a key to use."
    constant integer PORTAL_ID = 'w00b'
endglobals

private function main takes nothing returns boolean
    local button b = GetClickedButton()
    local player p = GetTriggerPlayer()
    local integer pid = GetPlayerId(p)
    local integer i = 0 //loop through all the buttons
    local MagicKey target
    local MagicKeyGroup keys = playerDatum[pid].keys
    loop
        exitwhen i == MAX_KEYS
        if b == keys.bttns[i] then
            set target = keys.keys[i]
            call target.warp(pid)
            if GetLocalPlayer() == Player(pid) then
                call PanCameraToTimed(GetLocationX(target.targetLoc), GetLocationY(target.targetLoc), 0)
            endif
        endif
        set i = i + 1
    endloop
    call DestroyTrigger(GetTriggeringTrigger())
    set b = null
    set p = null
    return false
endfunction

function usePortal takes integer pid returns nothing
    local trigger t = CreateTrigger()
    call playerDatum[pid].keys.displayGroup(PORTAL_MSG)
    call TriggerRegisterDialogEvent(t, playerDatum[pid].keys.kDialog)
    call TriggerAddCondition(t, Condition(function main))
    set t = null
endfunction
        
endlibrary