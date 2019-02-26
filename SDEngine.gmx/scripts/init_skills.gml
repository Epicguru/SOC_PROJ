/*  
//  Skills for PSI users are divided into 4 categories. offensive, assist, recover, passive.
//  Non-PSI users will only make use of the offensive and passive slots. This doesn't mean that all non-PSI skills have to be necessarily offensive.
//  PSI users will have a maximum of 48 skills + 16 passives. 
//  Indexes 1-16: Offensive - Non-PSI Skills
//  Indexes 17-32: Assist
//  Indexes 33-48: Recover
//  Indexes 49-64: Passive
//  Non-PSI users will have a maximum of 10 skills + 16 passives. They can't learn these during level up (except passives), as they're hardcoded.
//
//  Syntax: global.s_skill[player,slot] = index of global.skill (defined in init_skill_definitions)
*/

//So many variables, but I'm not sure if there's a better way

//Player 1
//Offensive skills
global.s_skill[1,1] = 9 //Thunder
global.s_skill[1,2] = 10
global.s_skill[1,3] = 0
global.s_skill[1,4] = 0

global.s_skill[1,5] = 13 // Flash
global.s_skill[1,6] = 14
global.s_skill[1,7] = 15
global.s_skill[1,8] = 16

global.s_skill[1,9] = 0
global.s_skill[1,10] = 0
global.s_skill[1,11] = 0
global.s_skill[1,12] = 0

global.s_skill[1,13] = 0
global.s_skill[1,14] = 0
global.s_skill[1,15] = 0
global.s_skill[1,16] = 0
//Assist skills
global.s_skill[1,17] = 49 //Shield
global.s_skill[1,18] = 50
global.s_skill[1,19] = 51
global.s_skill[1,20] = 52

global.s_skill[1,21] = 35 // Hypnosis
global.s_skill[1,22] = 0
global.s_skill[1,23] = 0
global.s_skill[1,24] = 36

global.s_skill[1,25] = 37 // Paralysis
global.s_skill[1,26] = 0
global.s_skill[1,27] = 0
global.s_skill[1,28] = 38

global.s_skill[1,29] = 45 // Offense down
global.s_skill[1,30] = 0
global.s_skill[1,31] = 0
global.s_skill[1,32] = 46
//Recover skills
global.s_skill[1,33] = 25 // Lifeup
global.s_skill[1,34] = 26
global.s_skill[1,35] = 27
global.s_skill[1,36] = 28

global.s_skill[1,37] = 29 // Healing
global.s_skill[1,38] = 30
global.s_skill[1,39] = 31
global.s_skill[1,40] = 32

global.s_skill[1,41] = 39 // Magnet
global.s_skill[1,42] = 0
global.s_skill[1,43] = 0
global.s_skill[1,44] = 40

global.s_skill[1,45] = 0
global.s_skill[1,46] = 0
global.s_skill[1,47] = 0
global.s_skill[1,48] = 0
//Passive skills
global.s_skill[1,49] = 61 // Combo mastery
global.s_skill[1,50] = 62
global.s_skill[1,51] = 63
global.s_skill[1,52] = 64

global.s_skill[1,53] = 57 // Regeneration
global.s_skill[1,54] = 58
global.s_skill[1,55] = 59
global.s_skill[1,56] = 60

global.s_skill[1,57] = 0
global.s_skill[1,58] = 0
global.s_skill[1,59] = 0
global.s_skill[1,60] = 0

global.s_skill[1,61] = 0
global.s_skill[1,62] = 0
global.s_skill[1,63] = 0
global.s_skill[1,64] = 0

//Player 2
//Offensive skills
global.s_skill[2,1] = 1 // Freeze
global.s_skill[2,2] = 2
global.s_skill[2,3] = 3
global.s_skill[2,4] = 4

global.s_skill[2,5] = 5 // Fire
global.s_skill[2,6] = 6
global.s_skill[2,7] = 7
global.s_skill[2,8] = 8

global.s_skill[2,9] = 9 // Thunder
global.s_skill[2,10] = 10
global.s_skill[2,11] = 11
global.s_skill[2,12] = 12

global.s_skill[2,13] = 0
global.s_skill[2,14] = 0
global.s_skill[2,15] = 0
global.s_skill[2,16] = 0
//Assist skills
global.s_skill[2,17] = 53 // PSI Shield
global.s_skill[2,18] = 54
global.s_skill[2,19] = 55
global.s_skill[2,20] = 56

global.s_skill[2,21] = 33 // Brainshock
global.s_skill[2,22] = 0
global.s_skill[2,23] = 0
global.s_skill[2,24] = 34

global.s_skill[2,25] = 43  // Defense up
global.s_skill[2,26] = 0
global.s_skill[2,27] = 0
global.s_skill[2,28] = 44

global.s_skill[2,29] = 47 // Defense down
global.s_skill[2,30] = 0
global.s_skill[2,31] = 0
global.s_skill[2,32] = 48
//Recover skills
global.s_skill[2,33] = 25 // Lifeup
global.s_skill[2,34] = 0
global.s_skill[2,35] = 0
global.s_skill[2,36] = 0

global.s_skill[2,37] = 39
global.s_skill[2,38] = 0
global.s_skill[2,39] = 0
global.s_skill[2,40] = 40

global.s_skill[2,41] = 39
global.s_skill[2,42] = 0
global.s_skill[2,43] = 0
global.s_skill[2,44] = 40

global.s_skill[2,45] = 0
global.s_skill[2,46] = 0
global.s_skill[2,47] = 0
global.s_skill[2,48] = 0
//Passive skills
global.s_skill[2,49] = 65 // PSI mastery
global.s_skill[2,50] = 66
global.s_skill[2,51] = 67
global.s_skill[2,52] = 68

global.s_skill[2,53] = 0 
global.s_skill[2,54] = 0
global.s_skill[2,55] = 0
global.s_skill[2,56] = 0

global.s_skill[2,57] = 0
global.s_skill[2,58] = 0
global.s_skill[2,59] = 0
global.s_skill[2,60] = 0

global.s_skill[2,61] = 0
global.s_skill[2,62] = 0
global.s_skill[2,63] = 0
global.s_skill[2,64] = 0

//Player 3
//Offensive skills
global.s_skill[3,1] = 3
global.s_skill[3,2] = 3
global.s_skill[3,3] = 6
global.s_skill[3,4] = 0
global.s_skill[3,5] = 0
global.s_skill[3,6] = 0
global.s_skill[3,7] = 0
global.s_skill[3,8] = 0
global.s_skill[3,9] = 0
global.s_skill[3,10] = 0
global.s_skill[3,11] = 0
global.s_skill[3,12] = 0
global.s_skill[3,13] = 0
global.s_skill[3,14] = 0
global.s_skill[3,15] = 0
global.s_skill[3,16] = 0
//Assist skills
global.s_skill[3,17] = 2
global.s_skill[3,18] = 3
global.s_skill[3,19] = 6
global.s_skill[3,20] = 0
global.s_skill[3,21] = 0
global.s_skill[3,22] = 0
global.s_skill[3,23] = 0
global.s_skill[3,24] = 0
global.s_skill[3,25] = 0
global.s_skill[3,26] = 0
global.s_skill[3,27] = 0
global.s_skill[3,28] = 0
global.s_skill[3,29] = 0
global.s_skill[3,30] = 0
global.s_skill[3,31] = 0
global.s_skill[3,32] = 0
//Recover skills
global.s_skill[3,33] = 2
global.s_skill[3,34] = 3
global.s_skill[3,35] = 6
global.s_skill[3,36] = 0
global.s_skill[3,37] = 0
global.s_skill[3,38] = 0
global.s_skill[3,39] = 0
global.s_skill[3,40] = 0
global.s_skill[3,41] = 0
global.s_skill[3,42] = 0
global.s_skill[3,43] = 0
global.s_skill[3,44] = 0
global.s_skill[3,45] = 0
global.s_skill[3,46] = 0
global.s_skill[3,47] = 0
global.s_skill[3,48] = 0
//Passive skills
global.s_skill[3,49] = 0 
global.s_skill[3,50] = 0
global.s_skill[3,51] = 0
global.s_skill[3,52] = 0
global.s_skill[3,53] = 0 
global.s_skill[3,54] = 0
global.s_skill[3,55] = 0
global.s_skill[3,56] = 0
global.s_skill[3,57] = 0
global.s_skill[3,58] = 0
global.s_skill[3,59] = 0
global.s_skill[3,60] = 0
global.s_skill[3,61] = 0
global.s_skill[3,62] = 0
global.s_skill[3,63] = 0
global.s_skill[3,64] = 0

//Player 4
//Offensive skills
global.s_skill[4,1] = 2
global.s_skill[4,2] = 3
global.s_skill[4,3] = 6
global.s_skill[4,4] = 0
global.s_skill[4,5] = 0
global.s_skill[4,6] = 0
global.s_skill[4,7] = 0
global.s_skill[4,8] = 0
global.s_skill[4,9] = 0
global.s_skill[4,10] = 0
global.s_skill[4,11] = 0
global.s_skill[4,12] = 0
global.s_skill[4,13] = 0
global.s_skill[4,14] = 0
global.s_skill[4,15] = 0
global.s_skill[4,16] = 0
//Assist skills
global.s_skill[4,17] = 2
global.s_skill[4,18] = 3
global.s_skill[4,19] = 6
global.s_skill[4,20] = 0
global.s_skill[4,21] = 0
global.s_skill[4,22] = 0
global.s_skill[4,23] = 0
global.s_skill[4,24] = 0
global.s_skill[4,25] = 0
global.s_skill[4,26] = 0
global.s_skill[4,27] = 0
global.s_skill[4,28] = 0
global.s_skill[4,29] = 0
global.s_skill[4,30] = 0
global.s_skill[4,31] = 0
global.s_skill[4,32] = 0
//Recover skills
global.s_skill[4,33] = 2
global.s_skill[4,34] = 3
global.s_skill[4,35] = 6
global.s_skill[4,36] = 0
global.s_skill[4,37] = 0
global.s_skill[4,38] = 0
global.s_skill[4,39] = 0
global.s_skill[4,40] = 0
global.s_skill[4,41] = 0
global.s_skill[4,42] = 0
global.s_skill[4,43] = 0
global.s_skill[4,44] = 0
global.s_skill[4,45] = 0
global.s_skill[4,46] = 0
global.s_skill[4,47] = 0
global.s_skill[4,48] = 0
//Passive skills
global.s_skill[4,49] = 0 
global.s_skill[4,50] = 0
global.s_skill[4,51] = 0
global.s_skill[4,52] = 0
global.s_skill[4,53] = 0 
global.s_skill[4,54] = 0
global.s_skill[4,55] = 0
global.s_skill[4,56] = 0
global.s_skill[4,57] = 0
global.s_skill[4,58] = 0
global.s_skill[4,59] = 0
global.s_skill[4,60] = 0
global.s_skill[4,61] = 0
global.s_skill[4,62] = 0
global.s_skill[4,63] = 0
global.s_skill[4,64] = 0
