///choose_health_bar_sprite(0: Normal - 1: Panic - 2: Dead)
switch argument0 {
    case 0: //Normal
        switch get_flag(0) {
            case 0:
                sprite_index = sprMindBoxBack; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 1:
                sprite_index = sprSpaceBoxBack; 
                overlay = sprSpaceBoxFront;
                overlay2 = sprNull;
                break;
            case 2:
                sprite_index = sprVenusBoxBack;
                overlay = iff(!get_flag(25),sprVenusBoxFront,sprVenusBoxFront2); 
                overlay2 = sprNull;
                break;
            case 3:
                sprite_index = sprHealthBar3; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 4:
                sprite_index = sprHealthBar4;
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 5:
                sprite_index = sprHealthBar5;
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 6:
                sprite_index = sprHealthBar6;
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 7:
                sprite_index = sprMindBoxBack; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 8:
                sprite_index = sprMindBoxBack; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 9:
                sprite_index = sprMindBoxBack; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
        }
        break;
    case 1: //Panic
        overlay = sprPanicAnimation; 
        overlay_image_speed = 1/4;
        switch get_flag(0) {
            case 0:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 1:
                sprite_index = sprSpaceBoxBack; 
                overlay2 = sprSpaceBoxFront;
                break;
            case 2:
                sprite_index = sprVenusBoxBack;
                overlay2 = iff(!get_flag(25),sprVenusBoxFront,sprVenusBoxFront2); 
                break;
            case 3:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 4:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 5:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 6:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 7:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 8:
                sprite_index = sprHealthBarPanic; 
                overlay2 = sprNull;
                break;
            case 9:
                sprite_index = sprHealthBarPanic;
                overlay2 = sprNull;
                break;
        }
        break;
    case 2: //Dead
        switch get_flag(0) {
            case 0:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 1:
                sprite_index = sprSpaceBoxDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 2:
                sprite_index = sprVenusBoxBackDead;
                overlay = iff(!get_flag(25),sprVenusBoxFrontDead,sprVenusBoxFrontDead2); 
                overlay2 = sprNull;
                break;
            case 3:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 4:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 5:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 6:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 7:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 8:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
            case 9:
                sprite_index = sprHealthBarDead; 
                overlay = sprNull;
                overlay2 = sprNull;
                break;
        }
        break;
}
