if(audio_is_playing(snd_background_music))
{
	exit;
}

if(room == room_start)
{
	audio_play_sound(snd_background_music, 0, 1);
}

if(audio_is_playing(snd_gameplay))
{
	audio_stop_sound(snd_gameplay);
}

if(room == room_level_1)
{
	audio_play_sound(snd_gameplay, 0, 1);
}

if(room == room_level_2)
{
	audio_play_sound(snd_gameplay, 0, 1);
}

if(room == room_level_3)
{
	audio_play_sound(snd_gameplay, 0, 1);
}