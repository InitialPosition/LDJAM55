function scr_card_drawer_init() {
	randomize()
	
	can_draw = false
	primed = false
	deck = array_create(0)
	player_cards = array_create(0)
	hitpoints = 30
	
	card_string = " CARDS"
	
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
	
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(0), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(1), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(2), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(3), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(13), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(14), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(15), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(16), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(26), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(27), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(28), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(29), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(39), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(40), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(41), deck, INSERTION_POSITION.RANDOM)
	scr_card_manager_add_card_to_deck(scr_card_manager_get_card(42), deck, INSERTION_POSITION.RANDOM)
	/**
	// seed the deck with 52 2-5 cards
	for (a = 0; a < 52; a++) {
		var _card_index = choose(0, 1, 2, 3, 13, 14, 15, 16, 26, 27, 28, 29, 39, 40, 41, 42)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(_card_index), deck, INSERTION_POSITION.RANDOM)
	}
	**/
	hand_size = 3
	auto_give_speed = 10
	if scr_card_manager_get_deck_size(obj_card_manager.hand_player) < hand_size {
		scr_card_drawer_draw_to_seven_cards()
	}
}

function scr_card_drawer_set_prime_state(_state) {
	primed = _state
}

function scr_card_drawer_check_for_draw() {
	if primed and can_draw {
		scr_card_drawer_set_prime_state(false)
	
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
	
	if scr_card_manager_get_deck_size(obj_card_manager.hand_player) < hand_size {
		alarm[0] = auto_give_speed
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
	draw_text(x + sprite_width / 2, y - 20 + sprite_height / 2, string(_cards) + _card_string)
	draw_set_alpha(1)
	
	draw_sprite(spr_heart, 0, x + 56, y - 64)
	draw_set_halign(fa_left)
	draw_set_font(fnt_ingame_info)
	draw_text(x + 130, y - 50, string(hitpoints))
}
