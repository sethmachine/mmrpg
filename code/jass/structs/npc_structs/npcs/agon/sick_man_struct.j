library SickManStruct requires PlayerDataTable

globals
    constant string SICK_MAN_HEADER = PURPLE + "Sick Man|r:" //the name of the character
    constant string SICK_MAN_MSG = "\n(Coughing)"
endglobals

struct SickMan extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD.string[INTRO] = SICK_MAN_HEADER + SICK_MAN_MSG
        return this
    endmethod
endstruct

endlibrary