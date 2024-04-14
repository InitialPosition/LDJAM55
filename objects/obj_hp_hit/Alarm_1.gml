
with obj_card_manager.atk_played {
	instance_destroy()
}

with obj_card_manager.def_played {
	instance_destroy()
}

with obj_card_manager.atk_played_opponent {
	instance_destroy()
}

with obj_card_manager.def_played_opponent {
	instance_destroy()
}

obj_card_manager.atk_played = noone
obj_card_manager.def_played = noone
obj_card_manager.atk_played_opponent = noone
obj_card_manager.def_played_opponent = noone

with obj_card_drawer {
	if scr_card_manager_get_deck_size(obj_card_manager.hand_player) < hand_size {
		alarm[0] = auto_give_speed
	} else {
		obj_play_round.clickable = true
	}
}

with obj_card_drawer_opponent {
	if scr_card_manager_get_deck_size(obj_card_manager.hand_opponent) < hand_size {
		alarm[0] = auto_give_speed
	} else {
		obj_play_round.clickable = true
	}
}

instance_destroy()
