///key_name(key)
key = argument0;

switch key {
    case vk_left:
        return "Left";
    case vk_right:
        return "Right";
    case vk_up:
        return "Up";
    case vk_down:
        return "Down";
    case vk_enter:
        return "Enter";
    case vk_escape:
        return "Escape";
    case vk_space:
        return "Space";
    case vk_shift:
        return "Shift";
    case vk_control:
        return "Control";
    case vk_alt:
        return "Alt";
    case vk_backspace:
        return "Backspacr";
    case vk_tab:
        return "Tab";
    case vk_home:
        return "Home";
    case vk_end:
        return "End";
    case vk_delete:
        return "Delete";
    case vk_insert:
        return "Insert";
    case vk_pageup:
        return "Page Up";
    case vk_pagedown:
        return "Page Down";
    case vk_pause:
        return "Pause";
    case vk_printscreen:
        return "Print Screen";
    case vk_f1:
        return "F1";
    case vk_f2:
        return "F2";
    case vk_f3:
        return "F3";
    case vk_f4:
        return "F4";
    case vk_f5:
        return "F5";
    case vk_f6:
        return "F6";
    case vk_f7:
        return "F7";
    case vk_f8:
        return "F8";
    case vk_f9:
        return "F9";
    case vk_f10:
        return "F10";
    case vk_f11:
        return "F11";
    case vk_f12:
        return "F12";
    case vk_numpad0:
        return "Numpad 0";
    case vk_numpad1:
        return "Numpad 1";
    case vk_numpad2:
        return "Numpad 2";
    case vk_numpad3:
        return "Numpad 3";
    case vk_numpad4:
        return "Numpad 4";
    case vk_numpad5:
        return "Numpad 5";
    case vk_numpad6:
        return "Numpad 6";
    case vk_numpad7:
        return "Numpad 7";
    case vk_numpad8:
        return "Numpad 8";
    case vk_numpad9:
        return "Numpad 9";
    case vk_multiply:
        return "Multiply";
    case vk_divide:
        return "Divide";
    case vk_add:
        return "Add";
    case vk_subtract:
        return "Subtract";
    case vk_decimal:
        return "Decimal";
    case vk_lshift:
        return "Left Shift";
    case vk_lcontrol:
        return "Left Control";
    case vk_lalt:
        return "Left Alt";
    case vk_rshift:
        return "Right Shift";
    case vk_rcontrol:
        return "Right Control";
    case vk_ralt:
        return "Right Alt";
    case ord('A'):
        return "A";
    case ord('B'):
        return "B";
    case ord('C'):
        return "C";
    case ord('D'):
        return "D";
    case ord('E'):
        return "E";
    case ord('F'):
        return "F";
    case ord('G'):
        return "G";
    case ord('H'):
        return "H";
    case ord('I'):
        return "I";
    case ord('J'):
        return "J";
    case ord('K'):
        return "K";
    case ord('L'):
        return "L";
    case ord('M'):
        return "M";
    case ord('N'):
        return "N";
    case ord('O'):
        return "O";
    case ord('P'):
        return "P";
    case ord('Q'):
        return "Q";
    case ord('R'):
        return "R";
    case ord('S'):
        return "S";
    case ord('T'):
        return "T";
    case ord('U'):
        return "U";
    case ord('V'):
        return "V";
    case ord('W'):
        return "W";
    case ord('X'):
        return "X";
    case ord('Y'):
        return "Y";
    case ord('Z'):
        return "Z";
    case ord('0'):
        return "0";
    case ord('1'):
        return "1";
    case ord('2'):
        return "2";
    case ord('3'):
        return "3";
    case ord('4'):
        return "4";
    case ord('5'):
        return "5";
    case ord('6'):
        return "6";
    case ord('7'):
        return "7";
    case ord('8'):
        return "8";
    case ord('9'):
        return "9";
    default:
        return "Key " + string(argument0);
}
