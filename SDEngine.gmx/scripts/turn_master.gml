//This is how you do speed-ordered battles. And it even works, too groovy!
//You could even add support for more than 3 enemies (I use 5 here), and more than one npc. It's incredible

if !ds_exists(turn_order,ds_type_priority) {
    write_line("I'm the turn master")
    turn_order = ds_priority_create();
    
    if !global.dead[1] { ds_priority_add(turn_order, "player1", global.s_speed[1]); }
    if global.pl_count > 1 and !global.dead[2] { ds_priority_add(turn_order, "player2", global.s_speed[2]); }
    if global.pl_count > 2 and !global.dead[3] { ds_priority_add(turn_order, "player3", global.s_speed[3]); }
    if global.pl_count > 3 and !global.dead[4] { ds_priority_add(turn_order, "player4", global.s_speed[4]); }
    if global.enemy[1] != 0 { ds_priority_add(turn_order, "enemy1", global.enemy[1].e_speed); }
    if global.enemy[2] != 0 { ds_priority_add(turn_order, "enemy2", global.enemy[2].e_speed); }
    if global.enemy[3] != 0 { ds_priority_add(turn_order, "enemy3", global.enemy[3].e_speed); }
    if global.enemy[4] != 0 { ds_priority_add(turn_order, "enemy4", global.enemy[4].e_speed); }
    if global.enemy[5] != 0 { ds_priority_add(turn_order, "enemy5", global.enemy[5].e_speed); }
    if instance_exists(objInBattleNPC) { ds_priority_add(turn_order, "npc", objInBattleNPC.a_speed); }
}
