locked = false

obj_info.ante++
if obj_info.ante > 3 {
	room_goto(rm_won)
}

text[2] = "\"Congratulations, you beat the easy round! Let's see how you do with\nmore and higher cards...\""
text[3] = "Wow, you might actually win this... well, let's use the full deck this time!"
