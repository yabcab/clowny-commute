col_r = lerp(col_r,targetcol_r,0.05)
col_g = lerp(col_g,targetcol_g,0.05)
col_b = lerp(col_b,targetcol_b,0.05)
image_blend = make_color_rgb(col_r,col_g,col_b)

x = obj_player.x
y = obj_player.y