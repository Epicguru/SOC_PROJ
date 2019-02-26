///ini_load_data(skipstats)
//Gets information about the saved game: variables, inventory and flags.
//If argument0 then we won't read stat related entries (used when reloading from a game over screen)
var savefile, savedata, buffer, skipstats;
skipstats = argument0;
ini_load_config(1);

savefile = global.saveslot+".lsd"
buffer = buffer_load(savefile);
savedata = binary_in(buffer, global.datalist);

//Stats
if !skipstats {
    global.money = savedata[? "money"];
    global.money_saved = savedata[? "money_saved"];
    global.money2 = savedata[? "money2"];
    global.money_saved2 = savedata[? "money_saved2"];
    for (var i=1; i<=5; i++) {
        //Main stats
        global.s_hp[i] = savedata[? "s_hp"+string(i)];
        global.s_pp[i] = savedata[? "s_pp"+string(i)];
        global.s_hpmax[i] = savedata[? "s_hpmax"+string(i)];
        global.s_ppmax[i] = savedata[? "s_ppmax"+string(i)];
        global.s_baseoff[i] = savedata[? "s_baseoff"+string(i)];
        global.s_basedef[i] = savedata[? "s_basedef"+string(i)];
        global.s_baseguts[i] = savedata[? "s_baseguts"+string(i)];
        global.s_basespeed[i] = savedata[? "s_basespeed"+string(i)];
        global.s_baseiq[i] = savedata[? "s_baseiq"+string(i)];
        global.s_off[i] = savedata[? "s_off"+string(i)];
        global.s_def[i] = savedata[? "s_def"+string(i)];
        global.s_luck[i] = savedata[? "s_luck"+string(i)];
        global.s_speed[i] = savedata[? "s_speed"+string(i)];
        global.s_guts[i] = savedata[? "s_guts"+string(i)];
        global.s_vitality[i] = savedata[? "s_vitality"+string(i)];
        global.s_iq[i] = savedata[? "s_iq"+string(i)];
        global.s_level[i] = savedata[? "s_level"+string(i)];
        global.s_exp[i] = savedata[? "s_exp"+string(i)];
        global.s_name[i] = savedata[? "s_name"+string(i)];
        
        //Equipment
        global.weap_equip[i] = savedata[? "weap_equip"+string(i)];
        global.body_equip[i] = savedata[? "body_equip"+string(i)];
        global.arm_equip[i] = savedata[? "arm_equip"+string(i)];
        global.other_equip[i] = savedata[? "other_equip"+string(i)];
        
        if i < 5 {
            //Ailments
            global.s_poison[i] = savedata[? "s_poison"+string(i)];
            global.s_infected[i] = savedata[? "s_infected"+string(i)];
            global.s_radiation[i] = savedata[? "s_radiation"+string(i)];
            global.s_numb[i] = savedata[? "s_numb"+string(i)];
            global.s_strange[i] = savedata[? "s_strange"+string(i)];
            global.numb_timer[i] = savedata[? "numb_timer"+string(i)];
            global.dead[i] = savedata[? "dead"+string(i)];
            
            //Skills
            for (var j=1; j<=64; j++) {
                global.s_skill_learnt[i,j] = savedata[? "s_skill_learnt"+string(i)+string(j)];
            }
        }
    }
    
    //Presents
    ds_map_read(global.presents, savedata[? "presents"]);
    
    //Flags
    for (var i=0; i<=500; i++){
        global.flag[i] = savedata[? "flag"+string(i)];
    } 
    
    //Overworld 1
    global.helpernpc = savedata[? "helpernpc"];
    global.pl_count = savedata[? "pl_count"];
}

//Inventory and storage
for (var i=0; i<=4; i++) {
    ds_list_read(global.inv[i], savedata[? "inventory"+string(i)]);
    ds_list_read(global.inv_extra[i], savedata[? "inventory2"+string(i)]);
}
ds_list_read(global.storage, savedata[? "storage"]);

//Overworld 2
global.theroom = savedata[? "room"];
global.thex = savedata[? "thex"];
global.they = savedata[? "they"];
global.gender = savedata[? "gender"];
global.favfood = savedata[? "favfood"];
global.favthing = savedata[? "favthing"];

if global.theroom = 0 or !room_exists(global.theroom){
    global.theroom = rmFallback
    global.error = "The save file you tried to load is corrupt or incompatible"
}

buffer_delete(buffer)
ds_map_destroy(savedata)
