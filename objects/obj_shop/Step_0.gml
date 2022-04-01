if keyboard_check_pressed(vk_right)
	select++
if keyboard_check_pressed(vk_left)
	select--
	
if select < 0
	select = 16
if select > 16
	select = 0
	
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
			extraboost++
			purchased[select] = 1
		}
	}
	break;
	
	case 3: 
	{
		name = "Four Salt Packets"
		desc = "Press X in the air for a dash depending on what direction you are holding (only works 4 times per run)"
		cost = 25
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			backboosts += 4
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
			boberton++
			purchased[select] = 1
		}
	}
	break;
	
	case 5: 
	{
		name = "Dana's Porch Stone"
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
		desc = "Nolan will say something when you die"
		cost = 15
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			nolanterrigino = 1
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
	
	case 8: 
	{
		name = "Strong Man's Weight"
		desc = "Holding down allows you to drop faster (faster than strong man loses his temper)"
		cost = 25
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			dropspeed = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 9: 
	{
		name = "Anger"
		desc = "Salt dashes will also deflect objects that would normally damage you"
		cost = 45
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			angrysalt = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 10: 
	{
		name = "Assorted Nine Times Roast Bamboo Salts"
		desc = "Very expensive, but provides 4 extra salt boosts per run"
		cost = 50
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			backboosts += 4
			purchased[select] = 1
		}
	}
	break;
	
	case 11: 
	{
		name = "Boberchain Mandate"
		desc = "Bobertons have a chance to chain together to make Boberton chains"
		cost = 30
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			boberton++
			purchased[select] = 1
		}
	}
	break;
	
	case 12: 
	{
		name = "Literally just steal from Abrianna"
		desc = "More valuble items will appear along side coins"
		cost = 65
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			valubleitems = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 13: 
	{
		name = "Aidang's Curse"
		desc = "Your death will be censored"
		cost = 25
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			//valubleitems = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 14: 
	{
		name = "Crayola Endorsement"
		desc = "Survive yet another fall to your death"
		cost = 70
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			extraboost++
			purchased[select] = 1
		}
	}
	break;
	
	case 15: 
	{
		name = "Special Duck Mode"
		desc = "Press P to toggle Duck Mode"
		cost = 40
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			canduck = 1
			purchased[select] = 1
		}
	}
	break;
	
	case 16: 
	{
		name = "Big Ass Trophy"
		desc = "This does nothing except show how rich you are. Money money money!!"
		cost = 2500
		
		if keyboard_check_pressed(ord("Z")) && coins >= cost && !purchased[select]
		{
			coins -= cost
			trophy = 1
			purchased[select] = 1
		}
	}
	break;
}