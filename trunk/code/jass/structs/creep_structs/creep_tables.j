library CreepTables initializer init requires CreepTableStruct

globals
    constant integer MAX_CREEP_TABLES = 8000
    CreepTable array creepTables
    constant integer AGON_ZONE_1 = 0
    constant integer AGON_ZONE_2 = 1
    constant integer AGON_ZONE_3 = 2
    constant integer AGON_ZONE_4 = 3
    constant integer AGON_ZONE_5 = 4
endglobals

private function init takes nothing returns nothing
    local CreepTable ct
    //****************************
    //********** AGON: Zone 1 ****
    //****************************
    set ct = CreepTable.create(1,3)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    call ct.add(DUNE_FLYER)
    call ct.add(DUNE_FLYER)
    set creepTables[AGON_ZONE_1] = ct
    //****************************
    //********** AGON: Zone 2 ****
    //****************************
    set ct = CreepTable.create(1,4)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    call ct.add(DUNE_FLYER)
    call ct.add(DUNE_FLYER)
    call ct.add(SCORPION)
    call ct.add(SCORPION)
    set creepTables[AGON_ZONE_2] = ct
    //****************************
    //********** AGON: Zone 3 ****
    //****************************
    set ct = CreepTable.create(1,5)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_FLYER)
    call ct.add(DUNE_FLYER)
    call ct.add(SCORPION)
    call ct.add(HARPY)
    call ct.add(HARPY)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    set creepTables[AGON_ZONE_3] = ct
    //****************************
    //********** AGON: Zone 4 ****
    //****************************
    set ct = CreepTable.create(1,7)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_FLYER)
    call ct.add(DUNE_FLYER)
    call ct.add(SCORPION)
    call ct.add(SCORPION)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    set creepTables[AGON_ZONE_4] = ct
    //****************************
    //********** AGON: Zone 5 ****
    //****************************
    set ct = CreepTable.create(1,7)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_WORM)
    call ct.add(DUNE_FLYER)
    call ct.add(DUNE_FLYER)
    call ct.add(VULTURE)
    call ct.add(VULTURE)
    call ct.add(KING_COBRA)
    set creepTables[AGON_ZONE_5] = ct
endfunction


endlibrary