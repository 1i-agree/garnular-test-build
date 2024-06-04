if global.panic = 0 && !audio_is_playing(zone1_theme)
{
	audio_stop_all()
		audio_play_sound(zone1_theme, 1, 1)
}