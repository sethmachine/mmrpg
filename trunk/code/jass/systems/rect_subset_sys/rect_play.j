scope RectPlay initializer init

globals
    private Quad q
    rect r
endglobals

private function main takes nothing returns boolean
    local integer iter = S2I(SubString(GetEventPlayerChatString(), 2, 3))
    //this is where it crashes, in flush()
    call q.flush()
    call print("passed flush")
    //call print(I2S(T))
    call q.destroy()
    //set q = Quad.create(Rect(-13440, 9184, -11744, 10688))
    set q = Quad.create(Rect(-992, 928, 3360, 7040))
    call q.highlight()
    call q.partitionAlg(iter)
    //call print(I2S(T))
    //set T = 0
    return false
endfunction


private function init takes nothing returns nothing
    local trigger t = CreateTrigger()
    local Quad p
    call TriggerRegisterPlayerChatEvent(t, Player(0), "--", false)
    call TriggerAddCondition(t, Condition(function main))
    //set q = Quad.create(Rect(-13440, 9184, -11744, 10688))
    set q = Quad.create(Rect(-992, 928, 3360, 7040))
    call q.highlight()
    call q.partitionAlg(1)
    //call print(I2S(T))
endfunction

endscope