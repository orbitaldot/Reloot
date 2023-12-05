if !instance_exists(obj_whitefade) and !instance_exists(obj_help_text) and !played_real_music {
	audio_stop_sound(global.music);	
	global.music = audio_play_sound(mus_level, 100, 1, 1, 0, 1);
	audio_sound_gain(mus_level, 1, 0);
	played_real_music = true;
}