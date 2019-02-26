var list;
list = ds_list_create();

if !global.dead[1] { ds_list_add(list,1); }
if !global.dead[2] { ds_list_add(list,2); }
if !global.dead[3] { ds_list_add(list,3); }
if !global.dead[4] { ds_list_add(list,4); }

ds_list_shuffle(list);
global._pl = ds_list_find_value(list, 0);
ds_list_destroy(list);
