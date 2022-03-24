time++

if !instance_place(x,y,obj_player)
	used = 0
	
if x - obj_player.x < -400
	instance_destroy()

ysin = sin((time) / 25) * 3
if movein
{
	yoff = lerp(yoff,10,0.25)
	if yoff > 9.9
		movein = 0
}
else
	yoff = lerp(yoff,0,0.05)