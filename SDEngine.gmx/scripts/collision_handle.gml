if (!place_free(x, y)) and speed != 0 {
    var dir, normal;
    dir = direction;
    move_bounce_solid(true);
    normal = angle_difference(dir, direction) / 2 + dir + 180;
    direction = dir;

    x += hspeed;
    y += vspeed;
    move_outside_solid(normal, speed);

    if (!place_free(x, y)) {
        x = xprevious;
        y = yprevious;
        move_contact_solid(direction, speed);
    }
}
