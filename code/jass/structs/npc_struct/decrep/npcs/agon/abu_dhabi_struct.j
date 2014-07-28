library AbuDhabiStruct requires PlayerDataTable

globals
    constant string ABU_DHABI_HEADER = ORANGE + "Abu Dhabi|r:" //the name of the character
    constant string ABU_DHABI_MSG = "\nAmusing performance."
endglobals

struct AbuDhabi extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD.string[INTRO] = ABU_DHABI_HEADER + ABU_DHABI_MSG
        return this
    endmethod
endstruct

endlibrary