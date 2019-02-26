///binary_out(typeList, dataMap)
//returns a buffer, if an element in the ds map is not found it will write a zero
var b, listLen, i;
typeList = argument0;
dataMap = argument1;
listLen = ds_list_size(typeList)/2;
b = buffer_create(1, buffer_grow, 1);
 
for (var i = 0; i < listLen; ++i) {
    if ds_map_exists(dataMap, typeList[| (i*2)])
        buffer_write(b, typeList[| (i*2)+1], ds_map_find_value(dataMap,typeList[| (i*2)]) );
    else
        buffer_write(b, typeList[| (i*2)+1], 0);
}
return b;
