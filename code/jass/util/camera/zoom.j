library Zoom initializer init

globals
endglobals

private function main takes nothing returns boolean
    local integer distance = S2I(SubString(GetEventPlayerChatString(), 5, 10))
    call print(I2S(distance))
    call SetCameraFieldForPlayer(GetTriggerPlayer(), CAMERA_FIELD_TARGET_DISTANCE, distance, 1.0)
    return false
endfunction

private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    call TriggerRegisterPlayerChatEvent(t, Player(0), "-zoom", false)
    call TriggerAddCondition(t, Condition(function main))
endfunction

endlibrary