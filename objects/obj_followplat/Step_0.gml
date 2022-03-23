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
	
if x < obj_player.x
	x = obj_player.x
	
if obj_generator.gentype != 3 && !set
{
	set = 1
	alarm[0] = 200
}
if byebye
{
	y += 5
	if y > 400
		instance_destroy()
}