///level_up_battle(alarm)

for (var i=1;i<global.pl_count+1;i++) {
    write_line("Level up: Checking player "+string(i)+".")
    if global.s_level[i] < global.levelcap {
        if global.s_exp[i] >= global.s_nextexp[global.s_level[i]] {
            //Level up!
            var strno, str, playpsisound, r; 
            levelup = 1;
            oldlevel = global.s_level[i];
            oldoff = global.s_baseoff[i];
            olddef = global.s_basedef[i];
            oldguts = global.s_baseguts[i];
            oldluck = global.s_luck[i]
            oldspd = global.s_basespeed[i]
            oldvit = global.s_vitality[i]
            oldiq = global.s_baseiq[i]
            oldhp = global.s_hpmax[i];
            oldpp = global.s_ppmax[i];
            strno = 0;
            playpsisound = 0;
            for (var j=0; j<11; j++) {
                str[j] = ""
            }
            
            global.s_level[i]++;
            str[0] = global.s_name[i] + "'s level is now " + string(global.s_level[i])+"!"
            write_line("Level up: Player "+string(i)+"'s level is now " + string(global.s_level[i])+".")

            //Offense
            if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_baseoff[i] += round(((global.s_offgrowth[i] * oldlevel) - ((oldoff - 2) * 10)) * r/50)
            if global.s_baseoff[i]-oldoff > 0 {
                strno++;
                if global.s_baseoff[i]-oldoff > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "Offense went up by "+string(global.s_baseoff[i]-oldoff)+"!"
            }
            
            //Defense
            if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_basedef[i] += round(((global.s_defgrowth[i] * oldlevel) - ((olddef - 2) * 10)) * r/50)
            if global.s_basedef[i]-olddef > 0 {
                strno++;
                if global.s_basedef[i]-olddef > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "Defense went up by "+string(global.s_basedef[i]-olddef)+"!"
            }
            
            //Speed
            if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_basespeed[i] += round(((global.s_spdgrowth[i] * oldlevel) - ((oldspd - 2) * 10)) * r/50)
            if global.s_basespeed[i]-oldspd > 0 {
                strno++;
                if global.s_basespeed[i]-oldspd > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "Speed went up by "+string(global.s_basespeed[i]-oldspd)+"!"
            }
            
            //Guts
            if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_baseguts[i] += round(((global.s_gutsgrowth[i] * oldlevel) - ((oldguts - 2) * 10)) * r/50)
            if global.s_baseguts[i]-oldguts > 0 {
                strno++;
                if global.s_baseguts[i]-oldguts > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "Guts went up by "+string(global.s_baseguts[i]-oldguts)+"!"
            }
            
            //Luck
            if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_luck[i] += round(((global.s_luckgrowth[i] * oldlevel) - ((oldluck - 2) * 10)) * r/50)
            if global.s_luck[i]-oldluck > 0 {
                strno++;
                if global.s_luck[i]-oldluck > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "Luck went up by "+string(global.s_luck[i]-oldluck)+"!"
            }
            
            //Vitality
            if global.s_level[i] <= 10 {
                r = 5
            }
            else if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_vitality[i] += round(((global.s_vitgrowth[i] * oldlevel) - ((oldvit - 2) * 10)) * r/50)
            if global.s_vitality[i]-oldvit > 0 {
                strno++;
                if global.s_vitality[i]-oldvit > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "Vitality went up by "+string(global.s_vitality[i]-oldvit)+"!"
            }

            //IQ
            if global.s_level[i] <= 10 {
                r = 5
            }
            else if global.s_level[i] mod 4 == 0 {
                r = choose(7,8,9,10)
            } else {
                r = choose(3,4,5,6)
            }
            global.s_baseiq[i] += round(((global.s_iqgrowth[i] * oldlevel) - ((oldiq - 2) * 10)) * r/50)
            if global.s_baseiq[i]-oldiq > 0 {
                strno++;
                if global.s_baseiq[i]-oldiq > 2 { 
                    str[strno] += "Oh, baby!#@ "
                }
                str[strno] += "IQ went up by "+string(global.s_baseiq[i]-oldiq)+"!"
            }
            
            //HP
            global.s_hpmax[i] = 15*global.s_vitality[i];
            if global.s_hpmax[i]-oldhp < 2 {
                global.s_hpmax[i] += choose(1,2,3)
            }
            global.s_hpmax[i] = min(global.s_hpmax[i],999)
            if global.s_hpmax[i]-oldhp > 0 and global.s_hpmax[i] < 999 {
                strno++;
                if global.s_hpmax[i]-oldhp > 19 { 
                    str[strno] += "Sweet!#@ "
                }
                str[strno] += "Maximum HP went up by "+string(global.s_hpmax[i]-oldhp)+"!"
                global.s_hp[i] += global.s_hpmax[i]-oldhp
            }
            
            if global.psiuser[i] = 1 {
                //PP
                global.s_ppmax[i] = 5*global.s_baseiq[i];
                if global.s_ppmax[i]-oldhp < 2 {
                    global.s_ppmax[i] += choose(0,1,2)
                }
                global.s_ppmax[i] = min(global.s_ppmax[i],999)
                if global.s_ppmax[i]-oldpp > 0 and global.s_ppmax[i] < 999 {
                    strno++;
                    if global.s_ppmax[i]-oldpp > 7 { 
                        str[strno] += "That rocks!#@ "
                    }
                    str[strno] += "Maximum PP went up by "+string(global.s_ppmax[i]-oldpp)+"!"
                    global.s_pp[i] += global.s_ppmax[i]-oldpp
                }
            }
            
            //Learning new PSI
            lvskill = global.lv_skill[i,global.s_level[i]];
            
            if lvskill != 0 {
                //We're learning something new.
                strno++;
                str[strno] = global.s_name[i]+" realized the power of#   "+global.skill[global.s_skill[i,lvskill],0]+" "+global.skill[global.s_skill[i,lvskill],5]+"!"
                playpsisound = 1;
                global.s_skill_learnt[i,lvskill] = 1; // Activates slot lvskill.
                global.lv_skill[i,global.s_level[i]] = 0; // Deletes the entry, making it impossible for the player to learn the skill again
            }
            
            var a = instance_create(0,0,objBattleMsg);
            a.playpsisound = playpsisound;
            for (var k=0; k<11; k++) {
                if str[k] != "" a.str[k] = str[k]
            }
            alarm[argument0] = 1
            exit
        }
    }
}
