///draw_odometer(var,x,y)
var xx, yy;
xx = argument1
yy = argument2

if argument0 <= 100 {
    if argument0 > 99 { draw_sprite(sprOdometer2,(argument0 - 99) *4,xx,yy) }
    else { draw_sprite(sprOdometer2,0,xx,yy) }
} else {
    if argument0 mod 100 > 99 { draw_sprite(sprOdometer2,(argument0 mod 1000 div 100 * 4) + (argument0 mod 100 - 99) *4,xx,yy) }
    else { draw_sprite(sprOdometer2,argument0 mod 1000 div 100 * 4,xx,yy) }
}

// Tens place
if (argument0 <= 10) {
  if (argument0 > 9) {
    draw_sprite(sprOdometer2, (argument0 - 9) * 4, xx + 8, yy);
  } else {
    draw_sprite(sprOdometer2, 0, xx + 8, yy);
  }
} else {
  if (argument0 mod 10 > 9) {
    draw_sprite(sprOdometer,(argument0 mod 100 div 10 * 4) + (argument0 mod 10 - 9) * 4, xx+ 8, yy);
  } else {
    draw_sprite(sprOdometer, argument0 mod 100 div 10 * 4, xx + 8, yy);
  }
}

// Ones place
draw_sprite(sprOdometer, argument0 mod 10 * 4, xx + 16, yy);
