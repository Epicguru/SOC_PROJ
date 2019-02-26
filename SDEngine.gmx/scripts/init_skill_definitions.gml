/*
//  Defining skills
//  0 - Display name
//  1 - Action name
//  2 - PP cost
//  3 - Target: 0 - One ally, 1 - All allies, 2 - One enemy, 3 - All enemies
//  4 - Description
//  5 - Letter: "[" - Alpha, "\" - Beta, "]" - Gamma, "^" - Sigma, "_" - Omega
*/

/*
    Table of PSI skills
    ------------a--b--g--o-
    None        00
    Freeze      01 02 03 04 
    Fire        05 06 07 08
    Thunder     09 10 11 12
    Flash       13 14 15 16
    Special     17 18 19 20 Rockin-type skill
    Special 2   21 22 23 24 Starstorm-type skill
    Lifeup      25 26 27 28
    Healing     29 30 31 32
    Brainshock  33       34 
    Hypnosis    35       36 
    Paralysis   37       38 
    Magnet      39       40
    Offense up  41       42
    Defense up  43       44
    Offense dwn 45       46
    Defense dwn 47       48
    Shield      49 50 51 52
    PSI Shield  53 54 55 56
    Regenertn   57 58 59 60
    Combo Mastr 61 62 63 64
    PSI Mastery 65 66 67 68
*/

global.skill[0,0] = ""
global.skill[0,1] = "none"
global.skill[0,2] = 0
global.skill[0,3] = 0
global.skill[0,4] = "Select a skill to see its effect."
global.skill[0,5] = ""

global.skill[1,0] = "PK Freeze"
global.skill[1,1] = "freeze_a"
global.skill[1,2] = 5
global.skill[1,3] = 2
global.skill[1,4] = "Inflicts about 180 ice damage to an opponent.#"+
                    "May occasionally solidify the target.#"+
                    "Most effective against fire-based enemies."
global.skill[1,5] = "["

global.skill[2,0] = "PK Freeze"
global.skill[2,1] = "freeze_b"
global.skill[2,2] = 10
global.skill[2,3] = 2
global.skill[2,4] = "Inflicts about 360 ice damage to an opponent.#"+
                    "May occasionally solidify the target.#"+
                    "Most effective against fire-based enemies."
global.skill[2,5] = "\"

global.skill[3,0] = "PK Freeze"
global.skill[3,1] = "freeze_g"
global.skill[3,2] = 18
global.skill[3,3] = 2
global.skill[3,4] = "Inflicts about 540 ice damage to an opponent.#"+
                    "May occasionally solidify the target.#"+
                    "Most effective against fire-based enemies."
global.skill[3,5] = "]"

global.skill[4,0] = "PK Freeze"
global.skill[4,1] = "freeze_o"
global.skill[4,2] = 28
global.skill[4,3] = 2
global.skill[4,4] = "Inflicts about 720 ice damage to an opponent.#"+
                    "May occasionally solidify the target.#"+
                    "Most effective against fire-based enemies."
global.skill[4,5] = "_"

global.skill[5,0] = "PK Fire"
global.skill[5,1] = "fire_a"
global.skill[5,2] = 6
global.skill[5,3] = 3
global.skill[5,4] = "Inflicts about 80 fire damage to all opponents.#"+
                    "Most effective against ice-based enemies."
global.skill[5,5] = "["

global.skill[6,0] = "PK Fire"
global.skill[6,1] = "fire_b"
global.skill[6,2] = 12
global.skill[6,3] = 3
global.skill[6,4] = "Inflicts about 160 fire damage to all opponents.#"+
                    "Most effective against ice-based enemies."
global.skill[6,5] = "\"

global.skill[7,0] = "PK Fire"
global.skill[7,1] = "fire_g"
global.skill[7,2] = 20
global.skill[7,3] = 3
global.skill[7,4] = "Inflicts about 240 fire damage to all opponents.#"+
                    "Most effective against ice-based enemies."
global.skill[7,5] = "]"

global.skill[8,0] = "PK Fire"
global.skill[8,1] = "fire_o"
global.skill[8,2] = 40
global.skill[8,3] = 3
global.skill[8,4] = "Inflicts about 360 fire damage to all opponents.#"+
                    "Most effective against ice-based enemies."
global.skill[8,5] = "_"

global.skill[9,0] = "PK Thunder"
global.skill[9,1] = "thunder_a"
global.skill[9,2] = 7
global.skill[9,3] = 3
global.skill[9,4] = "An enemy is struck for about 120 electric#"+
                    "damage each. May miss if there are few enemies.#"+
                    "Bypasses PSI shields and counters."
global.skill[9,5] = "["

global.skill[10,0] = "PK Thunder"
global.skill[10,1] = "thunder_b"
global.skill[10,2] = 15
global.skill[10,3] = 3
global.skill[10,4] = "Two enemies are struck for about 120 electric#"+
                     "damage each. May miss if there are few enemies.#"+
                     "Bypasses PSI shields and counters."
global.skill[10,5] = "\"

global.skill[11,0] = "PK Thunder"
global.skill[11,1] = "thunder_g"
global.skill[11,2] = 21
global.skill[11,3] = 3
global.skill[11,4] = "Three enemies are struck for about 200 electric#"+
                     "damage each. May miss if there are few enemies.#"+
                     "Bypasses PSI shields and counters."
global.skill[11,5] = "]"

global.skill[12,0] = "PK Thunder"
global.skill[12,1] = "thunder_o"
global.skill[12,2] = 32
global.skill[12,3] = 3
global.skill[12,4] = "Four enemies are struck for about 200 electric#"+
                     "damage each. May miss if there are few enemies.#"+
                     "Bypasses PSI shields and counters."
global.skill[12,5] = "_"

global.skill[13,0] = "PK Flash"
global.skill[13,1] = "flash_a"
global.skill[13,2] = 8
global.skill[13,3] = 3
global.skill[13,4] = "This strong flash can make enemies start crying#"+
                     "uncontrollably, and in some circumstances, feel strange."
global.skill[13,5] = "["

global.skill[14,0] = "PK Flash"
global.skill[14,1] = "flash_b"
global.skill[14,2] = 19
global.skill[14,3] = 3
global.skill[14,4] = "This strong flash can make enemies start crying#"+
                     "uncontrollably, and in some circumstances, feel strange,#"+
                     "become numb, or even be destroyed."
global.skill[14,5] = "\"

global.skill[15,0] = "PK Flash"
global.skill[15,1] = "flash_g"
global.skill[15,2] = 24
global.skill[15,3] = 3
global.skill[15,4] = "This strong flash can make enemies start crying#"+
                     "uncontrollably, and in some circumstances, feel strange,#"+
                     "become numb, or even be destroyed."
global.skill[15,5] = "]"

global.skill[16,0] = "PK Flash"
global.skill[16,1] = "flash_o"
global.skill[16,2] = 32
global.skill[16,3] = 3
global.skill[16,4] = "In addition to the effects of PK Flash ],#"+
                     "the generated glorious rays have a high chance#"+
                     "of wiping out most enemies in a single strike."
global.skill[16,5] = "_"

global.skill[25,0] = "Lifeup"
global.skill[25,1] = "lifeup_a"
global.skill[25,2] = 4
global.skill[25,3] = 0
global.skill[25,4] = "Restores about 100 HP to one ally."
global.skill[25,5] = "["

global.skill[26,0] = "Lifeup"
global.skill[26,1] = "lifeup_b"
global.skill[26,2] = 7
global.skill[26,3] = 0
global.skill[26,4] = "Restores about 300 HP to one ally."
global.skill[26,5] = "\"

global.skill[27,0] = "Lifeup"
global.skill[27,1] = "lifeup_g"
global.skill[27,2] = 16
global.skill[27,3] = 0
global.skill[27,4] = "Fully restores one ally's HP."
global.skill[27,5] = "]"

global.skill[28,0] = "Lifeup"
global.skill[28,1] = "lifeup_o"
global.skill[28,2] = 28
global.skill[28,3] = 1
global.skill[28,4] = "Restores about 400 HP to all allies."
global.skill[28,5] = "_"

global.skill[29,0] = "Healing"
global.skill[29,1] = "healing_a"
global.skill[29,2] = 4
global.skill[29,3] = 0
global.skill[29,4] = "Relieves uncontrollable crying and cancels#"+
                     "the effects of hypnosis."
global.skill[29,5] = "["

global.skill[30,0] = "Healing"
global.skill[30,1] = "healing_b"
global.skill[30,2] = 8
global.skill[30,3] = 0
global.skill[30,4] = "In addition to the effects of Healing [,#"+
                     "this also cures poisonings, infections,#and strangeness."
global.skill[30,5] = "\"

global.skill[31,0] = "Healing"
global.skill[31,1] = "healing_g"
global.skill[31,2] = 18
global.skill[31,3] = 0
global.skill[31,4] = "In addition to the effects of Healing \,#"+
                     "this cures shock and numbness. May be used#"+
                     "to revive an ally, though HP is not maxed out."
global.skill[31,5] = "]"

global.skill[32,0] = "Healing"
global.skill[32,1] = "healing_o"
global.skill[32,2] = 30
global.skill[32,3] = 0
global.skill[32,4] = "In addition to the effects of Healing ],#"+
                     "this has a 100% chance to revive an ally#"+
                     "with HP maxed out."
global.skill[32,5] = "_"

global.skill[33,0] = "Brainshock"
global.skill[33,1] = "brainshock_a"
global.skill[33,2] = 7
global.skill[33,3] = 2
global.skill[33,4] = "Causes one enemy to feel strange."
global.skill[33,5] = "["

global.skill[34,0] = "Brainshock"
global.skill[34,1] = "brainshock_o"
global.skill[34,2] = 22
global.skill[34,3] = 3
global.skill[34,4] = "Causes all enemies to feel strange."
global.skill[34,5] = "_"

global.skill[35,0] = "Hypnosis"
global.skill[35,1] = "hypnosis_a"
global.skill[35,2] = 6
global.skill[35,3] = 2
global.skill[35,4] = "Puts one enemy to sleep."
global.skill[35,5] = "["

global.skill[36,0] = "Hypnosis"
global.skill[36,1] = "hypnosis_o"
global.skill[36,2] = 18
global.skill[36,3] = 3
global.skill[36,4] = "Puts all enemies to sleep. "
global.skill[36,5] = "_"

global.skill[37,0] = "Paralysis"
global.skill[37,1] = "paralysis_a"
global.skill[37,2] = 8
global.skill[37,3] = 2
global.skill[37,4] = "Stops an enemy from moving."
global.skill[37,5] = "["

global.skill[38,0] = "Paralysis"
global.skill[38,1] = "paralysis_o"
global.skill[38,2] = 24
global.skill[38,3] = 3
global.skill[38,4] = "Stops all enemies from moving."
global.skill[38,5] = "_"

global.skill[39,0] = "PSI Magnet"
global.skill[39,1] = "magnet_a"
global.skill[39,2] = 0
global.skill[39,3] = 2
global.skill[39,4] = "Drains some of an enemy's PP."
global.skill[39,5] = "["

global.skill[40,0] = "PSI Magnet"
global.skill[40,1] = "magnet_o"
global.skill[40,2] = 0
global.skill[40,3] = 3
global.skill[40,4] = "Drains some PP from all enemies."
global.skill[40,5] = "_"

global.skill[41,0] = "Offense Up"
global.skill[41,1] = "offenseup_a"
global.skill[41,2] = 6
global.skill[41,3] = 0
global.skill[41,4] = "Increases one person's offense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[41,5] = "["

global.skill[42,0] = "Offense Up"
global.skill[42,1] = "offenseup_o"
global.skill[42,2] = 18
global.skill[42,3] = 1
global.skill[42,4] = "Increases everyone's offense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[42,5] = "_"

global.skill[43,0] = "Defense Up"
global.skill[43,1] = "defenseup_a"
global.skill[43,2] = 6
global.skill[43,3] = 0
global.skill[43,4] = "Increases one person's defense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[43,5] = "["

global.skill[44,0] = "Defense Up"
global.skill[44,1] = "defenseup_o"
global.skill[44,2] = 18
global.skill[44,3] = 1
global.skill[44,4] = "Increases everyone's defense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[44,5] = "_"

global.skill[45,0] = "Offense Down"
global.skill[45,1] = "offensedown_a"
global.skill[45,2] = 7
global.skill[45,3] = 2
global.skill[45,4] = "Lowers one enemy's offense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[45,5] = "["

global.skill[46,0] = "Offense Down"
global.skill[46,1] = "offensedown_o"
global.skill[46,2] = 22
global.skill[46,3] = 3
global.skill[46,4] = "Lowers all enemies' offense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[46,5] = "_"

global.skill[47,0] = "Defense Down"
global.skill[47,1] = "defensedown_a"
global.skill[47,2] = 7
global.skill[47,3] = 2
global.skill[47,4] = "Lowers one enemy's defense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[47,5] = "["

global.skill[48,0] = "Defense Down"
global.skill[48,1] = "defensedown_o"
global.skill[48,2] = 22
global.skill[48,3] = 3
global.skill[48,4] = "Lowers all enemies' defense for the duration#"+
                     "of the current battle. Use it multiple times#"+
                     "to stack the effect."
global.skill[48,5] = "_"

global.skill[49,0] = "Shield"
global.skill[49,1] = "shield_a"
global.skill[49,2] = 6
global.skill[49,3] = 0
global.skill[49,4] = "Protects one person with a shield of light.#"+
                     "It reduces the damage caused by attacks by#50%."
global.skill[49,5] = "["

global.skill[50,0] = "Shield"
global.skill[50,1] = "shield_s"
global.skill[50,2] = 18
global.skill[50,3] = 1
global.skill[50,4] = "Protects everyone with a shield of light.#"+
                     "It reduces the damage caused by attacks by#50%."
global.skill[50,5] = "^"

global.skill[51,0] = "Shield"
global.skill[51,1] = "shield_b"
global.skill[51,2] = 12
global.skill[51,3] = 0
global.skill[51,4] = "Protects one person with a power shield.#"+
                     "It reduces the damage caused by attacks by#"+
                     "50%, and the rest is dealt back to an enemy."
global.skill[51,5] = "\"

global.skill[52,0] = "Shield"
global.skill[52,1] = "shield_o"
global.skill[52,2] = 28
global.skill[52,3] = 1
global.skill[52,4] = "Protects everyone with a power shield.#"+
                     "It reduces the damage caused by attacks by#"+
                     "50%, and the rest is dealt back to an enemy."
global.skill[52,5] = "_"

global.skill[53,0] = "PSI Shield"
global.skill[53,1] = "psishield_a"
global.skill[53,2] = 8
global.skill[53,3] = 0
global.skill[53,4] = "Protects one person with a psychic shield.#"+
                     "It reduces the damage caused by PSI by 50%."
global.skill[53,5] = "["

global.skill[54,0] = "PSI Shield"
global.skill[54,1] = "psishield_s"
global.skill[54,2] = 20
global.skill[54,3] = 0
global.skill[54,4] = "Protects everyone with a psychic shield.#"+
                     "It reduces the damage caused by PSI by 50%."
global.skill[54,5] = "^"

global.skill[55,0] = "PSI Shield"
global.skill[55,1] = "psishield_b"
global.skill[55,2] = 18
global.skill[55,3] = 1
global.skill[55,4] = "Protects one person with a psychic power shield.#"+
                     "It reduces the damage caused by PSI by 50%,#"+
                     "and the rest is dealt back to an enemy."
global.skill[55,5] = "\"

global.skill[56,0] = "PSI Shield"
global.skill[56,1] = "psishield_o"
global.skill[56,2] = 34
global.skill[56,3] = 1
global.skill[56,4] = "Protects everyone with a psychic power shield.#"+
                     "It reduces the damage caused by PSI by 50%,#"+
                     "and the rest is dealt back to an enemy."
global.skill[56,5] = "_"

global.skill[57,0] = "Regeneration"
global.skill[57,1] = ""
global.skill[57,2] = 0
global.skill[57,3] = 1
global.skill[57,4] = global.s_name[1]+" will recover 3% to 7% max HP at the#"+
                     "start of "+pron(1)+" turn. The chance of activation and #"+
                     "recovery rate depend on the last unlocked level."
global.skill[57,5] = "["

global.skill[58,0] = "Regeneration"
global.skill[58,1] = ""
global.skill[58,2] = 0
global.skill[58,3] = 1
global.skill[58,4] = global.s_name[1]+" will recover 3% to 7% max HP at the#"+
                     "start of "+pron(1)+" turn. The chance of activation and #"+
                     "recovery rate depend on the last unlocked level."
global.skill[58,5] = "\"

global.skill[59,0] = "Regeneration"
global.skill[59,1] = ""
global.skill[59,2] = 0
global.skill[59,3] = 1
global.skill[59,4] = global.s_name[1]+" will recover 3% to 7% max HP at the#"+
                     "start of "+pron(1)+" turn. The chance of activation and #"+
                     "recovery rate depend on the last unlocked level."
global.skill[59,5] = "]"

global.skill[60,0] = "Regeneration"
global.skill[60,1] = ""
global.skill[60,2] = 0
global.skill[60,3] = 1
global.skill[60,4] = global.s_name[1]+" will recover 3% to 7% max HP at the#"+
                     "start of "+pron(1)+" turn. The chance of activation and #"+
                     "recovery rate depend on the last unlocked level."
global.skill[60,5] = "_"

global.skill[61,0] = "Cleaning Mastery"
global.skill[61,1] = ""
global.skill[61,2] = 0
global.skill[61,3] = 1
global.skill[61,4] = "Allows "+global.s_name[1]+" to hit an enemy with the normal#"+
                     "attack one more time. If you're lucky, you might#"+
                     "get to attack again."
global.skill[61,5] = "["

global.skill[62,0] = "Cleaning Mastery"
global.skill[62,1] = ""
global.skill[62,2] = 0
global.skill[62,3] = 1
global.skill[62,4] = "Allows "+global.s_name[1]+" to hit an enemy with the normal#"+
                     "attack one more time. If you're lucky, you might#"+
                     "get to attack again."
global.skill[62,5] = "\"

global.skill[63,0] = "Cleaning Mastery"
global.skill[63,1] = ""
global.skill[63,2] = 0
global.skill[63,3] = 1
global.skill[63,4] = "Allows "+global.s_name[1]+" to hit an enemy with the normal#"+
                     "attack one more time. If you're lucky, you might#"+
                     "get to attack again."
global.skill[63,5] = "]"

global.skill[64,0] = "Cleaning Mastery"
global.skill[64,1] = ""
global.skill[64,2] = 0
global.skill[64,3] = 1
global.skill[64,4] = "Allows "+global.s_name[1]+" to hit an enemy with the normal#"+
                     "attack one more time. If you're lucky, you might#"+
                     "get to attack again."
global.skill[64,5] = "_"

global.skill[65,0] = "PSI Mastery"
global.skill[65,1] = ""
global.skill[65,2] = 0
global.skill[65,3] = 1
global.skill[65,4] = "A portion of "+global.s_name[2]+"'s IQ is added to the#"+
                     "total damage inflicted by her PSI. The added#"+
                     "IQ depends on the last unlocked level."
global.skill[65,5] = "["

global.skill[66,0] = "PSI Mastery"
global.skill[66,1] = ""
global.skill[66,2] = 0
global.skill[66,3] = 1
global.skill[66,4] = "A portion of "+global.s_name[2]+"'s IQ is added to the#"+
                     "total damage inflicted by her PSI. The added#"+
                     "IQ depends on the last unlocked level."
global.skill[66,5] = "\"

global.skill[67,0] = "PSI Mastery"
global.skill[67,1] = ""
global.skill[67,2] = 0
global.skill[67,3] = 1
global.skill[67,4] = "A portion of "+global.s_name[2]+"'s IQ is added to the#"+
                     "total damage inflicted by her PSI. The added#"+
                     "IQ depends on the last unlocked level."
global.skill[67,5] = "]"

global.skill[68,0] = "PSI Mastery"
global.skill[68,1] = ""
global.skill[68,2] = 0
global.skill[68,3] = 1
global.skill[68,4] = "A portion of "+global.s_name[2]+"'s IQ is added to the#"+
                     "total damage inflicted by her PSI. The added#"+
                     "IQ depends on the last unlocked level."
global.skill[68,5] = "_"
