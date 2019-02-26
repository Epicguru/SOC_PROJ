///start_battle(enemy1,enemy2,enemy3,enemy4,enemy5,Boss? 0: Normal - 1: Boss,Type? 0: Blue - 1: Green - 2: Red)
var enemy1,enemy2,enemy3,enemy4,enemy5,boss,type;
enemy1 = argument0 // These 5 are all battle system enemy objects
enemy2 = argument1
enemy3 = argument2
enemy4 = argument3
enemy5 = argument4
boss   = argument5 // 0 - Normal battle; 1 - Boss battle
type   = argument6 // 0 - Normal; 1 - Green Battle; 2 - Red Battle

objPlayer.canmove = 0
global.theroom = room
global.enemy[1] = enemy1
global.enemy[2] = enemy2
global.enemy[3] = enemy3
global.enemy[4] = enemy4
global.enemy[5] = enemy5
global.en_count = (enemy1 != 0) + (enemy2 != 0) + (enemy3 != 0) + (enemy4 != 0) + (enemy5 != 0) 
global.boss = boss
global.battle_type = type
instance_create(0,0,objBattleSwirl)
