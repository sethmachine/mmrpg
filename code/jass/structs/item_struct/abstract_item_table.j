library AbstractItemTable initializer initTable requires AbstractItemStruct

globals
  AbstractItem array AbstractItemTable[TOTAL_ITEMS]
endglobals

private function initTable takes nothing returns nothing
    local AbstractItem i = AbstractItem.create('ward', MONSTER, false)
    set AbstractItemTable[i.index] = i
    //********************************************//
    set i = AbstractItem.create('ofro', MONSTER, true)
    set AbstractItemTable[i.index] = i
endfunction

endlibrary