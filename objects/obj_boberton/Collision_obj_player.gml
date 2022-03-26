if !other.lost
{
	instance_destroy()
	
	with instance_create_depth(x - 5,y,depth - 1,obj_gib) { sprite_index = spr_bobertoneye }
	with instance_create_depth(x + 5,y,depth - 1,obj_gib) { sprite_index = spr_bobertoneye }
	
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_bobergibs; image_index = choose(0,1,2,3,4,5) }
	
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
	
	audio_play_sound(sfx_pop,1,0)
	audio_play_sound(sfx_dash,1,0)
	with other
	{
		hazardimmune = 1
		alarm[1] = 30
		vspeed = -3
		hspeed = 20
		bobanim = 1
		image_index = 0
		bouncing = 0
		saltanim = 0
	}
}