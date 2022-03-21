image_angle += rotspd * rotdir

if vspeed < obj_player.grav
	vspeed += obj_player.gravamount
	
if y > room_height + 100
	instance_destroy()