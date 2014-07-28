library Alfonzo2Struct requires PlayerDataTable

globals
    constant string ALFONZO2_MSG = "\nAre you ready to perform?\nHehe hehe."
endglobals

struct Alfonzo2 extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD.string[INTRO] = ALFONZO_HEADER + ALFONZO2_MSG
        return this
    endmethod
endstruct

endlibrary