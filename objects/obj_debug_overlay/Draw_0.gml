
if debug {
	draw_set_halign(fa_left)
	draw_set_font(fnt_card_detail_body)
	
	draw_text(20, 20, obj_card_drawer.player_cards)
	draw_text(20, 40, obj_card_manager.hand_player)
	draw_text(20, 60, obj_card_manager.atk_played)
	draw_text(20, 80, obj_card_manager.def_played)
	draw_text(20, 100, obj_card_manager.atk_played_opponent)
	draw_text(20, 120, obj_card_manager.def_played_opponent)
	draw_text(20, 140, string(obj_card_drawer_opponent.opponent_cards))
	draw_text(20, 160, string(obj_card_drawer.discard))
	draw_text(20, 180, string(obj_card_drawer_opponent.discard))
}
