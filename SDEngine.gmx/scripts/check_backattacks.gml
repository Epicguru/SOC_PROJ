var dir,dir2;
  
if ( direction < 45/2 and direction >= 0 ) or ( direction >= 360-45/2 and direction <=360 ) { dir = 0 }
else if direction >= 45/2 and direction < 45+45/2 { dir = 45 }
else if direction >= 45+45/2 and direction < 90+45/2 { dir = 90 }
else if direction >= 90+45/2 and direction < 135+45/2 { dir = 135 }
else if direction >= 135+45/2 and direction < 180+45/2 { dir = 180 }
else if direction >= 180+45/2 and direction < 225+45/2 { dir = 225 }
else if direction >= 225+45/2 and direction < 270+45/2 { dir = 270 }
else if direction >= 270+45/2 and direction < 315+45/2 { dir = 315 }
  
if ( objPlayer.direction < 45/2 and objPlayer.direction >= 0 ) or ( objPlayer.direction >= 360-45/2 and objPlayer.direction <=360 ) { dir2 = 0 }
else if objPlayer.direction >= 45/2 and objPlayer.direction < 45+45/2 { dir2 = 45 }
else if objPlayer.direction >= 45+45/2 and objPlayer.direction < 90+45/2 { dir2 = 90 }
else if objPlayer.direction >= 90+45/2 and objPlayer.direction < 135+45/2 { dir2 = 135 }
else if objPlayer.direction >= 135+45/2 and objPlayer.direction < 180+45/2 { dir2 = 180 }
else if objPlayer.direction >= 180+45/2 and objPlayer.direction < 225+45/2 { dir2 = 225 }
else if objPlayer.direction >= 225+45/2 and objPlayer.direction < 270+45/2 { dir2 = 270 }
else if objPlayer.direction >= 270+45/2 and objPlayer.direction < 315+45/2 { dir2 = 315 }

if dir = dir2 {
    switch dir {
        case 0:
            if objPlayer.x < x {
                global.battle_type = 1
            } else {
                global.battle_type = 2
            }
            break;
        case 45:
            if objPlayer.y < y {
                global.battle_type = 2
            } else {
                global.battle_type = 1
            }
            break;
        case 90: 
            if objPlayer.y < y {
                global.battle_type = 2
            } else {
                global.battle_type = 1
            }
            break;
        case 135:
            if objPlayer.y < y {
                global.battle_type = 2
            } else {
                global.battle_type = 1
            }
            break;
        case 180:
            if objPlayer.x < x {
                global.battle_type = 2
            } else {
                global.battle_type = 1
            }
            break;
        case 225:
            if objPlayer.y < y {
                global.battle_type = 1
            } else {
                global.battle_type = 2
            }
            break;
        case 270:
            if objPlayer.y < y {
                global.battle_type = 1
            } else {
                global.battle_type = 2
            }
            break;
        case 315:
            if objPlayer.y < y {
                global.battle_type = 1
            } else {
                global.battle_type = 2
            }
            break;
    }
} else {  
    global.battle_type = 0
}  
instance_create(0,0,objBattleSwirl)
