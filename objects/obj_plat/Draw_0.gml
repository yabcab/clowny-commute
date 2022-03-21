pal_swap_set(spr_effectpal,effects.shadow,0)
draw_sprite_ext(sprite_index,image_index,x - 4,y + 4 + yoff + ysin,image_xscale,image_yscale,image_angle,image_blend,image_alpha)
shader_reset()
draw_sprite_ext(sprite_index,image_index,x,y + yoff + ysin,image_xscale,image_yscale,image_angle,image_blend,image_alpha)