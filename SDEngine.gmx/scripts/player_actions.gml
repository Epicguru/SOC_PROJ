//Player actions go here.
var affects_player = 0;

global._pl = pl 
if global.psiuser[global._pl] {
    global.s_pp[global._pl] -= global.remove_pp[global._pl]; 
}
global.remove_pp[global._pl] = 0;

with global.healthbar[global._pl] {
    y -= 8
}

switch act[pl] {
    case "bash": 
        if !instance_exists(global.target[global._pl]) { random_choser(); }
        if global.target[global._pl].e_name = "Patrolling Royal Guard" {
            instance_create(0,0,objDemand);
        } else {
            instance_create(0,0,objAttack_p);
        }
        break;
    case "guard": 
        instance_create(0,0,objGuard_p)
        break;
    case "inspect": 
        instance_create(0,0,objInspect_p)
        break;
    case "freeze_a": 
        instance_create(0,0,objPKFreeze)
        break;
    case "freeze_b": 
        with instance_create(0,0,objPKFreeze) { type = 1 }
        break;
    case "freeze_g": 
        with instance_create(0,0,objPKFreeze) { type = 2 }
        break;
    case "freeze_o": 
        with instance_create(0,0,objPKFreeze) { type = 3 }
        break;
    case "fire_a": 
        instance_create(0,0,objPKFire)
        break;
    case "fire_b": 
        with instance_create(0,0,objPKFire) { type = 1 }
        break;
    case "fire_g": 
        with instance_create(0,0,objPKFire) { type = 2 }
        break;
    case "fire_o": 
        with instance_create(0,0,objPKFire) { type = 3 }
        break;
    case "thunder_a": 
        instance_create(0,0,objPKThunder)
        break;
    case "thunder_b": 
        with instance_create(0,0,objPKThunder) { type = 1 }
        break;
    case "thunder_g": 
        with instance_create(0,0,objPKThunder) { type = 2 }
        break;
    case "thunder_o": 
        with instance_create(0,0,objPKThunder) { type = 3 }
        break;
    case "flash_a": 
        instance_create(0,0,objPKFlash)
        break;
    case "flash_b": 
        with instance_create(0,0,objPKFlash) { type = 1 }
        break;
    case "flash_g": 
        with instance_create(0,0,objPKFlash) { type = 2 }
        break;
    case "flash_o": 
        with instance_create(0,0,objPKFlash) { type = 3 }
        break;
    case "brainshock_a": 
        instance_create(0,0,objBrainshock)
        break;
    case "brainshock_o": 
        with instance_create(0,0,objBrainshock) { type = 1 }
        break;
    case "hypnosis_a": 
        instance_create(0,0,objHypnosis)
        break;
    case "hypnosis_o": 
        with instance_create(0,0,objHypnosis) { type = 1 }
        break;
    case "paralysis_a": 
        instance_create(0,0,objParalysis)
        break;
    case "paralysis_o": 
        with instance_create(0,0,objParalysis) { type = 1 }
        break;
    case "magnet_a": 
        instance_create(0,0,objMagnet)
        break;
    case "magnet_o": 
        with instance_create(0,0,objMagnet) { type = 1 }
        break;
    case "offensedown_a": 
        affects_player = 1;
        instance_create(0,0,objStatDown)
        break;
    case "offensedown_o": 
        affects_player = 1;
        with instance_create(0,0,objStatDown) { type = 1 }
        break;
    case "defensedown_a": 
        affects_player = 1;
        with instance_create(0,0,objStatDown) { stat = 1 }
        break;
    case "defensedown_o": 
        affects_player = 1;
        with instance_create(0,0,objStatDown) { type = 1; stat = 1 }
        break;
    case "offenseup_a": 
        affects_player = 1;
        instance_create(0,0,objStatUp)
        break;
    case "offenseup_o": 
        affects_player = 1;
        with instance_create(0,0,objStatUp) { type = 1 }
        break;
    case "defenseup_a": 
        affects_player = 1;
        with instance_create(0,0,objStatUp) { stat = 1 }
        break;
    case "defenseup_o": 
        affects_player = 1;
        with instance_create(0,0,objStatUp) { type = 1; stat = 1 }
        break;
    case "shield_a": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 0; kind = 0 }
        break;
    case "shield_s": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 1; kind = 0 }
        break;
    case "shield_b": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 0; kind = 1 }
        break;
    case "shield_o": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 1; kind = 1 }
        break;
    case "psishield_a": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 0; kind = 2 }
        break;
    case "psishield_s": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 1; kind = 2 }
        break;
    case "psishield_b": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 0; kind = 3 }
        break;
    case "psishield_o": 
        affects_player = 1;
        with instance_create(0,0,objShield) { type = 1; kind = 3 }
        break;
    case "lifeup_a": 
        affects_player = 1;
        with instance_create(0,0,objLifeup) { type = 0 }
        break;
    case "lifeup_b": 
        affects_player = 1;
        with instance_create(0,0,objLifeup) { type = 1 }
        break;
    case "lifeup_g": 
        affects_player = 1;
        with instance_create(0,0,objLifeup) { type = 2 }
        break;
    case "lifeup_o": 
        affects_player = 1;
        with instance_create(0,0,objLifeup) { type = 3 }
        break;
    case "healing_a": 
        affects_player = 1;
        with instance_create(0,0,objHealing) { type = 0 }
        break;
    case "healing_b": 
        affects_player = 1;
        with instance_create(0,0,objHealing) { type = 1 }
        break;
    case "healing_g": 
        affects_player = 1;
        with instance_create(0,0,objHealing) { type = 2 }
        break;
    case "healing_o": 
        affects_player = 1;
        with instance_create(0,0,objHealing) { type = 3 }
        break;
    case "item_lifeup_a":
    case "item_lifeup_b":
    case "item_lifeup_g":
    case "item_lifeup_o_one":
    case "item_lifeup_custom":
        affects_player = 1;
        instance_create(0,0,objItemLifeup); 
        break;
    case "item_lifeup_a_all":
    case "item_lifeup_b_all":
    case "item_lifeup_g_all":
    case "item_lifeup_o":
    case "item_lifeup_custom_all":
        affects_player = 1;
        instance_create(0,0,objItemLifeupAll); 
        break;
    case "item_ppup":
        affects_player = 1;
        instance_create(0,0,objItemPPUp); 
        break;
    case "item_ppup_all":
        affects_player = 1;
        instance_create(0,0,objItemPPUpAll); 
        break;
    case "item_healing":
        affects_player = 1;
        instance_create(0,0,objItemHealing); 
        break;
    case "bomb":
        global.custom_msg[0] = global.s_name[global._pl]+" threw the bomb!"
        with instance_create(0,0,objCustomBashPlayer) {
            bashlike    = 0;    //Whether to consider offense and defense
            customdmg   = 100;  //Damage to inflict if not bashlike
            attacks     = 1;    //Number of consecutive attacks
            element     = 1;    //0: Non-elemental; 1: Fire; 2: Freeze; 3: Thunder
            dodgeable   = 1;    //Self-explanatory
            removeitem  = 1;    //Whether the item used is gone after one use
            nomiss      = 1;
            nosmash     = 1;
        }
        break;
    case "made-you-look":
        global.custom_msg[0] = global.s_name[global._pl]+" used the Made-You-Look!"
        with instance_create(0,0,objCustomBashPlayer) {
            nodamage    = 1;
            nohiteffect = 1;
            nosmash     = 1;
            ailment     = 10;   
            ailmentrate = 80;
            dodgeable   = 0;    
            removeitem  = 1;    
            nomiss      = 1;
        }
        break;
    default:
        with all { instance_destroy() }
        global.error = "Error in battle system. The default player action was reached.#@ This isn't good.."
        room_goto(rmFallback)
        break;
}

if !affects_player {  
    if !instance_exists(global.target[global._pl]) { 
        random_choser(); 
    }
}
