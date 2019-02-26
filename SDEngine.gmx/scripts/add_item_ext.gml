///add_item_ext(item)
//returns -1 if there's no space left on any inventories
//returns an inventory id if there's space left

for (var i=0;i<global.pl_count;i++) {
    if item_exists_at_slot(i,19) {
        write_line("No space left on inventory "+string(i))
    } else {
        ds_list_add(global.inv[i],argument0)
        return i;
    }
}

return -1
