if !collected
{
	collected = 1
	coins += value
	
	audio_sound_pitch(audio_play_sound(sfx_coin,1,0),other.coinpitch)
	other.coinpitch += 0.1
	other.alarm[0] = 60
}