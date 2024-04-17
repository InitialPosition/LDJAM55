display_text = ""

text[0] = "Hello?"
text[1] = "Ah, there we are."
text[2] = "Thank you for using the lemon summoning ritual. My name is Leemon and..."
text[3] = "Oh."
text[4] = "You wanted to summon a demon, didn't you..."
text[5] = "Cursive can really ruin your summonings. I know the feeling, bud."
text[6] = "Now, I would love to get out of your way so you can get back to your demon business..."
text[7] = "Unfortunately, I can't leave. Not until you beat me at my game."
text[8] = "That's the rules. I didn't make them..."
text[9] = "It's very simple. RED cards are attacking, BLUE cards defend.\nYou attack on the left, I attack on the right."
text[10] = "Survive three rounds and I am out of here. Press ENTER to begin."
text[11] = "dude..."
text[12] = "._."

timers[0] = 120
timers[1] = 120
timers[2] = 280
timers[3] = 120
timers[4] = 240
timers[5] = 320
timers[6] = 340
timers[7] = 320
timers[8] = 200
timers[9] = 570
timers[10] = 1100
timers[11] = 200
timers[12] = 10

sounds[0] = snd_leemon_talk_1
sounds[1] = snd_leemon_talk_2
sounds[2] = snd_leemon_talk_3
sounds[3] = snd_leemon_talk_4
sounds[4] = snd_leemon_talk_5
sounds[5] = snd_leemon_talk_6
sounds[6] = snd_leemon_talk_7
sounds[7] = snd_leemon_talk_8
sounds[8] = snd_leemon_talk_9
sounds[9] = snd_leemon_talk_10
sounds[10] = snd_leemon_talk_11
sounds[11] = snd_leemon_talk_4
sounds[12] = snd_silent

current_text = -1
max_text = 12

alarm[0] = 160

if !audio_is_playing(mus_intro) {
	audio_play_sound(mus_intro, 1, 0)
}