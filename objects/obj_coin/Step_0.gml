if x - obj_player.x < -400
	instance_destroy()
	
time++

image_angle = sin(time / 10) * 3
yoff = sin((time + 185) / 15) * 3

if collected
{
	image_xscale += 0.1
	image_yscale += 0.1
	image_alpha -= 0.15
	if image_alpha < 0
		instance_destroy()
}