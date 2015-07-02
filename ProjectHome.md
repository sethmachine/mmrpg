Notice: The project is currently in version skew.  I (the developer) took a hiatus before finishing some major interface changes to the vJASS code.

mmrpg II is a sand box RPG based on the Gameboy Color game Dragon Warrior Warrior Monsters II.  While being as faithful as possible to the original game, mmrpg incorporates features from open world games like Skyrim, creating a world where the player feels free to do what he/she wishes.

All the vJASS code, Lua object generation code, and Python scripts are present here.

The vJASS code is the heart of the project.  It contains all the structs and APIs needed for creating quests, creeps, code less loading/saving, breeding, stat growth, etc.  By itself the vJASS code should compile even if the objects/rawcodes it references do not exist.

The Lua object generation code creates all the custom WC3 objects used in the map.  These include all the details of every monster (model, height, tint, etc.), NPC, building, item, etc.  The Lua code can be run and imported as standalone scripts into any map, as they simply generate the custom objects.

Finally, the Python scripts form the glue of the project.  Some of the Lua and vJASS code uses additional syntax that acts as an import statement, creating more modular code.  The Python scripts simulate this modularity that regular vJASS lacks.  In addition, these scripts are responsible for more tedious tasks, such as generating the import scripts and constants.

When a working version is released, it will be added in the trunk under maps.

Feel free to browse the code, but please do not use without first acquiring permission from the author (me, sethmachine01@gmail.com)