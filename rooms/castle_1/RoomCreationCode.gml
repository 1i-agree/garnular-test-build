if global.panic = 0
{
audio_stop_all()
audio_sound_gain(music_tutorial, 3, 0)
if (!audio_is_playing(music_tutorial))
    audio_play_sound(music_tutorial, 6, true)
}