library Colors initializer init

globals
    constant string PINK = "|ffc0cb"
    constant string RED = "|cffff0000"
    constant string BLUE = "|cff0000ff"
    constant string ORANGE = "|cffffa500"
    constant string GREEN = "|cff008000"
    constant string GOLD = "|cffffd700"
    constant string CYAN = "|cff00ffff"
    constant string SILVER = "|cffc0c0c0"
    constant string PURPLE = "|cff800080"
    constant string YELLOW = "|cffffff00"
    constant integer TOTAL_LIGHTNINGS = 14
    string array LIGHTNING[TOTAL_LIGHTNINGS]
endglobals

private function init takes nothing returns nothing
    set LIGHTNING[0] = "CLPB"
    set LIGHTNING[1] = "CLSB"
    set LIGHTNING[2] = "DRAB"
    set LIGHTNING[3] = "DRAL"
    set LIGHTNING[4] = "DRAM"
    set LIGHTNING[5] = "AFOD"
    set LIGHTNING[6] = "FORK"
    set LIGHTNING[7] = "HWPB"
    set LIGHTNING[8] = "HWSB"
    set LIGHTNING[9] = "CHIM"
    set LIGHTNING[10] = "LEAS"
    set LIGHTNING[11] = "MBUR"
    set LIGHTNING[12] = "MFPB"
    set LIGHTNING[13] = "SPLK"
endfunction

endlibrary