if drawing {
	
	draw_set_alpha(0.6)
	draw_rectangle_color(0, obj_mark_atk_opponent.y + 60, room_width, obj_mark_atk_opponent.y + 240, c_black, c_black, c_black, c_black, 0)
	draw_set_alpha(1)
	
	if target == obj_card_drawer {
		draw_set_font(fnt_damage)
		draw_set_halign(fa_center)
		draw_text_color(obj_mark_atk_opponent.x + 230, obj_mark_atk_opponent.y + 130, text, col, col, col, col, 1)
		draw_set_alpha(1)
	} else {
		draw_set_font(fnt_damage)
		draw_set_halign(fa_center)
		draw_text_color(obj_mark_atk_player.x + 230, obj_mark_atk_player.y + 130, text, col, col, col, col, 1)
	}
}
