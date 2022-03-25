if keyboard_check_pressed(ord("Z"))
	pressed = 1

if pressed
{
	vspeed = lerp(vspeed,3,0.1)
	image_alpha -= 0.1
	if image_alpha < 0
		instance_destroy()
}