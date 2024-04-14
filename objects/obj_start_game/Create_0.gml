with obj_info {
	instance_destroy()
}

instance_create_layer(0, 0, "Instances", obj_info)

if audio_is_playing(mus_game) {
	audio_stop_sound(mus_game)
}

audio_play_sound(mus_menu, 1, 1)
