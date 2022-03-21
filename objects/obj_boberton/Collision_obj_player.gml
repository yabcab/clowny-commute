if !other.lost
{
	instance_destroy()
	audio_play_sound(sfx_pop,1,0)
	audio_play_sound(sfx_dash,1,0)
	with other
	{
		vspeed = -3
		hspeed = 20
	}
}