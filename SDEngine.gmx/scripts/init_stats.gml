// Main stats
global.s_name[1]            = "";
global.s_name[2]            = "";
global.s_name[3]            = "";
global.s_name[4]            = "";
global.psiuser[1]           = 1;
global.psiuser[2]           = 1;
global.psiuser[3]           = 0;
global.psiuser[4]           = 0;
global.money                = 50;
global.money_saved          = 1000;

global.s_hp[1]              = 30;
global.s_pp[1]              = 10;
global.s_hpmax[1]           = global.s_hp[1];
global.s_ppmax[1]           = global.s_pp[1];
global.s_baseoff[1]         = 2;
global.s_basedef[1]         = 2;
global.s_baseguts[1]        = 2;
global.s_basespeed[1]       = 2;
global.s_baseiq[1]          = 2;
global.s_off[1]             = global.s_baseoff[1];
global.s_def[1]             = global.s_basedef[1];
global.s_luck[1]            = 2;
global.s_speed[1]           = global.s_basespeed[1];
global.s_guts[1]            = global.s_baseguts[1];
global.s_vitality[1]        = 2;
global.s_iq[1]              = global.s_baseiq[1];
global.s_guard[1]           = 1;
global.s_exp[1]             = 0;
global.s_level[1]           = 1;
global.s_next[1]            = 2;

global.s_hp[2]              = 30;
global.s_pp[2]              = 10;
global.s_hpmax[2]           = global.s_hp[2];
global.s_ppmax[2]           = global.s_pp[2];
global.s_baseoff[2]         = 2;
global.s_basedef[2]         = 2;
global.s_baseguts[2]        = 2;
global.s_basespeed[2]       = 2;
global.s_baseiq[2]          = 2;
global.s_off[2]             = global.s_baseoff[2];
global.s_def[2]             = global.s_basedef[2];
global.s_luck[2]            = 2;
global.s_speed[2]           = global.s_basespeed[2];
global.s_guts[2]            = global.s_baseguts[2];
global.s_vitality[2]        = 2;
global.s_iq[2]              = global.s_baseiq[2];
global.s_guard[2]           = 1;
global.s_exp[2]             = 0;
global.s_level[2]           = 1;
global.s_next[2]            = 2;

global.s_hp[3]              = 30;
global.s_pp[3]              = 10;
global.s_hpmax[3]           = global.s_hp[3];
global.s_ppmax[3]           = global.s_pp[3];
global.s_baseoff[3]         = 2;
global.s_basedef[3]         = 2;
global.s_baseguts[3]        = 2;
global.s_basespeed[3]       = 2;
global.s_baseiq[3]          = 2;
global.s_off[3]             = global.s_baseoff[3];
global.s_def[3]             = global.s_basedef[3];
global.s_luck[3]            = 2;
global.s_speed[3]           = global.s_basespeed[3];
global.s_guts[3]            = global.s_baseguts[3];
global.s_vitality[3]        = 2;
global.s_iq[3]              = global.s_baseiq[3];
global.s_guard[3]           = 1;
global.s_exp[3]             = 0;
global.s_level[3]           = 1;
global.s_next[3]            = 2;

global.s_hp[4]              = 30;
global.s_pp[4]              = 10;
global.s_hpmax[4]           = global.s_hp[4];
global.s_ppmax[4]           = global.s_pp[4];
global.s_baseoff[4]         = 2;
global.s_basedef[4]         = 2;
global.s_baseguts[4]        = 2;
global.s_basespeed[4]       = 2;
global.s_baseiq[4]          = 2;
global.s_off[4]             = global.s_baseoff[4];
global.s_def[4]             = global.s_basedef[4];
global.s_luck[4]            = 2;
global.s_speed[4]           = global.s_basespeed[4];
global.s_guts[4]            = global.s_baseguts[4];
global.s_vitality[4]        = 2;
global.s_iq[4]              = global.s_baseiq[4];
global.s_guard[4]           = 1;
global.s_exp[4]             = 0;
global.s_level[4]           = 1;
global.s_next[4]            = 2;

//Equipment
global.weap_equip[1]        = 0;
global.body_equip[1]        = 0;
global.arm_equip[1]         = 0;
global.other_equip[1]       = 0;

global.weap_equip[2]        = 0;
global.body_equip[2]        = 0;
global.arm_equip[2]         = 0;
global.other_equip[2]       = 0;

global.weap_equip[3]        = 0;
global.body_equip[3]        = 0;
global.arm_equip[3]         = 0;
global.other_equip[3]       = 0;

global.weap_equip[4]        = 0;
global.body_equip[4]        = 0;
global.arm_equip[4]         = 0;
global.other_equip[4]       = 0;

/*Status ailments
//  Crying:             9/16 chance to miss a physical attack, 1/16 chance to stop crying
//  Poison:             Lose 20 +/- 5 HP each turn or every 3 seconds in the overworld
//  Infected:           Lose 40 +/- 10 HP each turn (basically twice as strong as poison) or every 3 seconds in the overworld
//  Asleep:             (Hypnosis) 3/4 chance to lose a turn, 1/4 chance to wake up, will render you unable to dodge an attack
//  Numb:               3/4 chance to lose a turn for 5 turns, will render you unable to dodge an attack, makes you walk slowly in the overworld
//  Solid:              Lose a turn, will render you unable to dodge an attack
//  Strange:            May make you attack your own allies or waste food items, randomly inverts your controls in the overworld
//  Shocked:            1/2 chance to lose a turn for 5 turns
//  Can't concentrate:  Can't use PSI or skills for 3 turns
//  Dead:               The worst status effect
//  More to come?
*/
global.s_crying[1] = 0
global.s_crying[2] = 0
global.s_crying[3] = 0
global.s_crying[4] = 0

global.s_poison[1] = 0
global.s_poison[2] = 0
global.s_poison[3] = 0
global.s_poison[4] = 0

global.s_infected[1] = 0
global.s_infected[2] = 0
global.s_infected[3] = 0
global.s_infected[4] = 0

global.s_radiation[1] = 0
global.s_radiation[2] = 0
global.s_radiation[3] = 0
global.s_radiation[4] = 0

global.s_asleep[1] = 0
global.s_asleep[2] = 0
global.s_asleep[3] = 0
global.s_asleep[4] = 0

global.s_numb[1] = 0
global.s_numb[2] = 0
global.s_numb[3] = 0
global.s_numb[4] = 0

global.s_solid[1] = 0
global.s_solid[2] = 0
global.s_solid[3] = 0
global.s_solid[4] = 0

global.s_strange[1] = 0
global.s_strange[2] = 0
global.s_strange[3] = 0
global.s_strange[4] = 0

global.s_shocked[1] = 0
global.s_shocked[2] = 0
global.s_shocked[3] = 0
global.s_shocked[4] = 0

global.s_cantconcentrate[1] = 0
global.s_cantconcentrate[2] = 0
global.s_cantconcentrate[3] = 0
global.s_cantconcentrate[4] = 0

global.dead[1]   = 0;
global.dead[2]   = 0;
global.dead[3]   = 0;
global.dead[4]   = 0;

global.numb_timer[1] = 3;                  //Actually works for shock as well.
global.numb_timer[2] = 3;
global.numb_timer[3] = 3;
global.numb_timer[4] = 3;

global.conc_timer[1] = 3;
global.conc_timer[2] = 3;
global.conc_timer[3] = 3;
global.conc_timer[4] = 3;

global.sleep_timer[1] = 3;
global.sleep_timer[2] = 3;
global.sleep_timer[3] = 3;
global.sleep_timer[4] = 3;

//Resistances and weaknesses
global.fire_resistance[1]      = 0         // For fire, freeze, thunder
global.freeze_resistance[1]    = 0         // 0: No resistance; 1: -30% damage; 2: -60% damage; 3: -90% damage; 4: Invulnerable; Negative resistances will make you weaker!
global.thunder_resistance[1]   = 0         // For Hypnosis, paralysis, flash
global.hypno_resistance[1]     = 0         // 0: 1% chance to avoid; 1: 30% chance to avoid; 2: 60% chance to avoid; 3: 90% chance to avoid; 4: Invulnerable; 
global.paralysis_resistance[1] = 0
global.flash_resistance[1]     = 0

global.fire_resistance[2]      = 0   
global.freeze_resistance[2]    = 0
global.thunder_resistance[2]   = 0 
global.hypno_resistance[2]     = 0
global.paralysis_resistance[2] = 0
global.flash_resistance[2]     = 0

global.fire_resistance[3]      = 0      
global.freeze_resistance[3]    = 0  
global.thunder_resistance[3]   = 0   
global.hypno_resistance[3]     = 0
global.paralysis_resistance[3] = 0
global.flash_resistance[3]     = 0

global.fire_resistance[4]      = 0       
global.freeze_resistance[4]    = 0    
global.thunder_resistance[4]   = 0    
global.hypno_resistance[4]     = 0
global.paralysis_resistance[4] = 0
global.flash_resistance[4]     = 0

//Shields
global.has_shield[1]           = 0
global.has_pshield[1]          = 0
global.has_psishield[1]        = 0
global.has_psipshield[1]       = 0

global.has_shield[2]           = 0
global.has_pshield[2]          = 0
global.has_psishield[2]        = 0
global.has_psipshield[2]       = 0

global.has_shield[3]           = 0
global.has_pshield[3]          = 0
global.has_psishield[3]        = 0
global.has_psipshield[3]       = 0

global.has_shield[4]           = 0
global.has_pshield[4]          = 0
global.has_psishield[4]        = 0
global.has_psipshield[4]       = 0

global.s_shieldlife[1]         = 0
global.s_shieldlife[2]         = 0
global.s_shieldlife[3]         = 0
global.s_shieldlife[4]         = 0

//Other
global.s_favfood = ""
global.s_favthing = ""

//Backup stats
global.s_hp[5]              = 0;
global.s_pp[5]              = 0;
global.s_hpmax[5]           = 0;
global.s_ppmax[5]           = 0;
global.s_baseoff[5]         = 0;
global.s_basedef[5]         = 0;
global.s_baseguts[5]        = 0;
global.s_basespeed[5]       = 0;
global.s_baseiq[5]          = 0;
global.s_off[5]             = 0;
global.s_def[5]             = 0;
global.s_luck[5]            = 0;
global.s_speed[5]           = 0;
global.s_guts[5]            = 0;
global.s_vitality[5]        = 0;
global.s_iq[5]              = 0;
global.s_guard[5]           = 0;
global.s_exp[5]             = 0;
global.s_level[5]           = 0;
global.s_next[5]            = 0;
global.weap_equip[5]        = 0;
global.body_equip[5]        = 0;
global.arm_equip[5]         = 0;
global.other_equip[5]       = 0;
global.s_name[5]            = "";
global.money2               = 0;
global.money_saved2         = 0;
