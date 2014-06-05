library ClearItems requires optional WorldBounds
/*
    This library fixes the leak and the lag caused by unremoved items,
    including powerups and manually-destroyed items.

    The dead items are periodically removed. You can adjust the period by changing
    the constant CLEANING_PERIOD. Note that items' death animations need some time
    to play so adjust the DEATH_TIME delay accordingly.

    If you don't know exactly what you are doing, you shouldn't change the life
    of a dead item; the items are no longer usable after their death but
    you can still change their life.  If you set their life to more than 0.405,
    they won't be properly cleaned. You should also remove items manually
    if you kill them when they are carried by a unit.
*/
    
    globals
        // Interval between item-cleanups.
        private constant real CLEANING_PERIOD = 15
    
        // Time for the item's death animation, optimized for tomes and runes.
        private constant real DEATH_TIME = 1.5
    endglobals
    
    globals
        private keyword S
        private integer N = 0
        private code s_code
        private boolexpr s_bool
        private timer s_timer = CreateTimer()
        private item array I
    endglobals
    
    private function DeleteItems takes nothing returns nothing
        loop
            set N = N - 1
            call SetWidgetLife(I[N], 1)
            call RemoveItem(I[N])
            set I[N] = null
            exitwhen (N == 0)
        endloop
        call TimerStart(s_timer, CLEANING_PERIOD - DEATH_TIME, true, s_code)
    endfunction
    
    private function CleanItems takes nothing returns boolean
        if (GetWidgetLife(GetFilterItem()) < 0.405) then
            set I[N] = GetFilterItem()
            set N = N + 1
        endif
        return false
    endfunction
    
    private function SweepItems takes nothing returns nothing
        static if (LIBRARY_WorldBounds) then
            call EnumItemsInRect(WorldBounds.world, s_bool, null)
        else
            call EnumItemsInRect(S.world, s_bool, null)
        endif
        if (N > 0) then
            call TimerStart(s_timer, DEATH_TIME, false, function DeleteItems)
        endif
    endfunction
    
    private struct S extends array
        static if (not LIBRARY_WorldBounds) then
            static rect world
        endif
        static method onInit takes nothing returns nothing
            static if (not LIBRARY_WorldBounds) then
                set world = GetWorldBounds()
            endif
            set s_code = function SweepItems
            set s_bool = Filter(function CleanItems)
            call TimerStart(s_timer, CLEANING_PERIOD, true, s_code)
        endmethod
    endstruct
    
endlibrary