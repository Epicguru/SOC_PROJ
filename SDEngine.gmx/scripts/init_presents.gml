global.presents = ds_map_create();

// ds_map_add(global.presents, pid, itemid);
// if itemid = 0  then the present was taken already
// if itemid = -1 then the present doesn't contain anything

ds_map_add(global.presents, 0, 0);  //Default should remain 0
ds_map_add(global.presents, 1, 4);  //Easy grip mop, storage dungeon (top left)
ds_map_add(global.presents, 2, 2);  //Space food, room with the depressed broom
ds_map_add(global.presents, 3, 3);  //Super space food, storage dungeon (close to the exit)
ds_map_add(global.presents, 4, 10); //Antidote, cave in Happy Summit, Venus
ds_map_add(global.presents, 5, 6);  //Bomb, storage dungeon (bottom right)
ds_map_add(global.presents, 6, 25);  //Horn of life, L shaped room in the palace
ds_map_add(global.presents, 7, 25);  //Horn of life, inside a cell cafeteria in the Venusian prison
ds_map_add(global.presents, 8, -1);  //?????, switches room in the palace, topmost gift
ds_map_add(global.presents, 9, -1);  //?????, switches room in the palace, the other one
ds_map_add(global.presents, 10, -1);  //?????, spider cave (top left)
ds_map_add(global.presents, 11, -1);  //?????, small room in spider cave
ds_map_add(global.presents, 12, -1);  //?????, spider cave (boss room)
ds_map_add(global.presents, 13, -1);  //?????, spider cave - Room with the moles
ds_map_add(global.presents, 14, -1);  //?????, first room in Venusian prison
ds_map_add(global.presents, 15, -1);  //Empty, Venusian prison - Ventilation shaft (bottom)
ds_map_add(global.presents, 16, -1);  //?????, Venusian prison - Ventilation shaft (top)
ds_map_add(global.presents, 17, -1);  //?????, Venusian hangar - Before boss room
ds_map_add(global.presents, 18, 26); 
