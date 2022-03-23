if state = 0 && !set
{
	if y >= 175
	{
		set = 1
		alarm[0] = 160
	}
	else
		y += 7
}

if state = 1
{
	y += 7
	if y > 900
		instance_destroy()
}