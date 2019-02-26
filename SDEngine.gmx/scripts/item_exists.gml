///item_exists(inventory,item)
for (var i=0; i<20; i++)
{
    if ds_list_find_value(global.inv[argument0],i) = argument1 {
        return 1;
    }
}

return 0;
