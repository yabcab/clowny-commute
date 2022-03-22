instance_create_depth(x + 60,y - 60,depth,obj_coin)
instance_create_depth(x + 120,y - 60,depth,obj_coin)
instance_create_depth(x + 180,y - 60,depth,obj_coin)

if boberton >= 2
{
	var chance = choose(0,0,1)
	if chance
		instance_create_depth(x + 260,y + 20,depth,obj_boberton)
	else
		instance_create_depth(x + 260,y + 20,depth,obj_plat)
}
else
	instance_create_depth(x + 260,y + 20,depth,obj_plat)
	
with instance_create_depth(x,y - 75,-1,obj_hazardremove)
{
	image_xscale = 160
	image_yscale = 75
}