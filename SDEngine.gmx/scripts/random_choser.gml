
    var list;
    list = ds_list_create();
    
    if global.enemy[1] != 0 { ds_list_add(list,global.enemy[1]); }
    if global.enemy[2] != 0 { ds_list_add(list,global.enemy[2]); }
    if global.enemy[3] != 0 { ds_list_add(list,global.enemy[3]); }
    if global.enemy[4] != 0 { ds_list_add(list,global.enemy[4]); }
    if global.enemy[5] != 0 { ds_list_add(list,global.enemy[5]); }
    
    ds_list_shuffle(list);
    global.target[global._pl] = ds_list_find_value(list, 0);
    ds_list_destroy(list);
    write_line("Picked enemy "+object_get_name(global.target[global._pl]))
