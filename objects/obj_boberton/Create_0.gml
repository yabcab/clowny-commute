instance_create_depth(x + 60,y - 60,depth,obj_coin)
instance_create_depth(x + 120,y - 60,depth,obj_coin)
instance_create_depth(x + 180,y - 60,depth,obj_coin)

instance_create_depth(x + 260,y  + 20,depth,obj_plat)

with instance_create_depth(x,y - 75,-1,obj_hazardremove)
{
	image_xscale = 160
	image_yscale = 75
}	

time = irandom_range(0,300)
yoff = 0
collected = 0