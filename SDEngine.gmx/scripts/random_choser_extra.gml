
    var list;
    list = ds_list_create();
    
    if global.enemy[1] != 0 { ds_list_add(list,1); }
    if global.enemy[2] != 0 { ds_list_add(list,2); }
    if global.enemy[3] != 0 { ds_list_add(list,3); }
    if global.enemy[4] != 0 { ds_list_add(list,4); }
    if global.enemy[5] != 0 { ds_list_add(list,5); }
    
    ds_list_shuffle(list);
    enmy = ds_list_find_value(list, 0);
    ds_list_destroy(list);
