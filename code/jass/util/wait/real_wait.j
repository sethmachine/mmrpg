library RealWait initializer init
globals
    timer t_WAIT = CreateTimer()
endglobals

function RealWait takes real duration returns nothing
    local real time = TimerGetRemaining(t_WAIT)
    local real goal = time - duration
    loop
        exitwhen TimerGetRemaining(t_WAIT) < goal
        call TriggerSleepAction(bj_POLLED_WAIT_INTERVAL)
    endloop
endfunction

private function init takes nothing returns nothing
    call TimerStart(t_WAIT, 99999, false, null)
endfunction

endlibrary