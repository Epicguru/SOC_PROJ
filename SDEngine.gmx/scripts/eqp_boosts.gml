///eqp_boosts(player)
write_line("Fixing stats for player "+string(argument0)+".")
global.s_off[argument0] = global.s_baseoff[argument0]+
                                     global.item[global.weap_equip[argument0],6]+
                                     global.item[global.body_equip[argument0],6]+
                                     global.item[global.arm_equip[argument0],6]+
                                     global.item[global.other_equip[argument0],6];

global.s_def[argument0] = global.s_basedef[argument0]+
                                     global.item[global.weap_equip[argument0],7]+
                                     global.item[global.body_equip[argument0],7]+
                                     global.item[global.arm_equip[argument0],7]+
                                     global.item[global.other_equip[argument0],7];

global.s_guts[argument0] = global.s_baseguts[argument0]+
                                     global.item[global.weap_equip[argument0],8]+
                                     global.item[global.body_equip[argument0],8]+
                                     global.item[global.arm_equip[argument0],8]+
                                     global.item[global.other_equip[argument0],8];
                                     
global.s_speed[argument0] = global.s_basespeed[argument0]+
                                     global.item[global.weap_equip[argument0],9]+
                                     global.item[global.body_equip[argument0],9]+
                                     global.item[global.arm_equip[argument0],9]+
                                     global.item[global.other_equip[argument0],9];

global.s_iq[argument0] = global.s_baseiq[argument0]+
                                     global.item[global.weap_equip[argument0],20]+
                                     global.item[global.body_equip[argument0],20]+
                                     global.item[global.arm_equip[argument0],20]+
                                     global.item[global.other_equip[argument0],20];
                                     
global.fire_resistance[argument0]      =    min(global.item[global.weap_equip[argument0],11]+
                                            global.item[global.body_equip[argument0],11]+
                                            global.item[global.arm_equip[argument0],11]+
                                            global.item[global.other_equip[argument0],11],4);
                                            
global.freeze_resistance[argument0]    =    min(global.item[global.weap_equip[argument0],12]+
                                            global.item[global.body_equip[argument0],12]+
                                            global.item[global.arm_equip[argument0],12]+
                                            global.item[global.other_equip[argument0],12],4);
                                            
global.thunder_resistance[argument0]   =    min(global.item[global.weap_equip[argument0],13]+
                                            global.item[global.body_equip[argument0],13]+
                                            global.item[global.arm_equip[argument0],13]+
                                            global.item[global.other_equip[argument0],13],4);
                                             
global.hypno_resistance[argument0]     =    min(global.item[global.weap_equip[argument0],14]+
                                            global.item[global.body_equip[argument0],14]+
                                            global.item[global.arm_equip[argument0],14]+
                                            global.item[global.other_equip[argument0],14],4);
                                            
global.paralysis_resistance[argument0] =    min(global.item[global.weap_equip[argument0],15]+
                                            global.item[global.body_equip[argument0],15]+
                                            global.item[global.arm_equip[argument0],15]+
                                            global.item[global.other_equip[argument0],15],4);
                                            
global.flash_resistance[argument0]     =    min(global.item[global.weap_equip[argument0],16]+
                                            global.item[global.body_equip[argument0],16]+
                                            global.item[global.arm_equip[argument0],16]+
                                            global.item[global.other_equip[argument0],16],4);              
