grav = 7
gravamount = 0.25
going = 0
lost = 0
objhits = max_obj_hits
fallboost = extraboost
backs = backboosts
coinpitch = 1

if keyboard_check(ord("Z"))
{
	going = 1
	audio_play_sound(sfx_begin,1,0)	
	hspeed = 10
}
	
display_set_gui_size(640,360)

depth = -1

audio_stop_sound(sfx_fall)