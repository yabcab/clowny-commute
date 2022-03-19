if !other.used && !lost
{
	if keyboard_check(ord("Z"))
		vspeed = -10
	else if keyboard_check(vk_down)
		vspeed = -5
	else
		vspeed = -7
	other.used = 1
}