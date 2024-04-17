function scr_card_drawer_init() {
	randomize()
	
	if !audio_is_playing(mus_game) {
		audio_play_sound(mus_game, 1, 1)
	}
	
	if !instance_exists(obj_card_manager) {
		instance_create_layer(0, 0, "Instances", obj_card_manager)
	}
	
	can_draw = false
	primed = false
	deck = array_create(0)
	player_cards = array_create(0)
	discard = array_create(0)
	
	card_string = " CARDS"
	card_substring = "UNTIL SHUFFLE"
	
	// calculate some positioning data and declare sorting function
	midway_to_screen = distance_to_point(5, y) / 2
	
	sort_function = function scr_card_drawer_sort_hand(_current, _next) {
		if _current.suit == CARD_SUIT.DIAMONDS or _current.suit == CARD_SUIT.HEARTS {
			if _next.suit == CARD_SUIT.CLUBS or _next.suit == CARD_SUIT.SPADES {
				return -1
			}
			if _current.value == _next.value {
				return 0
			}
		} else {
			if _next.suit == CARD_SUIT.DIAMONDS or _next.suit == CARD_SUIT.HEARTS {
				return 1
			}
			if _current.value == _next.value {
				return 0
			}
		}
		
		if _current.value > _next.value {
			return -1
		}
		if _current.value < _next.value {
			return 1
		}
		if _current.value == _next.value {
			return 0
		}
	}
	
	if obj_info.ante == 1 {
		obj_info.player_handsize = 4
		obj_info.opponent_handsize = 3
		obj_info.player_hp = 20
		obj_info.opponent_hp = 10
		
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(0), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(1), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(3), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(13), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(14), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(15), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(16), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(26), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(28), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(29), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(39), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(40), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(41), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(42), deck, INSERTION_POSITION.RANDOM)
		
		// in round one, always force a blue 3 and a red 4 onto the first hand
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(2), deck, INSERTION_POSITION.TOP)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(27), deck, INSERTION_POSITION.TOP)
	}
	else if obj_info.ante == 2 {
		obj_info.player_handsize = 5
		obj_info.opponent_handsize = 4
		obj_info.player_hp = 25
		obj_info.opponent_hp = 15
		
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(1), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(2), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(3), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(4), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(14), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(15), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(16), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(17), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(27), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(28), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(29), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(30), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(40), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(41), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(42), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(43), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(21), deck, INSERTION_POSITION.RANDOM)
		
	} else {
		obj_info.player_handsize = 6
		obj_info.opponent_handsize = 6
		obj_info.player_hp = 30
		obj_info.opponent_hp = 20
		
		var _count
		for (_count = 0; _count < 52; _count++) {
			scr_card_manager_add_card_to_deck(scr_card_manager_get_card(_count), deck, INSERTION_POSITION.RANDOM)
		}
	}
	
	hitpoints = obj_info.player_hp
	hand_size = obj_info.player_handsize
	auto_give_speed = 10
	if scr_card_manager_get_deck_size(obj_card_manager.hand_player) < hand_size {
		scr_card_drawer_draw_to_seven_cards()
	}
}

function scr_card_drawer_set_prime_state(_state) {
	primed = _state
}

function scr_card_drawer_reseed() {
	audio_play_sound(snd_card_shuffle, 1, 0)
	
	var _counter
	var _card
	for (_counter = 0; _counter < array_length(discard); _counter++) {
		_card = scr_card_manager_add_card_to_deck(scr_card_manager_get_card(array_get(discard, _counter)), deck, INSERTION_POSITION.RANDOM)
	}
	
	array_delete(discard, 0, array_length(discard))
}

function scr_card_drawer_check_for_draw() {
	if primed and can_draw {
		scr_card_drawer_set_prime_state(false)
	
		var _card_data = scr_card_manager_draw_card(deck, obj_card_manager.hand_player)
		if _card_data == undefined {
			return
		}
		var _card = instance_create_layer(x, y, "Instances", obj_playable_card)
				
		with _card {
			scr_playable_card_load_stats(-1, _card_data)
			hint_box.caption = name
			hint_box.body = description
			
			hidden = false
			playable = true
		}
		
		with _card.hint_box {
			if string_count("SPHERES", caption) > 0 {
				caption_col = TEXTBOX_COLOR.RED
			}
			if string_count("DAGGERS", caption) > 0 {
				caption_col = TEXTBOX_COLOR.RED
			}
			if string_count("TRIANGLES", caption) > 0 {
				caption_col = TEXTBOX_COLOR.BLUE
			}
			if string_count("CROSSES", caption) > 0 {
				caption_col = TEXTBOX_COLOR.BLUE
			}
		}
		
		array_sort(player_cards, sort_function)
		
		// update all cards to optimally use space
		var _cards_in_hand = array_length(player_cards)
		var _card_start_x = midway_to_screen - (_cards_in_hand - 1) * 200 / 2
		
		var _current_card_id
		var _current_card
		for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
			_current_card = array_get(player_cards, _current_card_id)
			
			_current_card.target_x = _card_start_x + (_current_card_id * 200)
			_current_card.target_y = y
		}
	}
}

function scr_card_drawer_draw_to_seven_cards() {
	if array_length(deck) == 0 {
		scr_card_drawer_reseed()
		
		if scr_card_manager_get_deck_size(obj_card_manager.hand_player) < hand_size {
			alarm[0] = auto_give_speed
		} else {
			obj_play_round.clickable = true
		}
		
		exit
	}
	
	var _card_data = scr_card_manager_draw_card(deck, obj_card_manager.hand_player)
	if _card_data == undefined {
		return
	}
	var _card = instance_create_layer(x, y, "Instances", obj_playable_card)
	array_push(player_cards, _card)
			
	with _card {
		scr_playable_card_load_stats(-1, _card_data)
		hint_box.caption = name
		hint_box.body = description
	}
	
	with _card.hint_box {
		visible = false
		
		if string_count("SPHERES", caption) > 0 {
			caption_col = TEXTBOX_COLOR.RED
		}
		if string_count("DAGGERS", caption) > 0 {
			caption_col = TEXTBOX_COLOR.RED
		}
		if string_count("TRIANGLES", caption) > 0 {
			caption_col = TEXTBOX_COLOR.BLUE
		}
		if string_count("CROSSES", caption) > 0 {
			caption_col = TEXTBOX_COLOR.BLUE
		}
	}
	
	array_sort(player_cards, sort_function)
	
	// update all cards to optimally use space
	var _cards_in_hand = array_length(player_cards)
	var _card_start_x = midway_to_screen - (_cards_in_hand - 1) * 200 / 2
	
	var _current_card_id
	var _current_card
	for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
		_current_card = array_get(player_cards, _current_card_id)
		
		_current_card.target_x = _card_start_x + (_current_card_id * 200)
		_current_card.target_y = y
	}
	
	audio_play_sound(snd_card_deal, 1, 0)

	if scr_card_manager_get_deck_size(obj_card_manager.hand_player) < hand_size {
		alarm[0] = auto_give_speed
	} else {
		obj_play_round.clickable = true
	}
}

function scr_card_drawer_draw() {
	var _cards = array_length(deck)
	var _card_string
	if _cards != 1 {
		_card_string = " CARDS"
	} else {
		_card_string = " CARD"
	}
	
	draw_sprite(spr_deck, 0, x, y)
	
	draw_set_font(fnt_ingame_info)
	draw_set_halign(fa_center)
	draw_set_alpha(0.3)
	draw_text(x + sprite_width / 2, y - 30 + sprite_height / 2, string(_cards) + _card_string)
	
	draw_set_font(fnt_card_detail_body)
	draw_text(x + sprite_width / 2, y + sprite_height / 2, card_substring)
	draw_set_alpha(1)
	
	draw_sprite(spr_heart, 0, x + 56, y - 64)
	draw_set_halign(fa_left)
	draw_set_font(fnt_ingame_info)
	draw_text(x + 130, y - 50, string(hitpoints))
}
