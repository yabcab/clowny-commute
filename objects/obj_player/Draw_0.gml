if !duck
	draw_self_shadowed()
else
{
	draw_sprite_ext(spr_duckshadow,0,x - 4,y + 4,1,1,0,c_white,1)
	draw_self()
}

if lost && aidang
	draw_rectangle_color(x - 40,y - 40,x + 40, y + 40,c_black,c_black,c_black,c_black,0)