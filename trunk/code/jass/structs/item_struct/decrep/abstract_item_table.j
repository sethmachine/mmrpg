library AbstractItemTable initializer initTable requires AbstractItemStruct//, ItemConstants

globals
  AbstractItem array AbstractItemTable[TOTAL_ITEMS]
endglobals

private function initTable takes nothing returns nothing
	//insert
    local AbstractItem i = AbstractItem.create('ward', MONSTER, false)
    set AbstractItemTable[i.index] = i
    //********************************************//
    set i = AbstractItem.create('ofro', MONSTER, true)
    set AbstractItemTable[i.index] = i
endfunction

endlibrary