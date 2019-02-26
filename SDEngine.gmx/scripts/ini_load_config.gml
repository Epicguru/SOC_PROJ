ini_open(global.config_fname)

if argument0 {
    //global.secondsplaying = ini_read_real(global.saveslot,"Time",0);
}

global.kb_choose = ini_read_real("Settings","kb_choose",ord('Z'));
global.kb_back = ini_read_real("Settings","kb_back",ord('X'));
global.kb_enter = ini_read_real("Settings","kb_enter",vk_enter);
global.kb_map = ini_read_real("Settings","kb_map",ord('M'));
global.kb_q = ini_read_real("Settings","kb_q",ord('Q'));
global.kb_w = ini_read_real("Settings","kb_w",ord('W'));

global.gamepad_choose = ini_read_real("Settings","gamepad_choose",3);
global.gamepad_back = ini_read_real("Settings","gamepad_back",2);
global.gamepad_enter = ini_read_real("Settings","gamepad_enter",9);
global.gamepad_map = ini_read_real("Settings","gamepad_map",5);
global.gamepad_q = ini_read_real("Settings","gamepad_q",6);
global.gamepad_w = ini_read_real("Settings","gamepad_w",7);

ini_close()
