if keyboard_check_pressed(vk_right)
	select++
if keyboard_check_pressed(vk_left)
	select--
	
scroll = select * 80

if keyboard_check_pressed(ord("X"))
{
	room_goto(rm_game)	
}

switch select {
	case 0: 
	{
		name = "Extra Hair Poof"
		desc = "Allows you to hit one object and survive"
		cost = 15
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			max_obj_hits++
			purchased[select] = 1
		}
	}
	break;
	
	case 1: 
	{
		name = "Assorted Candies"
		desc = "Holding right allows you to go faster"
		cost = 10
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			can_rightboost = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 2: 
	{
		name = "Emergency Crayons"
		desc = "Get an extra vertical boost the 1st time you fall out"
		cost = 20
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			extraboost = 1
			purchased[select] = 1
		}
	}
	break;
	
	
}