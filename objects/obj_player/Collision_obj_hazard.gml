if !lost
{
	audio_play_sound(sfx_hit,1,0)
	objhits--
	if objhits < 0
	{
		audio_play_sound(sfx_hit2,1,0)
		lost = 1
		vspeed = -2
		if !instance_exists(obj_lostmenu)
			instance_create_depth(x,y,1,obj_lostmenu)
	}
	with other
		instance_destroy()
}