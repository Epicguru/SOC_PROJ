
depth = -y
image_xscale = 1;

if (direction >= 0 and direction < 45/2) or (direction >= 315+45/2 and direction < 360) {
    image_index = 1
} else if (direction >= 45/2 and direction < 45+45/2) {
    image_index = 2
} else if (direction >= 45+45/2 and direction < 90+45/2) {
    image_index = 2
} else if (direction >= 90+45/2 and direction < 135+45/2) {
    image_index = 2
} else if (direction >= 135+45/2 and direction < 180+45/2) {
    image_xscale = -1;
    image_index = 1
} else if (direction >= 180+45/2 and direction < 225+45/2) {
    image_index = 0
} else if (direction >= 225+45/2 and direction < 270+45/2) {
    image_index = 0
} else if (direction >= 270+45/2 and direction < 315+45/2) {
    image_index = 0
}
