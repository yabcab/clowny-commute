if !audio_is_playing(levelmusic)
	new_gamemusic()

if room = rm_shop
{
	audio_sound_gain(shop,0.3,60)
	audio_sound_gain(levelmusic,0,60)
}
else
{
	if !obj_player.lost
	{
		if pitch < 1
			pitch += 0.05
		else
			pitch = 1
		audio_sound_pitch(levelmusic,1)
		if obj_player.going
		{
			audio_sound_gain(shop,0,60)
			audio_sound_gain(levelmusic,0.3,60)
		}
		else
		{
			audio_sound_gain(shop,0.3,60)
			audio_sound_gain(levelmusic,0,60)
		}
	}
	else
	{
		audio_sound_gain(shop,0.,0)
		audio_sound_gain(levelmusic,0.1,600)
		audio_sound_pitch(levelmusic,pitch)
		if pitch > -0.01
			pitch -= 0.005
	}
}