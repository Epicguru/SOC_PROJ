///question(choice_no, choice 1, choice 2, choice 3, choice 4, choice 5)
//Asks the user a question then returns the choice id. 2 choices min, 5 choices max.

if argument0 < 2 { exit; }
var qbox = instance_create(x,y,objQuestion);
qbox.choices = argument0
qbox.choice[0] = argument1
qbox.choice[1] = argument2
if argument3 != "" { qbox.choice[2] = argument3 }
if argument4 != "" { qbox.choice[3] = argument4 }
if argument5 != "" { qbox.choice[4] = argument5 }
qbox.object = object_index
qbox.visible = 0
