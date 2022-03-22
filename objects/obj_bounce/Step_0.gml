if x - obj_player.x < -400
	instance_destroy()
	
time++

image_angle = sin(time / 10) * 6
yoff = sin((time + 185) / 15) * 3

if collected
{
	image_xscale += 0.2
	image_yscale += 0.2
	image_alpha -= 0.15
	if image_alpha < 0
		instance_destroy()
}

if distance_to_object(obj_plat) < 35
	instance_destroy()