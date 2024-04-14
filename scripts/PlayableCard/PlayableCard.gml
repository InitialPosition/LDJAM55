enum CARD_COLOR {
	RED = $200090,
	BLUE = $902000
}

function scr_playable_card_init() {
	target_x = x
	target_y = y
	easing = 0.3
	hidden = false
	playable = true
	in_play = false
	
	hint_box = instance_create_layer(x, y, "Instances_Info", obj_infobox)
	hint_box.visible = false
	
	// set up hover animation
	hover_speed = random_range(0.01, 0.04)
	hover_amp = irandom_range(2, 10)
	hover_value = 0
	
	draw_color = c_black
	skin = spr_card_background_common
	value = 0																						// the card value
	suit = CARD_SUIT.HEARTS																			// the card suit
	damage_modifier = 0																				// any additional value this card has (from buffs etc)																		// the card ID. handles info lookup, calculations and graphics
	category = CARD_CATEGORY.PLAYING_CARD
	name = ""
	description = ""
	rarity = CARD_RARITY.COMMON
	
	card_id = 0																						// card id used to look up info on card
	scr_playable_card_load_stats(card_id)
}

function scr_playable_card_load_stats(_id, _card_stats = noone) {
	if _card_stats == noone {
		_card_stats = scr_card_manager_get_card(_id)
	}
	
	if typeof(_card_stats) == "number" {
		_card_stats = scr_card_manager_get_card(_id)
	}
	
	value = _card_stats[VALUES.VALUE]
	suit = _card_stats[VALUES.SUIT]
	damage_modifier = _card_stats[VALUES.DAMAGE_MODIFIER]
	category = _card_stats[VALUES.CATEGORY]
	name = _card_stats[VALUES.NAME]
	description = _card_stats[VALUES.DESCRIPTION]
	rarity = _card_stats[VALUES.RARITY]
	card_id = _card_stats[VALUES.ID]
	
	// set some drawing stuff
	if suit == CARD_SUIT.CLUBS or suit == CARD_SUIT.SPADES {
		draw_color = CARD_COLOR.BLUE
	} else {
		draw_color = CARD_COLOR.RED
	}
	
	if rarity == CARD_RARITY.COMMON {
		skin = spr_card_background_common
	}
	if rarity == CARD_RARITY.RARE {
		skin = spr_card_background_rare
	}
}

function scr_playable_card_update() {
	// if not at target position, move towards target position
	x = lerp(x, target_x, easing)
	y = lerp(y, target_y, easing)
	
	hover_value += hover_speed
	if hover_value > 6.28 {
		hover_value -= 6.28
	}
	
	offset_y = sin(hover_value) * hover_amp
	
	hint_box.x = x - 50
	hint_box.y = y + offset_y - 200
}

function scr_playable_card_click() {
	if !playable {
		return
	}
	
	if not in_play {
		if suit == CARD_SUIT.HEARTS or suit == CARD_SUIT.DIAMONDS {
			if obj_card_manager.atk_played == noone {
				target_y -= 80
				in_play = true
		
				obj_card_manager.atk_played = self
			}
		} else {
			if obj_card_manager.def_played == noone {
				target_y -= 80
				in_play = true
		
				obj_card_manager.def_played = self
			}
		}
		
		audio_play_sound(snd_card_select, 1, 0)
		
	} else {
		if suit == CARD_SUIT.HEARTS or suit == CARD_SUIT.DIAMONDS {
			target_y += 80
			in_play = false
		
			obj_card_manager.atk_played = noone
		} else {
			target_y += 80
			in_play = false
		
			obj_card_manager.def_played = noone
		}
	}
}

function scr_playable_card_draw() {
	if !hidden {
		draw_sprite(skin, 0, x, y + offset_y)
		draw_sprite_ext(spr_cards_values, value - 2, x, y + offset_y, 1, 1, 0, draw_color, 1)
		draw_sprite_ext(spr_cards_faces, suit, x, y + offset_y, 1, 1, 0, draw_color, 1)
	} else {
		draw_sprite(spr_card_back, 0, x, y + offset_y)
	}
}

function scr_playable_card_show_hint() {
	if hint_box.visible == false and playable and not hidden {
		hint_box.visible = true
	}
}

function scr_playable_card_hide_hint() {
	if hint_box.visible and playable and not hidden {
		hint_box.visible = false
	}
}
