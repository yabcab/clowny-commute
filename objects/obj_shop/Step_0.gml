if keyboard_check_pressed(vk_right)
	select++
if keyboard_check_pressed(vk_left)
	select--
	
//scroll = select * 80
if abs(scroll - select * 80) > 1
	scroll += (select * 80 - scroll) / 5
else
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
		desc = "A sugar rush means holding right will allow you to go faster"
		cost = 25
		
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
	
	case 3: 
	{
		name = "Four Salt Packets"
		desc = "Press X in the air for a backwards dash (only works 4 times per run)"
		cost = 15
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			backboosts = 4
			purchased[select] = 1
		}
	}
	break;
	
	case 4: 
	{
		name = "Outside Assistance"
		desc = "Boberton is here to help (illegally), hitting him gives an extra boost of speed"
		cost = 30
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			boberton = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 5: 
	{
		name = "[placeholder item name]"
		desc = "Much greater ability to slow down by holding left"
		cost = 25
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			brakingpower = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 6: 
	{
		name = "Bearded Ladybug's Glorious Philosophy"
		desc = "Nolan will say something when you die [Does nothing currently]"
		cost = 15
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			//brakingpower = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 7: 
	{
		name = "Another Hair Poof"
		desc = "Allows you to another object and survive"
		cost = 40
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			max_obj_hits++
			purchased[select] = 1
		}
	}
	break;
}