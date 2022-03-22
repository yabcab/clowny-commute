if speed > 0.3
	speed -= 0.025
else
	speed = 0.3

image_alpha -= 0.01

if image_alpha < 0
	instance_destroy()
		
image_angle += rot