#define freeze_damage
switch type {
    case 0:
        dmg = irandom_range(135,225)
        break;
    case 1:
        dmg = irandom_range(270,450)
        break;
    case 2:
        dmg = irandom_range(405,675)
        break;
    case 3:
        dmg = irandom_range(540,900)
        break;
}

#define fire_damage
switch type {
    case 0:
        dmg = irandom_range(60,100)
        break;
    case 1:
        dmg = irandom_range(120,200)
        break;
    case 2:
        dmg = irandom_range(180,300)
        break;
    case 3:
        dmg = irandom_range(240,400)
        break;
}

#define thunder_damage
switch type {
    case 0:
    case 1:
        dmg = irandom_range(60,180)
        break;
    case 2:
    case 3:
        dmg = irandom_range(170,300)
        break;
}