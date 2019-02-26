///draw_window(x,y,width,height)
var xx, yy, ww, hh, dd, cc; 
xx = argument0;     // x position
yy = argument1;     // y position
ww = argument2;     // width (in tiles)
hh = argument3;     // height (in tiles)
dd = 0;             // is anyone dead?
texture = 0;        
cc = 0;

// Check whether anyone's dead
switch global.pl_count {
    case 1:
        if global.dead[1] { dd = 1 } break;
    case 2:
        if global.dead[1] or global.dead[2] { dd = 1 } break;
    case 3:
        if global.dead[1] or global.dead[2] or global.dead[3] { dd = 1 } break;
    case 4:
        if global.dead[1] or global.dead[2] or global.dead[3] or global.dead[4] { dd = 1 } break;
}

// Select skins according to current area
if !dd {
    switch get_flag(0) {
        case 0:
            ss = sprBorderMind
            cc = c_eb_black2;
            break;
        case 1:
            ss = sprBorderSpace
            cc = c_eb_black;
            break;
        case 2:
            ss = iff(!get_flag(25),sprBorderVenus,sprBorderVenus2); 
            cc = c_eb_venus;
            //texture = txVenus;
            break;
        case 3:
            ss = sprBorderStrawberry
            cc = c_eb_mint;
            break;
        case 4:
            ss = sprBorderPeanut
            cc = c_eb_mint;
            break;
        case 5:
            ss = sprBorderDream
            cc = c_eb_dream;
            break;
        case 6:
            ss = sprBorderDream
            cc = c_eb_dream;
            break;
    }
} else {
    switch get_flag(0) {
        case 0:
            ss = sprBorderDead;
            cc = c_eb_mint
            break;
        case 1:
            ss = sprBorderDead;
            cc = c_eb_mint
            break;
        case 2:
            ss = iff(!get_flag(25),sprBorderVenus,sprBorderVenus2); 
            cc = c_eb_mint
            break;
        case 3:
            ss = sprBorderDead;
            cc = c_eb_mint
            break;
        case 4:
            ss = sprBorderDead;
            cc = c_eb_mint
            break;
        case 5:
            ss = sprBorderDead;
            cc = c_eb_mint
            break;
        case 6:
            ss = sprBorderDead;
            cc = c_eb_mint
            break;
    }

}

// Draw background and borders
//if texture = 0 {
    draw_rectangle_colour(xx+2,yy+2,xx+(ww)*8-4,yy+(hh)*8-4,cc,cc,cc,cc,0)
//} else {
if texture {
    draw_background_part(texture,0,0,(ww)*8-4,(hh)*8-4,xx+2,yy+2)
}

for (var i=0; i<ww; i++)
{
    if i = 0 { draw_sprite(ss,0,xx+i*8,yy) }
    else if i = ww-1 { draw_sprite(ss,2,xx+i*8,yy) }
    else { draw_sprite(ss,1,xx+i*8,yy) }
}

for (var i=1; i<hh; i++)
{
    if i = hh-1 { draw_sprite(ss,6,xx,yy+i*8) }
    else { draw_sprite(ss,7,xx,yy+i*8) }
}

for (var i=1; i<ww; i++)
{
    if i = ww-1 { draw_sprite(ss,4,xx+i*8,yy+(hh-1)*8) }
    else { draw_sprite(ss,5,xx+i*8,yy+(hh-1)*8) }
}

for (var i=1; i<hh-1; i++)
{
    draw_sprite(ss,3,xx+(ww-1)*8,yy+i*8)
}
