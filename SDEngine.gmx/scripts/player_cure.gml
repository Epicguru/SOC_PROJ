///player_cure(player id [0 for everyone],cure ailments?,cure dead?)
var pid, ail, rev;
pid = argument0
ail = argument1
rev = argument2

for (var i = iff(pid = 0,1,pid); i <= iff(pid = 0,global.pl_count,pid); i++){
    if ail {
        global.s_poison[i] = 0;
        global.s_infected[i] = 0;
        global.s_numb[i] = 0;
        global.s_strange[i] = 0;
    } 
    
    if (rev && global.dead[i]) || !global.dead[i] {
        global.dead[i] = 0
        global.s_hp[i] = global.s_hpmax[i]
        global.s_pp[i] = global.s_ppmax[i]
    }
}
