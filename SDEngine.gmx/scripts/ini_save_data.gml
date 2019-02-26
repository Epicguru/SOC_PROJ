var savefile, savedata, buffer;
ini_save_config(1);

savefile = global.saveslot+".lsd"
savedata = ds_map_create()

//Stats
savedata[? "money"] = global.money; 
savedata[? "money_saved"] = global.money_saved;
savedata[? "money2"] = global.money2; 
savedata[? "money_saved2"] = global.money_saved2;
for (var i=1; i<=5; i+=1){
    //Main stats
    savedata[? "s_hp"+string(i)] = global.s_hp[i];
    savedata[? "s_pp"+string(i)] = global.s_pp[i];  
    savedata[? "s_hpmax"+string(i)] = global.s_hpmax[i];
    savedata[? "s_ppmax"+string(i)] = global.s_ppmax[i]; 
    savedata[? "s_baseoff"+string(i)] = global.s_baseoff[i];      
    savedata[? "s_basedef"+string(i)] = global.s_basedef[i];        
    savedata[? "s_baseguts"+string(i)] = global.s_baseguts[i];     
    savedata[? "s_basespeed"+string(i)] = global.s_basespeed[i];    
    savedata[? "s_baseiq"+string(i)] = global.s_baseiq[i];          
    savedata[? "s_off"+string(i)] = global.s_off[i];              
    savedata[? "s_def"+string(i)] = global.s_def[i];               
    savedata[? "s_luck"+string(i)] = global.s_luck[i];             
    savedata[? "s_speed"+string(i)] = global.s_speed[i];           
    savedata[? "s_guts"+string(i)] = global.s_guts[i];             
    savedata[? "s_vitality"+string(i)] = global.s_vitality[i];      
    savedata[? "s_iq"+string(i)] = global.s_iq[i];                 
    savedata[? "s_level"+string(i)] = global.s_level[i];          
    savedata[? "s_exp"+string(i)] = global.s_exp[i];              
    savedata[? "s_name"+string(i)] = global.s_name[i];             
    
    //Equipment
    savedata[? "weap_equip"+string(i)] = global.weap_equip[i];      
    savedata[? "body_equip"+string(i)] = global.body_equip[i];    
    savedata[? "arm_equip"+string(i)] = global.arm_equip[i];       
    savedata[? "other_equip"+string(i)] = global.other_equip[i];   
    
    if i < 5 {
        //Ailments
        savedata[? "s_poison"+string(i)] = global.s_poison[i];         
        savedata[? "s_infected"+string(i)] = global.s_infected[i];     
        savedata[? "s_radiation"+string(i)] = global.s_radiation[i];    
        savedata[? "s_numb"+string(i)] = global.s_numb[i];            
        savedata[? "s_strange"+string(i)] = global.s_strange[i];       
        savedata[? "numb_timer"+string(i)] = global.numb_timer[i];     
        savedata[? "dead"+string(i)] = global.dead[i];                  
        
        /*Resistances and weaknesses
        savedata[? "fire_resistance"+string(i)] = global.fire_resistance[i];            
        savedata[? "freeze_resistance"+string(i)] = global.freeze_resistance[i];        
        savedata[? "thunder_resistance"+string(i)] = global.thunder_resistance[i];      
        savedata[? "hypno_resistance"+string(i)] = global.hypno_resistance[i];          
        savedata[? "paralysis_resistance"+string(i)] = global.paralysis_resistance[i]; 
        savedata[? "flash_resistance"+string(i)] = global.flash_resistance[i];*/    
        
        //Skills
        for (var j=1; j<=64; j++) {
            savedata[? "s_skill_learnt"+string(i)+string(j)] = global.s_skill_learnt[i,j];  
        }
    }
}

//Inventory and storage
for (var i=0; i<=4; i+=1) {
    savedata[? "inventory"+string(i)] = ds_list_write(global.inv[i]);  
    savedata[? "inventory2"+string(i)] = ds_list_write(global.inv_extra[i]);  
}
savedata[? "storage"] = ds_list_write(global.storage);             

//Presents
savedata[? "presents"] = ds_map_write(global.presents);               

//Flags
for (var i=0; i<=500; i++){
    savedata[? "flag"+string(i)] = global.flag[i];
}

//Overworld
if room = rmNaming {
    savedata[? "room"] = global.firstroom;
} else {
    savedata[? "room"] = room;
}        
 
if instance_exists(objPlayer) {
    savedata[? "thex"] = argument0;
    savedata[? "they"] = argument1;
} else {
    savedata[? "thex"] = 0;
    savedata[? "they"] = 0;
}

//Other
savedata[? "favfood"] = global.favfood;
savedata[? "favthing"] = global.favthing;  
savedata[? "helpernpc"] = global.helpernpc;     
savedata[? "pl_count"] = global.pl_count; 
savedata[? "gender"] = global.gender;       

buffer = binary_out(global.datalist, savedata);
buffer_save(buffer, savefile)
buffer_delete(buffer)
ds_map_destroy(savedata)
