///binary_in(buffer, typeList)
//returns a ds_map
var listLen, map;
listLen = ds_list_size(argument1)/2;
map = ds_map_create();
buffer_seek(argument0, buffer_seek_start, 0);
 
for (var i = 0; i < listLen; ++i) {
    map[? argument1[| i*2]] = buffer_read(argument0, argument1[| (i*2)+1]);
}
return map;
