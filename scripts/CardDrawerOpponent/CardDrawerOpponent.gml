function scr_card_drawer_opponent_init() {
	deck = array_create(0)
	opponent_cards = array_create(0)
	discard = array_create(0)
	
	card_string = " CARDS"
	
	// calculate some positioning data and declare sorting function
	midway_to_screen = distance_to_point(room_width - 5, y) / 2
	
	if obj_info.ante == 1 {
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(52), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(53), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(54), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(65), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(66), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(67), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(78), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(79), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(91), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(92), deck, INSERTION_POSITION.RANDOM)
	}
	else if obj_info.ante == 2 {
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(53), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(54), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(55), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(66), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(67), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(68), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(79), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(80), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(81), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(92), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(93), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(94), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(57), deck, INSERTION_POSITION.RANDOM)
		scr_card_manager_add_card_to_deck(scr_card_manager_get_card(96), deck, INSERTION_POSITION.RANDOM)
	} else {
		var _count
		for (_count = 0; _count < 52; _count++) {
			scr_card_manager_add_card_to_deck(scr_card_manager_get_card(_count + 52), deck, INSERTION_POSITION.RANDOM)
		}
	}
	
	hitpoints = obj_info.opponent_hp
	hand_size = obj_info.opponent_handsize
	auto_give_speed = 10
	if scr_card_manager_get_deck_size(obj_card_manager.hand_opponent) < hand_size {
		scr_card_drawer_opponent_draw_to_seven_cards()
	}
}

function scr_card_drawer_opponent_draw_to_seven_cards() {
	if array_length(deck) == 0 {
		scr_card_drawer_opponent_reseed()
		
		if scr_card_manager_get_deck_size(obj_card_manager.hand_opponent) < hand_size {
			alarm[0] = auto_give_speed
		}
		
		exit
	}
	
	var _card_data = scr_card_manager_draw_card(deck, obj_card_manager.hand_opponent)
	if _card_data == undefined {
		return
	}
	var _card = instance_create_layer(x, y, "Instances", obj_playable_card)
	_card.hidden = true
	_card.playable = false
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

function scr_card_drawer_opponent_reseed() {
	var _counter
	var _card
	for (_counter = 0; _counter < array_length(discard); _counter++) {
		_card = scr_card_manager_add_card_to_deck(scr_card_manager_get_card(array_get(discard, _counter)), deck, INSERTION_POSITION.RANDOM)
	}
	
	array_delete(discard, 0, array_length(discard))
}

function scr_card_drawer_opponent_draw() {
	draw_sprite(spr_deck, 0, x, y)
	draw_sprite(spr_heart, 0, x + 56, y + sprite_height + 24)
	draw_set_halign(fa_left)
	draw_set_font(fnt_ingame_info)
	draw_text(x + 130, y + sprite_height + 36, string(hitpoints))
}

function scr_card_drawer_opponent_make_move() {
	/**
			This AI is incredibly simple. It works on defense first and attacks afterwards.
			It checks for the following cases:
			1) Can it beat the current attack? If yes, self preserve and choose lowest
				defense that fully blocks damage. Otherwise, block as much as possible.
			2) Can it overcome the current defense? If yes, play attack that does damage.
	**/
	
		var _damage_to_prevent = 0
		if obj_card_manager.atk_played != noone {
			_damage_to_prevent = obj_card_manager.atk_played.value + obj_card_manager.atk_played.damage_modifier
		}
		var _cards_in_hand = array_length(opponent_cards)
		
		// from the lowest defense card, check if any beat the damage threat
		var _current_card_id
		var _current_card
		for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
			_current_card = array_get(opponent_cards, _current_card_id)
			
			// we are only looking at defense
			if _current_card.suit == CARD_SUIT.HEARTS or _current_card.suit == CARD_SUIT.DIAMONDS {
				continue
			}
			
			// if we have a fitting card, play it immediately
			if _current_card.value + _current_card.damage_modifier == _damage_to_prevent {
				obj_card_manager.def_played_opponent = _current_card
				_current_card.hidden = false
				
				break
			}
		}
		
		if obj_card_manager.def_played_opponent == noone {
			// if we're here, we had no perfect card. check if we can deny all damage.
			for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
				_current_card = array_get(opponent_cards, _current_card_id)
				
				if _current_card.suit == CARD_SUIT.HEARTS or _current_card.suit == CARD_SUIT.DIAMONDS {
					continue
				}
				
				if _current_card.value + _current_card.damage_modifier > _damage_to_prevent {
					obj_card_manager.def_played_opponent = _current_card
					_current_card.hidden = false
					
					break
				}
			}
		}
		
		if obj_card_manager.def_played_opponent == noone {
			// we still have none, play anything if possible
			for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
				_current_card = array_get(opponent_cards, _current_card_id)
				
				if _current_card.suit == CARD_SUIT.HEARTS or _current_card.suit == CARD_SUIT.DIAMONDS {
					continue
				}
				
				obj_card_manager.def_played_opponent = _current_card
				_current_card.hidden = false
					
				break
			}
		}
		
		// for ATK, we check if we can do more damage than the defense will do
		var _damage_to_beat = 0
		if obj_card_manager.def_played != noone {
			_damage_to_beat = obj_card_manager.def_played.value + obj_card_manager.def_played.damage_modifier
		}
		
		var _current_card_id
		var _current_card
		var _highest_damage = 0
		for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
			_current_card = array_get(opponent_cards, _current_card_id)
			
			if _current_card.suit == CARD_SUIT.CLUBS or _current_card.suit == CARD_SUIT.SPADES {
				continue
			}
			
			if _current_card.value + _current_card.damage_modifier >= _damage_to_beat {
				obj_card_manager.atk_played_opponent = _current_card
				_current_card.hidden = false
				
				if _current_card.value + _current_card.damage_modifier > _highest_damage {
					_highest_damage = _current_card.value + _current_card.damage_modifier
				}
				
				break
			}
		}
		
		if obj_card_manager.atk_played_opponent == noone {
			if _highest_damage != 0 {
				for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
					_current_card = array_get(opponent_cards, _current_card_id)
			
					if _current_card.suit == CARD_SUIT.CLUBS or _current_card.suit == CARD_SUIT.SPADES {
						continue
					}
			
					if _current_card.value + _current_card.damage_modifier == _highest_damage {
						obj_card_manager.atk_played_opponent = _current_card
						_current_card.hidden = false
						
						break
					}
				}
			}
		}
		
	
		if obj_card_manager.atk_played_opponent == noone {
			for (_current_card_id = 0; _current_card_id < _cards_in_hand; _current_card_id++) {
				_current_card = array_get(opponent_cards, _current_card_id)
			
				if _current_card.suit == CARD_SUIT.CLUBS or _current_card.suit == CARD_SUIT.SPADES {
					continue
				}
			
				obj_card_manager.atk_played_opponent = _current_card
				_current_card.hidden = false
						
				break
			}
		}
		
		
		if obj_card_manager.atk_played_opponent != noone {
			obj_card_manager.atk_played_opponent.target_x = obj_mark_atk_opponent.x + 4
			obj_card_manager.atk_played_opponent.target_y = obj_mark_atk_opponent.y + 4
			
			global.filter_player = false
			opponent_cards = array_filter(opponent_cards, obj_card_manager.filter_func)
		}
		
		if obj_card_manager.def_played_opponent != noone {
			obj_card_manager.def_played_opponent.target_x = obj_mark_def_opponent.x + 4
			obj_card_manager.def_played_opponent.target_y = obj_mark_def_opponent.y + 4
			
			global.filter_player = false
			opponent_cards = array_filter(opponent_cards, obj_card_manager.filter_func)
		}
	}
