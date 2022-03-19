objhits--
if objhits < 0
{
	lost = 1
	if !instance_exists(obj_lostmenu)
		instance_create_depth(x,y,1,obj_lostmenu)
}
else
{
	with other
		instance_destroy()
}