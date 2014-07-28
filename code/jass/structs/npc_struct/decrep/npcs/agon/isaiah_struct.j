library IsaiahStruct requires PlayerDataTable

globals
    constant string ISAIAH_HEADER = PURPLE + "Isaiah|r:" //the name of the character
    constant string ISAIAH_MSG = "\n(Crying)"
endglobals

struct Isaiah extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD.string[INTRO] = ISAIAH_HEADER + ISAIAH_MSG
        return this
    endmethod
endstruct

endlibrary