library AlfonzoStruct requires PlayerDataTable

globals
    constant string ALFONZO_HEADER = GREEN + "Alfonzo|r:" //the name of the character
    constant string ALFONZO_MSG = "\nHow can I make a profit out of you?\nHehe."
endglobals

struct Alfonzo extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD.string[INTRO] = ALFONZO_HEADER + ALFONZO_MSG
        return this
    endmethod
endstruct

endlibrary