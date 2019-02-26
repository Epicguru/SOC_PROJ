//Writes a line to the on screen dev console
var line = argument0;

if object_get_name(object_index) != "objDebug" {
    line = object_get_name(object_index)+": "+argument0
}

if objDebug.cursor_pos < 9 {
    objDebug.buffer[objDebug.cursor_pos] = line
    objDebug.cursor_pos++
} else {
    objDebug.buffer[objDebug.cursor_pos] = line
    for(var i=1;i<array_length_1d(objDebug.buffer);i++) {
        objDebug.buffer[i-1] = objDebug.buffer[i] 
    }
}
