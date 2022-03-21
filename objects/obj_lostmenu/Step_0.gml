if sel1 = c_lime
{
	sel2 = c_white
	sel3 = c_white
	if keyboard_check_pressed(vk_down)
		sel2 = c_lime
	if keyboard_check_pressed(ord("Z"))
		room_restart()
		
	keyboard_clear(vk_down)
}

if sel2 = c_lime
{
	sel1 = c_white
	sel3 = c_white
	if keyboard_check_pressed(vk_up)
		sel1 = c_lime
	if keyboard_check_pressed(vk_down)
		sel3 = c_lime
	if keyboard_check_pressed(ord("Z"))
		room_goto(rm_shop)
		
	keyboard_clear(vk_down)
}

if sel3 = c_lime
{
	sel1 = c_white
	sel2 = c_white
	if keyboard_check_pressed(vk_up)
		sel2 = c_lime
	if keyboard_check_pressed(ord("Z"))
		game_end()
		
	keyboard_clear(vk_down)
}