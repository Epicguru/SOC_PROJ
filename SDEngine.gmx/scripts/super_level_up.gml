///super_level_up(new level,player)
repeat argument0-global.s_level[argument1] {
    var oldhp, oldpp, oldoff, olddef, oldluck, oldguts, oldspd, oldvit, oldiq, oldlevel, r;
    oldlevel = global.s_level[argument1];
    oldoff = global.s_baseoff[argument1];
    olddef = global.s_basedef[argument1];
    oldguts = global.s_baseguts[argument1];
    oldluck = global.s_luck[argument1]
    oldspd = global.s_basespeed[argument1]
    oldvit = global.s_vitality[argument1]
    oldiq = global.s_baseiq[argument1]
    oldhp = global.s_hpmax[argument1];
    oldpp = global.s_ppmax[argument1];
    
    if global.s_level[argument1] < 101 { global.s_exp[argument1] = global.s_nextexp[global.s_level[argument1]] }
    global.s_level[argument1]++;

    //Offense
    if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_baseoff[argument1] += round(((global.s_offgrowth[argument1] * oldlevel) - ((oldoff - 2) * 10)) * r/50)
    
    //Defense
    if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_basedef[argument1] += round(((global.s_defgrowth[argument1] * oldlevel) - ((olddef - 2) * 10)) * r/50)
    
    //Speed
    if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_basespeed[argument1] += round(((global.s_spdgrowth[argument1] * oldlevel) - ((oldspd - 2) * 10)) * r/50)
    
    //Guts
    if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_baseguts[argument1] += round(((global.s_gutsgrowth[argument1] * oldlevel) - ((oldguts - 2) * 10)) * r/50)
    
    //Luck
    if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_luck[argument1] += round(((global.s_luckgrowth[argument1] * oldlevel) - ((oldluck - 2) * 10)) * r/50)
    
    //Vitality
    if global.s_level[argument1] <= 10 {
        r = 5
    }
    else if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_vitality[argument1] += round(((global.s_vitgrowth[argument1] * oldlevel) - ((oldvit - 2) * 10)) * r/50)

    //IQ
    if global.s_level[argument1] <= 10 {
        r = 5
    }
    else if global.s_level[argument1] mod 4 == 0 {
        r = choose(7,8,9,10)
    } else {
        r = choose(3,4,5,6)
    }
    global.s_baseiq[argument1] += round(((global.s_iqgrowth[argument1] * oldlevel) - ((oldiq - 2) * 10)) * r/50)
    
    //HP
    global.s_hpmax[argument1] = 15*global.s_vitality[argument1];
    if global.s_hpmax[argument1]-oldhp < 2 {
        global.s_hpmax[argument1] += choose(1,2,3)
    }
    global.s_hpmax[argument1] = min(global.s_hpmax[argument1],999)
    global.s_hp[argument1] += global.s_hpmax[argument1]-oldhp
    
    //PP
    global.s_ppmax[argument1] = 5*global.s_baseiq[argument1];
    if global.s_ppmax[argument1]-oldhp < 2 {
        global.s_ppmax[argument1] += choose(0,1,2)
    }
    global.s_ppmax[argument1] = min(global.s_ppmax[argument1],999)
    global.s_pp[argument1] += global.s_ppmax[argument1]-oldpp
    
    //Learning new PSI
    if global.s_level[argument1] < 101 {
        var lvskill;
        lvskill = global.lv_skill[argument1,global.s_level[argument1]];
        
        if lvskill != 0 {
            //We're learning something new.
            global.s_skill_learnt[argument1,lvskill] = 1; // Activates slot lvskill.
            global.lv_skill[argument1,global.s_level[argument1]] = 0; // Deletes the entry, making it impossible for the player to learn the skill again
        }
    }
    
}

eqp_boosts(argument1)
