library TombstoneStruct requires PlayerDataTable

globals
    constant string TOMBSTONE_HEADER = PURPLE + "Tombstone|r:" //the name of the character
    constant string TOMBSTONE_MSG = "\nHere lies Al-Jernan,\naccursed may his name be."
	private constant string TAKE_BTTN_MSG = "Place flowers on tombstone."
endglobals

struct Tombstone extends NPC
    static method create takes nothing returns thistype
        local thistype this = thistype.allocate()
        set oneD.string[INTRO] = TOMBSTONE_HEADER + TOMBSTONE_MSG
		call addBttnToDialog(INTRO, TAKE_BTTN_MSG)
        return this
    endmethod
endstruct

endlibrary