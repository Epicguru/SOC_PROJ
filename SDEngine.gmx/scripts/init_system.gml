//This is a very important script, mind you
randomize();
audio_listener_orientation(-1, 0, 0, 0, 0, 0)

//System
global.debug = 1                    // Debug mode
global.btdebug = 0                  // Debug mode for testers (room switching and no clip deactivated)
global.demo = 1                     // Only prologue + venus (used in naming screen)
global.secondsplaying = 0           // Seconds spent in the game, shown in the game load screen
global.place = ""                   // Last room where the player saved, shown in the game load screen
global.saveslot = "slot1"           // Slot in use to save te game.
global.thex_save = 0                // Last x position
global.they_save = 0                // Last y position
global.config_fname = "Settings.ini"// Settings file.  
global.mute = 1                     // Disable music
global.error = "There's nothing wrong.{ Heheh, what are you doing?"
global.disable_enemy_chasing = 0

//Overworld stuff
global.bgMusic = 0                  // Background music index
global.bgMusic_ = 0                 // Background music instance
global.paused = 0                   // Is the game paused?
global.naming = 0                   // Naming a character?
global.cutscene = false             // Whether a cutscene is on.
global.timeline_obj = noone         // Object currently running a (cutscene) timeline
global.theroom = 0                  // Last room
global.thex = 0                     // Last x position
global.they = 0                     // Last y position
global.thedir = 270                 // Last direction
global.thelayer = 1                 // For an illusion of depth (not implemented)
global.firstroom = rmExample        // First room after naming
global.gender = 0                   // 0 - Male; 1- Female
global.t_answer = 0                 // Used for questions inside timelines

//UI stuff
global.thenfont  = font_add_sprite(spr_normalfont,ord(' '),true,1)      // Normal font
global.thenfont2  = font_add_sprite(spr_normalfont2,ord(' '),true,1)    // Normal font, shorter tails
global.thenfont3  = font_add_sprite(spr_iconfont,ord(' '),true,1)       // Normal font, icons
global.theifont  = fnIntro          // Big intro font
globalvar v_offset;
v_offset = 53;

//Battle system stuff
global.pl_count = 1;                // Number of players
global.en_count = 1;                // Number of enemies
global.helpernpc = 0;               // ID of the NPC helper: 0 - None, 1 - Miku, 2 - Genjurou
global.enemy[1] = 0;                // Object IDs of the enemies in battle. Main enemy.
global.enemy[2] = 0;
global.enemy[3] = 0;
global.enemy[4] = 0;
global.enemy[5] = 0;
global.target[1] = global.enemy[1]; // The ID of player 1's target. Can be a number (used for players) or an object (used for enemies)
global.target[2] = global.enemy[1]; // The ID of player 2's target.
global.target[3] = global.enemy[1]; // The ID of player 3's target.
global.target[4] = global.enemy[1]; // The ID of player 4's target.
global.nohproll = 0;                // Are the rolling HP/PP displays frozen?
global.allowboxjump = 0;
global.boss = 0;                    // 0 - Normal battle; 1 - Boss battle
global.battle_type = 0;             // 0 - Normal; 1 - Green Battle; 2 - Red Battle
global.custom_msg = 0;              // Used in custom attacks.
global.custom_dmg = 0;              // Used in power shields, etc.
global.remove_pp[1] = 0;            // The amount of PP to remove after player 1 uses PSI.
global.remove_pp[2] = 0;            // The amount of PP to remove after player 2 uses PSI.
global.remove_pp[3] = 0;            // The amount of PP to remove after player 3 uses PSI.
global.remove_pp[4] = 0;            // The amount of PP to remove after player 4 uses PSI.
global.totalexp = 0;                // The sum of the enemies' experiences.
global.s_realoff[1] = 0             // After the battle is over, player 1's offense will be reset to this value.
global.s_realoff[2] = 0             // After the battle is over, player 2's offense will be reset to this value.
global.s_realoff[3] = 0             // After the battle is over, player 3's offense will be reset to this value.
global.s_realoff[4] = 0             // After the battle is over, player 4's offense will be reset to this value.
global.s_realdef[1] = 0             // After the battle is over, player 1's defense will be reset to this value.
global.s_realdef[2] = 0             // After the battle is over, player 2's defense will be reset to this value.
global.s_realdef[3] = 0             // After the battle is over, player 3's defense will be reset to this value.
global.s_realdef[4] = 0             // After the battle is over, player 4's defense will be reset to this value.
global.s_realguts[1] = 0            // After the battle is over, player 1's guts will be reset to this value.
global.s_realguts[2] = 0            // After the battle is over, player 2's guts will be reset to this value.
global.s_realguts[3] = 0            // After the battle is over, player 3's guts will be reset to this value.
global.s_realguts[4] = 0            // After the battle is over, player 4's guts will be reset to this value.
global.healthbar[1] = 0             // Object ID of player 1's healthbar.
global.healthbar[2] = 0             // Object ID of player 2's healthbar.
global.healthbar[3] = 0             // Object ID of player 3's healthbar.
global.healthbar[4] = 0             // Object ID of player 4's healthbar.
global.itemtouse[1] = -1            // Item to remove after player 1 uses (or wastes) it.
global.itemtouse[2] = -1            // Item to remove after player 2 uses (or wastes) it.
global.itemtouse[3] = -1            // Item to remove after player 3 uses (or wastes) it.
global.itemtouse[4] = -1            // Item to remove after player 4 uses (or wastes) it.
global._pl = 1                      // Current player attacking
global.levelcap = 30                // Maximum level

globalvar act, turn, enmy;
turn = 0;                           // Current turn
enmy = 0;                           // Current enemy attacking
act[1] = "bash";                    // Player 1 action
act[2] = "bash";                    // Player 2 action
act[3] = "bash";                    // Player 3 action
act[4] = "bash";                    // Player 4 action

init_input()                        
init_stats()                        // Init all of the players' basic stats. Status effects and shields included.  
init_stats2()                       // Init all of the players' stats used during level ups, like growth rates and exp tables.
init_inventory()                    // Init the inventories and storages, and optionally add items to them.
init_skills()                       // Assign skills to players' skill slots.
init_learnt_skills()                // Sets the levels in which the players learn the skills in the defined slots.
init_backgrounds()                  // Init the battle backgrounds.
init_flags()                        // Init the game flags.
init_presents()                     // Init the presents and add items to them.
init_shops()                        // Init the shops and add items to them.
init_datatypes()                    // Init the types of all variables used in saved games
joy_init()                          // Init gamepad support
