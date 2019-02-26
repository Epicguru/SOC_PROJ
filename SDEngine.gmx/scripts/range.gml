///range(min,max)
/*
Returns a random number between min and max.

min - The minimum value of the random number
max - The maximum value of the random number

Script by Fede-lasse
*/

var _min,_max;
_min = real(argument0);
_max = real(argument1);

return ceil(_min+random(_max-_min));
