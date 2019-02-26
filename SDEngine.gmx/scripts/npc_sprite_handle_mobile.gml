speed *= !instance_exists(objTextBox)

var dir;

depth = -y

if (direction >= 0 and direction < 45/2) or (direction >= 315+45/2 and direction < 360) {
    dir = 0
} else if (direction >= 45/2 and direction < 45+45/2) {
    dir = 45
} else if (direction >= 45+45/2 and direction < 90+45/2) {
    dir = 90
} else if (direction >= 90+45/2 and direction < 135+45/2) {
    dir = 135
} else if (direction >= 135+45/2 and direction < 180+45/2) {
    dir = 180
} else if (direction >= 180+45/2 and direction < 225+45/2) {
    dir = 225
} else if (direction >= 225+45/2 and direction < 270+45/2) {
    dir = 270
} else if (direction >= 270+45/2 and direction < 315+45/2) {
    dir = 315
}

if dir < 0 {
    dir = 360+dir
} else if dir = 360 {
    dir = 0
}

if !argument0 {
    if dir = 180 {
        image_xscale = -1
    } else {
        image_xscale = 1
    }
}

sprite_index = spr_walking[dir]

if speed > 0 { image_speed = speed/10 } else { image_speed = 0; image_index = 0; } 
