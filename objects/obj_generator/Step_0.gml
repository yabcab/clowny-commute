room_width = obj_player.x + 640
x = obj_player.x

if distance_to_point(newplat_oldx,y) > newplat_dist
{
	var yy = random_range(50,300)
	instance_create_depth(obj_player.x + 640,yy,-1,obj_plat)
	instance_create_depth(obj_player.x + 640 + random_range(-100,100),yy - random_range(20,100),-1,obj_coin)
	newplat_oldx = x	
	newplat_dist = random_range(200,500)
}

if distance_to_point(hazard_oldx,y) > hazard_dist
{
	instance_create_depth(obj_player.x + 640,random_range(50,300),-1,obj_hazard)
	hazard_oldx = x	
	hazard_dist = random_range(300,700)
}

if distance_to_point(bob_oldx,y) > bob_dist && boberton
{
	instance_create_depth(obj_player.x + 640,random_range(50,300),-1,obj_boberton)
	bob_oldx = x	
	bob_dist = random_range(2000,4000)
}

if distance_to_point(gen_oldx,y) > gen_dist
{
	gentype = choose(0,1,2)
	gen_oldx = x	
	gen_dist = random_range(2000,5000)
}
switch gentype 
{
	case 0:
	{
		with obj_background
		{
			targetcol_r = 48
			targetcol_g = 69
			targetcol_b = 194
		}
	}
	break;
	
	case 1:
	{
		with obj_background
		{
			targetcol_r = 100
			targetcol_g = 35
			targetcol_b = 35
		}
	}
	break;
	
	case 2:
	{
		with obj_background
		{
			targetcol_r = 82
			targetcol_g = 167
			targetcol_b = 23
		}
	}
	break;
}