/*
//  During level up, PSI users have a chance to learn a skill. That is defined here.
//  Note that non-PSI users CAN learn passives 
//  Syntax: global.lv_skill[player,level] = slot (defined in init_skills)
*/

//Make space for all that crap
for (var i=1; i<=4; i++) {
    for (var j=1; j<=100; j++) {
        global.lv_skill[i,j] = 0;
    }
}

global.lv_skill[1,3] = 33;  // Lifeup       a
global.lv_skill[1,5] = 21;  // Hypnosis     a
global.lv_skill[1,8] = 17;  // Shield       a
global.lv_skill[1,10] = 37; // Healing      a
global.lv_skill[1,13] = 25; // Paralysis    a
global.lv_skill[1,15] = 41; // Magnet       a
global.lv_skill[1,16] = 29; // Offense down a
global.lv_skill[1,20] = 34; // Lifeup       b
global.lv_skill[1,21] = 1;  // Thunder      a
global.lv_skill[1,22] = 5;  // Flash        a
global.lv_skill[1,23] = 19; // Shield       b
global.lv_skill[1,26] = 24; // Hypnosis     o
global.lv_skill[1,28] = 38; // Healing      b
global.lv_skill[1,30] = 49; // Combo mstr   a
global.lv_skill[1,32] = 28; // Paralysis    o
global.lv_skill[1,34] = 2;  // Thunder      b
global.lv_skill[1,35] = 6;  // Flash        b
global.lv_skill[1,37] = 44; // Magnet       o
global.lv_skill[1,39] = 18; // Shield       s
global.lv_skill[1,41] = 35; // Lifeup       g
global.lv_skill[1,44] = 32; // Offense down o
global.lv_skill[1,45] = 7;  // Flash        g
global.lv_skill[1,46] = 39; // Healing      g
global.lv_skill[1,50] = 50; // Combo mstr   b
global.lv_skill[1,55] = 20; // Shield       o
global.lv_skill[1,60] = 53; // Regen        a
global.lv_skill[1,63] = 40; // Healing      o
global.lv_skill[1,66] = 36; // Lifeup       o
global.lv_skill[1,68] = 8;  // Flash        o
global.lv_skill[1,70] = 51; // Combo mstr   g
global.lv_skill[1,75] = 54; // Regen        b
global.lv_skill[1,89] = 55; // Regen        g
global.lv_skill[1,90] = 52; // Combo mstr   o
global.lv_skill[1,100]= 56; // Regen        o

global.lv_skill[2,2] = 1;   // Freeze       a
global.lv_skill[2,3] = 9;   // Thunder      a
global.lv_skill[2,4] = 17;  // PSI shield   a
global.lv_skill[2,5] = 33;  // Lifeup       a
global.lv_skill[2,6] = 5;   // Fire         a
global.lv_skill[2,10] = 49; // PSI mstr     a
global.lv_skill[2,12] = 41; // Magnet       a
global.lv_skill[2,28] = 44; // Magnet       o
global.lv_skill[2,35] = 50; // PSI mstr     b
global.lv_skill[2,60] = 51; // PSI mstr     g
global.lv_skill[2,85] = 52; // PSI mstr     o

global.lv_skill[4,2] = 1;
global.lv_skill[4,3] = 2;

//At the start of the game there are no skills learnt
for (var i=1; i<=4; i++) {
    for (var j=1; j<=64; j++) {
        global.s_skill_learnt[i,j] = 0;
    }
}
