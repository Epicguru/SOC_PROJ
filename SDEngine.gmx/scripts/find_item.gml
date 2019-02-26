///find_item(item,inventory)
//Returns index of found item, else returns -1

for (var i=0; i<20; i++)
{
    if ds_list_find_value(global.inv[argument1],i) = argument0 {
        return i;
    }
}

return -1;
