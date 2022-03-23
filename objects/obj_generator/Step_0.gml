room_width = obj_player.x + 2000
x = obj_player.x

if distance_to_point(hazard_oldx,y) > hazard_dist
{
	instance_create_depth(obj_player.x + 640,random_range(50,300),-1,obj_hazard)
	hazard_oldx = x	
	hazard_dist = random_range(200,600)
}

if distance_to_point(bob_oldx,y) > bob_dist && boberton >= 1
{
	instance_create_depth(obj_player.x + 640,random_range(50,300),-1,obj_boberton)
	bob_oldx = x	
	bob_dist = random_range(2000,4000)
}

if distance_to_point(gen_oldx,y) > gen_dist
{
	gentype = choose(0,1,2,3,4)
	gen_oldx = x	
	gen_dist = random_range(2000,5000)
}
switch gentype 
{
	case 0: // light blue
	{
		if distance_to_point(newplat_oldx,y) > newplat_dist
		{
			var yy = random_range(50,300)
			instance_create_depth(obj_player.x + 640,yy,-1,obj_plat)
			instance_create_depth(obj_player.x + 640 + random_range(-100,100),yy - random_range(20,100),-1,obj_coin)
			newplat_oldx = x	
			newplat_dist = random_range(150,400)
		}
		
		with obj_background
		{
			targetcol_r = 48
			targetcol_g = 69
			targetcol_b = 194
		}
	}
	break;
	
	case 1: // crimson
	{
		if distance_to_point(newplat_oldx,y) > newplat_dist
		{
			var yy = random_range(50,300)
			var pick = choose(1,2)
			switch pick 
			{
				case 1:
				{
					instance_create_depth(obj_player.x + 640,yy,-1,obj_plat)
					instance_create_depth(obj_player.x + 640 + random_range(-100,100),yy - random_range(20,100),-1,obj_coin)
				}
				break;
					
				case 2:
				{
					instance_create_depth(obj_player.x + 640 + random_range(-50,50),random_range(50,340),-1,obj_bounce)
					instance_create_depth(obj_player.x + 640 + random_range(-50,50),random_range(50,340),-1,obj_bounce)
					instance_create_depth(obj_player.x + 640 + random_range(-100,100),random_range(50,250),-1,obj_coin)
				}
			}
			newplat_oldx = x	
			newplat_dist = random_range(150,300)
		}
		
		with obj_background
		{
			targetcol_r = 100
			targetcol_g = 35
			targetcol_b = 35
		}
	}
	break;
	
	case 2: // green
	{
		if distance_to_point(newplat_oldx,y) > newplat_dist
		{
			var yy = random_range(50,300)
			var coin = choose(0,1)
			with instance_create_depth(obj_player.x + 640,yy,-1,obj_plat) { sprite_index = spr_halfplat }
			if coin
				instance_create_depth(obj_player.x + 640 + random_range(-100,100),yy - random_range(20,100),-1,obj_coin)
			newplat_oldx = x	
			newplat_dist = random_range(75,150)
		}
		
		with obj_background
		{
			targetcol_r = 82
			targetcol_g = 167
			targetcol_b = 23
		}
	}
	break;
	
	case 3: // yellow
	{
		if distance_to_point(newplat_oldx,y) > newplat_dist
		{
			var yy = random_range(50,300)
			instance_create_depth(obj_player.x + 640,yy,-1,obj_plat)
			instance_create_depth(obj_player.x + 640 + random_range(-100,100),yy - random_range(20,100),-1,obj_coin)
			newplat_oldx = x	
			newplat_dist = random_range(150,400)
		}
		
		with obj_background
		{
			targetcol_r = 255
			targetcol_g = 245
			targetcol_b = 40
		}
	}
	break;
	
	case 4: // pink
	{
		if distance_to_point(newplat_oldx,y) > newplat_dist
		{
			var yy = random_range(50,300)
			instance_create_depth(obj_player.x + 640,yy,-1,obj_plat)
			instance_create_depth(obj_player.x + 640 + random_range(-100,100),yy - random_range(20,100),-1,obj_coin)
			newplat_oldx = x	
			newplat_dist = random_range(150,400)
		}
		
		with obj_background
		{
			targetcol_r = 255
			targetcol_g = 139
			targetcol_b = 218
		}
	}
	break;
}