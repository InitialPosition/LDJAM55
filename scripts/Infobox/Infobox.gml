enum TEXTBOX_COLOR {
	RED = $4020B0,
	BRIGHTRED = $5020F3,
	BLUE = $B05020,
	BRIGHTBLUE = $EE6020,
	GREEN = $48893E,
	BRIGHTGREEN = $55EE3E,
	GENERAL = $999999
}

function scr_infobox_init() {
	caption = ""
	body = ""
	caption_col = c_white
}

function scr_infobox_draw() {
	draw_sprite_ext(spr_hintbox, 0, x, y, 7, 4, 0, c_white, 1)
	draw_set_font(fnt_card_detail)
	draw_set_halign(fa_center)
	
	//draw_text_color(x + sprite_width * 3, y + 24, caption, c_black, c_black, c_black, c_black, 1)
	draw_text_color(x + sprite_width * 3.5, y + 20, caption, caption_col, caption_col, caption_col, caption_col, 1)
	
	draw_set_font(fnt_card_detail_body)
	draw_text_ext_color(x + sprite_width * 3.5, y + 62, body, 16, 320, c_black, c_black, c_black, c_black, 1)
	draw_text_ext_color(x + sprite_width * 3.5, y + 60, body, 16, 320, TEXTBOX_COLOR.GENERAL, TEXTBOX_COLOR.GENERAL, TEXTBOX_COLOR.GENERAL, TEXTBOX_COLOR.GENERAL, 1)
}
