///draw_sprite_tiled_vertical(sprite, image, x, y);
var sprite_start, sprite_end, sprite_current, sprite_step;

// Retrieve sprite properties        
sprite_step  = sprite_get_height(argument0);
sprite_start = view_yview+((argument3-view_yview) mod sprite_step)-sprite_step;
sprite_end   = view_yview+view_hview+sprite_step;
    
for (var sprite_current = sprite_start; sprite_current <= sprite_end; sprite_current += sprite_step)
    draw_sprite(argument0, argument1, argument2, sprite_current);   

