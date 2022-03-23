if !duck
	draw_self_shadowed()
else
{
	draw_sprite_ext(spr_duckshadow,0,x - 4,y + 4,1,1,0,c_white,1)
	draw_self()
}