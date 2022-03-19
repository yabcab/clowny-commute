if going && !lost
{
	if keyboard_check(vk_right)	&& can_rightboost
		hspeed = lerp(hspeed,7,0.1)
	else if keyboard_check(vk_left)
		hspeed = lerp(hspeed,4.5,0.15)
	else
		hspeed = lerp(hspeed,5,0.05)
	
	if vspeed < grav
		vspeed += gravamount
	if keyboard_check(vk_down)
		vspeed += gravamount
	if keyboard_check_released(ord("Z")) && vspeed < -3
		vspeed = -3

	if y > room_height
	{
		if !fallboost
		{
			lost = 1
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
else
{
	hspeed = 0
	vspeed = 0
}

if keyboard_check_pressed(ord("Z"))
{
	if !lost
		going = 1
}