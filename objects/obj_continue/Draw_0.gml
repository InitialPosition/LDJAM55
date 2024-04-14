draw_set_halign(fa_center)

draw_set_font(fnt_damage)
draw_text(room_width / 2, 250, "ROUND " + string(obj_info.ante - 1) + "/3 WON!")

draw_set_font(fnt_leemon)
draw_text(room_width / 2, 400, text[obj_info.ante])

draw_set_font(fnt_card_detail)
draw_text(room_width / 2, 800, "Press ENTER to continue")
