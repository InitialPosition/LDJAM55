if fading {
	fade_a += fade_speed
	
	if fade_a >= 1 {
		fading = false
		room_goto(target)
	}
} else {
	fade_a -= fade_speed
	
	if fade_a <= 0 {
		instance_destroy()
	}
}
