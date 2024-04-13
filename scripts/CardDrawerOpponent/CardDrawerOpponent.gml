function scr_card_drawer_opponent_init() {
	deck = array_create(0)
	opponent_cards = array_create(0)
	
	hitpoints = 10
	
	card_string = " CARDS"
	
	// calculate some positioning data and declare sorting function
	midway_to_screen = distance_to_point(room_width - 5, y) / 2
	
	// seed the deck with 52 2-5 cards
	for (a = 0; a < 52; a++) {
		var _card_index = choose(0, 1, 2, 3, 13, 14, 15, 16, 26, 27, 28, 29, 39, 40, 41, 42)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(_card_index), deck, INSERTION_POSITION.RANDOM)
	}
	
	hand_size = 3
	auto_give_speed = 10
	if scr_card_manager_get_deck_size(obj_card_manager.hand_opponent) < hand_size {
		scr_card_drawer_opponent_draw_to_seven_cards()
	}
}

function scr_card_drawer_opponent_draw_to_seven_cards() {
	var _card_data = scr_card_manager_draw_card(deck, obj_card_manager.hand_opponent)
	if _card_data == undefined {
		return
	}
	var _card = instance_create_layer(x, y, "Instances", obj_playable_card)
	_card.hidden = true
	array_push(opponent_cards, _card)
			
	with _card {
		scr_playable_card_load_stats(-1, _card_data)
	}
	
	// update all cards to optimally use space
	var _cards_in_hand = array_length(opponent_cards)
	var _card_start_x = midway_to_screen - (_cards_in_hand - 1) * 200 / 2
	
	var _current_card_id
	var _current_card
	for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
		_current_card = array_get(opponent_cards, _current_card_id)
		
		_current_card.target_x = _card_start_x + (_current_card_id * 200)
		_current_card.target_y = y
	}
	
	if scr_card_manager_get_deck_size(obj_card_manager.hand_opponent) < hand_size {
		alarm[0] = auto_give_speed
	}
}

function scr_card_drawer_opponent_draw() {
	draw_sprite(spr_deck, 0, x, y)
	draw_sprite(spr_heart, 0, x + 56, y + sprite_height + 24)
	draw_set_halign(fa_left)
	draw_set_font(fnt_ingame_info)
	draw_text(x + 130, y + sprite_height + 36, string(hitpoints))
}
