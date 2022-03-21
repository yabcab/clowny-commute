randomize()

if going
{
	if lost
	{
		hspeed = lerp(hspeed,0,0.05)
		vspeed = lerp(vspeed,0,0.1)
	}
	else
	{
		if keyboard_check(vk_right)	&& can_rightboost
			hspeed = lerp(hspeed,6,0.1)
		else if keyboard_check(vk_left)
			hspeed = lerp(hspeed,4 - brakingpower,0.1)
		else
			hspeed = lerp(hspeed,5,0.1)
		if keyboard_check_pressed(ord("X")) && backs > 0
		{
			backs--
			hspeed = -8
		}
		if hspeed > 5.75 || hspeed < 3
			with instance_create_depth(x,y,depth + 1,obj_speedeffect)
			{
				sprite_index = other.sprite_index
				image_index = other.image_index
				image_speed = 0
				image_alpha = 0.5
			}
	
		if vspeed < grav
			vspeed += gravamount
		if keyboard_check(vk_down)
			vspeed += gravamount
		if keyboard_check_released(ord("Z")) && vspeed < -3
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
				fallboost = 0
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

