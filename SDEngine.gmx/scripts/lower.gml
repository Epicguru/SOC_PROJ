///lower(string)
var s,c,result;

s = argument0;

c = string_char_at(s,0);
c = string_lower(c);

s = string_delete(s,1,1);
result = c+s;

return result;
