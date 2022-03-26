randomize()

if keyboard_check_pressed(ord("P")) && canduck
{
	if duck = 0
		duck = 1
	else
		duck = 0
}

score = floor(x) - 96
if going
{
	if x > milestone_to_reach
	{
		audio_play_sound(sfx_10k_1,1,0)
		milestone_to_reach += 10000	
		instance_create_depth(320,-250,-5,obj_10k)
	}
	
	if lost
	{
		spd2 = 0
		sprite_index = spr_player_death
		hspeed = lerp(hspeed,0,0.05)
		vspeed = lerp(vspeed,0,0.1)
		if score > highscore
		{
			highscore = score
			ini_open("save.lmao")
			ini_write_real("data","highscore",highscore)
			ini_close()
			obj_lostmenu.got_hs = 1
		}
	}
	else
	{
		if bobanim
			sprite_index = spr_player_bobertonboost
		else if saltanim
			sprite_index = spr_player_salt
		else if bouncing
			sprite_index = spr_player_bounce
		else
			sprite_index = spr_player_inair
		
		if upeffect
			instance_create_depth(x,y + 32,depth - 2,obj_explosionpart)
		if vspeed > -3
			upeffect = 0
		
		if keyboard_check(vk_right)	&& can_rightboost
			hspeed = lerp(hspeed,6,0.1)
		else if keyboard_check(vk_left)
			hspeed = lerp(hspeed,4 - brakingpower,0.1)
		else
			hspeed = lerp(hspeed,5,0.1)
		if keyboard_check_pressed(ord("X")) && backs > 0
		{
			bouncing = 0
			if angrysalt
			{
				hazardimmune = 1
				alarm[1] = 30
			}
			if keyboard_check(vk_up)
			{
				vspeed = -7
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(0,180) }
			}
			
			if keyboard_check(vk_left)
			{
				saltanim = 1
				bobanim = 0
				image_index = 0
				backs--
				hspeed = -12
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				if !keyboard_check(vk_up)
				{
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(-90,90) }
				}
			}
			else
			{
				saltanim = 0
				bobanim = 1
				image_index = 0
				backs--
				hspeed = 13
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				if !keyboard_check(vk_up)
				{
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
					with instance_create_depth(x,y,depth - 1,obj_explosionpart) { direction = random_range(90,270) }
				}
			}
		}
		if hspeed > 5.75 || hspeed < 3
		{
			with instance_create_depth(x,y,depth + 1,obj_speedeffect)
			{
				sprite_index = other.sprite_index
				image_index = other.image_index
				image_speed = 0
				image_alpha = 0.5
				if duck
					sprite_index = spr_duckspeedfx
			}
		}
		if hspeed > 5.75
			spd2 = 1
		else
			spd2 = 0
	
		if vspeed < grav
			vspeed += gravamount
		if keyboard_check(vk_down)
			vspeed += gravamount
		if keyboard_check(vk_down) && dropspeed
			vspeed += gravamount
		if keyboard_check_released(ord("Z")) && vspeed < -3 && bouncing
			vspeed = -3

		if y > room_height + 64
		{
			if !fallboost
			{
				lost = 1
				audio_play_sound(sfx_fall,1,0)
				if !instance_exists(obj_lostmenu)
					instance_create_depth(x,y,1,obj_lostmenu)
			}
			else
			{
				while y > room_height
					y--
				vspeed = -13
				bouncing = 1
				image_index = 0
				fallboost--
				upeffect = 1
				audio_play_sound(sfx_extraboost,1,0)
				audio_play_sound(sfx_slidewhistle,1,0)
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
				with instance_create_depth(x,y,depth - 1,obj_gib) { sprite_index = spr_crayons; image_index = choose(1,2,3,4) }
			}
		}
	}
}
else
{
	hspeed = 0
	vspeed = 0
	
	if keyboard_check_pressed(ord("Z"))
	{
		if !lost
		{
			going = 1
			audio_play_sound(sfx_begin,1,0)	
			hspeed = 10
		}
	}
}

if duck
	sprite_index = spr_specialduck