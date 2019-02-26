if global.current_inv != 4 {
    var eqpchk;
    for (var j=0; j<5; j++) {
        eqpchk[j] = 0; 
    }
    for (var i=0; i<20; i++) {
        inv[i+1] =  ds_list_find_value(global.inv[global.current_inv],i)
        
        if global.weap_equip[global.current_inv+1] = inv[i+1] or
        global.body_equip[global.current_inv+1] = inv[i+1] or
        global.arm_equip[global.current_inv+1] = inv[i+1] or
        global.other_equip[global.current_inv+1] = inv[i+1] {
            if inv[i+1] != 0 and eqpchk[0] != inv[i+1] and eqpchk[1] != inv[i+1] and eqpchk[2] != inv[i+1] and eqpchk[3] != inv[i+1] {
                eqp[i+1] = "\#"
                if global.weap_equip[global.current_inv+1] = inv[i+1] { eqpchk[0] = inv[i+1] }
                if global.body_equip[global.current_inv+1] = inv[i+1] { eqpchk[1] = inv[i+1] }
                if global.arm_equip[global.current_inv+1] = inv[i+1] { eqpchk[2] = inv[i+1] }
                if global.other_equip[global.current_inv+1] = inv[i+1] { eqpchk[3] = inv[i+1] }
            } else {
                eqp[i+1] = ""
            }
        } else {
            eqp[i+1] = ""
        }
    }
    eqpchk = 0;
} else {
    for (var i=0; i<20; i++) {
        inv[i+1] =  ds_list_find_value(global.inv[global.current_inv],i)
        eqp[i+1] = ""
    }
}
