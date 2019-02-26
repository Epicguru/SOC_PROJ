// Called in multiple places after a battle is over.

global.en_count = 1;
global.enemy[1] = 0;
global.enemy[2] = 0;
global.enemy[3] = 0;
global.enemy[4] = 0;
global.enemy[5] = 0;
global.enemy_id[1] = 0;
global.enemy_id[2] = 0;
global.enemy_id[3] = 0;
global.enemy_id[4] = 0;
global.enemy_id[5] = 0;
global.current_inv = 0;
global.custom_msg = 0;

for (var i=1;i<global.pl_count+1;i++){
    if !global.dead[i] {
        if room = rmBattle {
            global.bgMusic = 0;
            if global.s_hp[i] = 0 and global.healthbar[i].hp_actual < 1 {
                global.s_hp[i] = 1
            } else {
                if global.s_hp[i] < ceil(global.healthbar[i].hp_actual) {
                    global.s_hp[i] = ceil(global.healthbar[i].hp_actual)
                } else {
                    global.healthbar[i].hp_actual = global.s_hp[i]
                }
            }
        }
    } else {
        global.s_numb[i] = 0;
        global.s_poison[i] = 0;
        global.s_strange[i] = 0;
        global.s_infected[i] = 0;
    }

    global.s_crying[i] = 0;
    global.s_solid[i] = 0;
    global.s_shocked[i] = 0;
    global.s_cantconcentrate[i] = 0;
    global.s_asleep[i] = 0;
    
    if room = rmBattle {
        global.s_off[i] = global.s_realoff[i]
        global.s_def[i] = global.s_realdef[i]
        global.s_guts[i] = global.s_realguts[i]
    }
    
    global.has_shield[i]           = 0
    global.has_pshield[i]          = 0
    global.has_psishield[i]        = 0
    global.has_psipshield[i]       = 0
    global.s_shieldlife[i] = 0
    
    global.remove_pp[i] = 0;  
}
