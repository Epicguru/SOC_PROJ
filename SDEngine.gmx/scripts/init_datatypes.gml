
global.datalist = ds_list_create()
ds_list_add(global.datalist,"money",buffer_u32);
ds_list_add(global.datalist,"money_saved",buffer_u32);
ds_list_add(global.datalist,"money2",buffer_u32);
ds_list_add(global.datalist,"money_saved2",buffer_u32);
for (var i=1; i<=5; i+=1){
    //Main stats
    ds_list_add(global.datalist,"s_hp"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_pp"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_hpmax"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_ppmax"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_baseoff"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_basedef"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_baseguts"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_basespeed"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_baseiq"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_off"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_def"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_luck"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_speed"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_guts"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_vitality"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_iq"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_level"+string(i),buffer_u16);
    ds_list_add(global.datalist,"s_exp"+string(i),buffer_u32);
    ds_list_add(global.datalist,"s_name"+string(i),buffer_string);
    
    //Equipment
    ds_list_add(global.datalist,"weap_equip"+string(i),buffer_u8); 
    ds_list_add(global.datalist,"body_equip"+string(i),buffer_u8);
    ds_list_add(global.datalist,"arm_equip"+string(i),buffer_u8);
    ds_list_add(global.datalist,"other_equip"+string(i),buffer_u8);    
    
    if i < 5 {
        //Ailments
        ds_list_add(global.datalist,"s_poison"+string(i),buffer_bool);
        ds_list_add(global.datalist,"s_infected"+string(i),buffer_bool);
        ds_list_add(global.datalist,"s_radiation"+string(i),buffer_bool);
        ds_list_add(global.datalist,"s_numb"+string(i),buffer_bool);
        ds_list_add(global.datalist,"s_strange"+string(i),buffer_bool);
        ds_list_add(global.datalist,"numb_timer"+string(i),buffer_u8);
        ds_list_add(global.datalist,"dead"+string(i),buffer_bool);
        
        //Skills
        for (var j=1; j<=64; j++) {
            ds_list_add(global.datalist,"s_skill_learnt"+string(i)+string(j),buffer_bool);
        }
    }
}

//Inventory and storage
for (var i=0; i<=4; i+=1) {
    ds_list_add(global.datalist,"inventory"+string(i),buffer_string);
    ds_list_add(global.datalist,"inventory2"+string(i),buffer_string);
}
ds_list_add(global.datalist,"storage",buffer_string);

//Presents
ds_list_add(global.datalist,"presents",buffer_string);

//Flags
for (var m=0; m<=500; m+=1) {
    ds_list_add(global.datalist,"flag"+string(m),buffer_u8);
}

//Overworld
ds_list_add(global.datalist,"room",buffer_u16);
ds_list_add(global.datalist,"thex",buffer_f32);
ds_list_add(global.datalist,"they",buffer_f32);
ds_list_add(global.datalist,"helpernpc",buffer_u8);
ds_list_add(global.datalist,"pl_count",buffer_u8);
ds_list_add(global.datalist,"gender",buffer_u8);
ds_list_add(global.datalist,"favfood",buffer_string);
ds_list_add(global.datalist,"favthing",buffer_string);
