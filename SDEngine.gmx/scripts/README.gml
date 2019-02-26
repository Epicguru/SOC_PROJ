/*
    THIS ENGINE HAS BEEN RELEASED UNDER THE CPL (CIDOKU PUBLIC LICENSE).
    TO USE IT, YOU MUST:
    1. CREDIT "CIDOKU" PROMINENTLY IN ANY GAMES THAT YOU CREATE WITH IT
    YOU SHOULD:
    2. SEND "CIDOKU" AN EMAIL AT cidoku@tfwno.gf, TELLING HIM OF YOUR PROJECT AND/OR USES FOR THE ENGINE.
       I'M EXCITED THAT YOU DECIDED TO USE MY CODE, SO PLEASE CONTACT ME, SO I CAN SUPPORT YOU!
    IT WOULD BE APPRECIATED:
    3. IF YOU, TOO, OPEN SOURCED YOUR GAME AND SHARED ANY CHANGES YOU MADE TO MY CODE BACK TO THE COMMUNITY.
       DON'T BE STINGY, SHARING IS CARING! 
*/

// PROTIPS

/* 
    Turn based battles in this engine follow a particular order.
    0. objBattleController will be created when you enter rmBattle.
    1. When you finish selecting your player's actions, objBattleController summons objTurnMaster 
       and execute its second User Event. Your player's actions are saved to the global variable act[player_index].
    2. objTurnMaster will execute turn_master(), assigning turns and ordering them by speed.
    3. objTurnMaster will summon objBattleKiller.
    4. objBattleKiller will kill any enemies with 0 HP and execute their final actions if applicable.
    5. objBattleKiller will check whether any enemies are left. If there are not, the battle will be over and the player will have won.
        5.1 If a player gained enough experience, they will level up.
        5.2 Item drops will be distributed.
    6. If there are enemies left, it will try to kill any players with 0 HP. If there are no players left, it's game over.
    7. If there are players and enemies left, objBattleKiller will execute the first alarm event of objTurnMaster, starting the game.
    8. Players and enemies will execute their actions, in the order decided in step 2. 
        8.1 If it's a player's turn: 
            8.1.1. objStatusMaster will be summoned. It handles all status effects.
            8.1.2. objStatusMaster will summon objPassiveMaster and handle all passive effects.
            8.1.3. player_actions() will be called. The script executes the player's attack, which is saved in the global variable act[player_index].
        8.2 If it's an enemy's turn: 
            8.2.1. objEnStatusMaster will be summoned. It handles all status effects for enemies.
            8.2.2. objEnStatusMaster will call the current enemy's User Event 0, and the enemy will attack.
        8.3 A completed attack will execute User Event 0 of objTurnMaster, which calls objBattleKiller, running steps 3 to 7 again... 
            (^ This is how you end a turn, in general)
            Except that this time, and after all checks, objBattleKiller will execute objTurnMaster's User Event 1, starting another turn, and so on, until all turns are over.
    9. Once all turns are over and the battle can continue, objTurnMaster will call objBattleController's User Event 0, reset some variables, and end the current process.
    10.You'll be shown all menus again. Repeat from step 1.
*/

/* 
    Create enemies by duplicating and following the template in Objects/Battle System/Enemies/, 
    then add them to the overworld by once again by duplicating and following the template in Objects/Overworld Enemies/, 
    and changing the variable "idx" to whatever you named your new enemy in the Battle System folder.
*/

/*
    Doors in the overworld work like this. Place a door object in the overworld, and add the following to its creation code:
    
        _x = (x position in the new room)
        _y = (y position in the new room)
        _room = (destination room)
        effect_leave = (transition effect when you leave the room, check the macros that begin with "tr_" for examples) (OPTIONAL)     
        effect_enter = (same as before, but shown when you enter the new room) (OPTIONAL)     
        effect_speed = (speed of the transition effect) (OPTIONAL)     
*/

//  Macros are useful. Give them a read. There are some colors, names for status effects (useful for custom attacks), and transtion effects.

//  Read the scripts in the init folder. They're full of useful info.

/*
    The dialogue system is probably the most rudimentary part of the engine. Sorry. Here's how it works.
    Basically, every dialogue snippet looks like this:
    
        var a = instance_create(0,0,objTextBox);
        a.msg[0...n] = "The contents of your message box."
        a.name[0...n] = "The name of the NPC"  (OPTIONAL)    
    
    To ask the player something, call question(number_of answers,"answer","answer","answer","answer","answer")
    (^ You have to supply all arguments, but if the number of answers is 2, for example, only arguments 1 and 2 will be used.)
    Then, set an alarm to 1 step and handle the answer using a switch statement. I'll use alarm[0] in the example.
    
        if instance_exists(objQuestion) { alarm[0] = 1 } else { // This line will pause the alarm as long as objQuestion exists.
            switch answer {
                case 0:
                    //Do something
                    break;
                case 1:
                    //Do something else
                    break;
                // And so on. Remember there can only be 5 answers (0, 1, 2, 3, and 4).    
            }
        }
    
    If you want to ask a question or show a message in a timeline and have it paused, 
    simply set global.timeline_obj to the instance that called the timeline. For example:
    
        global.timeline_obj = objWewLad
        
    All message boxes or questions will then tell this object to pause the timeline.
    To check for answers in a timeline, do not use "switch answer {...}", but "switch global.t_answer {...}" instead.
*/

/* 
    init_items is really tiring to modify by hand. use the provided application to craft item entries.
    Note that some features of the application don't work.
*/    

/*
    Defining and setting skills might be a little difficult. I apologise.
    I tried to explain it as well as I could in the actual scripts, so bear with it, okay...?
*/

/*  
    This engine features something called passive skills. They're not fully developed, so I don't recommend using them.
    The functionality is there, though, so see what you can do!
*/
        
