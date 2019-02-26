///draw_sprite_tiled_horizontal(sprite, image, x, y);
var sprite_start, sprite_end, sprite_current, sprite_step;

// Retrieve sprite properties        
sprite_step  = sprite_get_width(argument0);
sprite_start = view_xview+((argument2-view_xview) mod sprite_step)-sprite_step;
sprite_end   = view_xview+view_wview+sprite_step;
    
for (var sprite_current = sprite_start; sprite_current <= sprite_end; sprite_current += sprite_step)
    draw_sprite(argument0, argument1, sprite_current, argument3);   
