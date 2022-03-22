if !lost
{
	if keyboard_check_pressed(ord("Z"))
	{
		bouncing = 1
		vspeed = -10
		with other
			instance_destroy()
	}
	else if keyboard_check(ord("Z"))
	{
		bouncing = 1
		vspeed = -7
		with other
			instance_destroy()
	}
}