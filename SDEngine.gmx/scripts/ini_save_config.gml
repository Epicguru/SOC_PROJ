///ini_save_config(save save file data)
ini_open(global.config_fname);

if argument0 {
    ini_write_string(global.saveslot,"Name",global.s_name[1]);
    ini_write_real(global.saveslot,"Level",global.s_level[1]);
    ini_write_real(global.saveslot,"Chapter",get_flag(9));
}

ini_write_real("Settings","kb_choose",global.kb_choose);
ini_write_real("Settings","kb_back",global.kb_back);
ini_write_real("Settings","kb_enter",global.kb_enter);
ini_write_real("Settings","kb_map",global.kb_map);
ini_write_real("Settings","kb_q",global.kb_q);
ini_write_real("Settings","kb_w",global.kb_w);

ini_write_real("Settings","gamepad_choose",global.gamepad_choose);
ini_write_real("Settings","gamepad_back",global.gamepad_back);
ini_write_real("Settings","gamepad_enter",global.gamepad_enter);
ini_write_real("Settings","gamepad_map",global.gamepad_map);
ini_write_real("Settings","gamepad_q",global.gamepad_q);
ini_write_real("Settings","gamepad_w",global.gamepad_w);

if ini_read_real("Settings","last",0) < get_flag(9) {
    ini_write_real("Settings","last",get_flag(9));
}

ini_close();
