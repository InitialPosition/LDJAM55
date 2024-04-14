if current_text >= array_length(text) - 1 {
	exit
}

current_text++
display_text = text[current_text]

audio_play_sound(sounds[current_text], 1, 0)

alarm[0] = timers[current_text]
