function scr_play_init() {
	clickable = false
}

function scr_play_round() {
	
	if clickable {
		
		//if obj_card_manager.atk_played == noone
		
		clickable = false
		
		if obj_card_manager.atk_played != noone {
			obj_card_manager.atk_played.target_x = obj_mark_atk_player.x + 4
			obj_card_manager.atk_played.target_y = obj_mark_atk_player.y + 4
			obj_card_manager.atk_played.playable = false
		}
		
		if obj_card_manager.def_played != noone {
			obj_card_manager.def_played.target_x = obj_mark_def_player.x + 4
			obj_card_manager.def_played.target_y = obj_mark_def_player.y + 4
			obj_card_manager.def_played.playable = false
		}
		
		with obj_card_drawer_opponent {
			scr_card_drawer_opponent_make_move()
		}
		
		alarm[0] = 60
		
		audio_play_sound(snd_card_play, 1, 0)
		
		_dmg_player = 0
		_dmg_opponent = 0
		scr_play_tally_score()
	}
}

function scr_play_tally_score() {
	var _atk_player_value = 0
	var _atk_player_bonus = 0
	var _def_player_value = 0
	var _def_player_bonus = 0
	
	var _atk_opponent_value = 0
	var _atk_opponent_bonus = 0
	var _def_opponent_value = 0
	var _def_opponent_bonus = 0
	
	if obj_card_manager.atk_played != noone {
		_atk_player_value = obj_card_manager.atk_played.value
		_atk_player_bonus = obj_card_manager.atk_played.damage_modifier
		
		array_push(obj_card_drawer.discard, obj_card_manager.atk_played.card_id)
	}
	if obj_card_manager.def_played != noone {
		_def_player_value = obj_card_manager.def_played.value
		_def_player_bonus = obj_card_manager.def_played.damage_modifier
		
		array_push(obj_card_drawer.discard, obj_card_manager.def_played.card_id)
	}
	if obj_card_manager.atk_played_opponent != noone {
		_atk_opponent_value = obj_card_manager.atk_played_opponent.value
		_atk_opponent_bonus = obj_card_manager.atk_played_opponent.damage_modifier
		
		array_push(obj_card_drawer_opponent.discard, obj_card_manager.atk_played_opponent.card_id)
	}
	if obj_card_manager.def_played_opponent != noone {
		_def_opponent_value = obj_card_manager.def_played_opponent.value
		_def_opponent_bonus = obj_card_manager.def_played_opponent.damage_modifier
		
		array_push(obj_card_drawer_opponent.discard, obj_card_manager.def_played_opponent.card_id)
	}
	
	_dmg_player = max(0, (_atk_opponent_value + _atk_opponent_bonus) - (_def_player_value + _def_player_bonus))
	_dmg_opponent = max(0, (_atk_player_value + _atk_player_bonus) - (_def_opponent_value + _def_opponent_bonus))
	
	global.filter_player = true
	obj_card_manager.hand_player = array_filter(obj_card_manager.hand_player, obj_card_manager.filter_func)
	global.filter_player = false
	obj_card_manager.hand_opponent = array_filter(obj_card_manager.hand_opponent, obj_card_manager.filter_func)
	
	global.filter_player = true
	obj_card_drawer.player_cards = array_filter(obj_card_drawer.player_cards, obj_card_manager.filter_func)
}

function scr_play_calculate_new_hp() {
	audio_play_sound(snd_tally, 1, 0)
	
	var _hurt_player = instance_create_layer(0, 0, "Instances_Info", obj_hp_hit)
	_hurt_player.text = "YOU TAKE " + string(_dmg_player) + " DAMAGE!"
	_hurt_player.value = _dmg_player
	_hurt_player.col = TEXTBOX_COLOR.BRIGHTRED
	if _dmg_player == 0 {
		_hurt_player.text = "NO DAMAGE!"
		_hurt_player.col = TEXTBOX_COLOR.BRIGHTBLUE
	}
	_hurt_player.target = obj_card_drawer
	
	var _hurt_opponent = instance_create_layer(0, 0, "Instances_Info", obj_hp_hit)
	_hurt_opponent.text = "LEEMON TAKES " + string(_dmg_opponent) + " DAMAGE!"
	_hurt_opponent.value = _dmg_opponent
	_hurt_opponent.col = TEXTBOX_COLOR.BRIGHTGREEN
	if _dmg_opponent == 0 {
		_hurt_opponent.text = "NO DAMAGE!"
		_hurt_opponent.col = TEXTBOX_COLOR.BRIGHTRED
	}
	_hurt_opponent.target = obj_card_drawer_opponent
	
	_hurt_player.alarm[0] = 2
	_hurt_opponent.alarm[0] = 2
}

function scr_play_draw() {
	if clickable {
		draw_sprite(spr_play, 0, x, y)
	} else {
		draw_sprite_ext(spr_play, 0, x, y, 1, 1, 0, c_gray, 1)
	}
}
