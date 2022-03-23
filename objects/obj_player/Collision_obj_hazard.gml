if !lost
{
	audio_play_sound(sfx_hit,1,0)
	if !hazardimmune
		objhits--
	if objhits < 0 && !hazardimmune
	{
		audio_play_sound(sfx_hit2,1,0)
		lost = 1
		vspeed = -3
		if !instance_exists(obj_lostmenu)
			instance_create_depth(x,y,1,obj_lostmenu)
	}
	with other
	{
		instance_destroy()
		
		instance_create_depth(x,y,depth - 1,obj_gib)

		with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bonegib; image_index = choose(0,1,2) }
		with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bonegib; image_index = choose(0,1,2) }
		with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bonegib; image_index = choose(0,1,2) }
		with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bonegib; image_index = choose(0,1,2) }
	}
}