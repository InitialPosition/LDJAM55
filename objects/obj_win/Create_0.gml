obj_play_round.clickable = false
with obj_playable_card {
	playable = false
}

target = rm_next_round
if obj_info.ante >= 3 {
	target = rm_won
}

fade_a = 0
fade_speed = 0.02
fading = true
