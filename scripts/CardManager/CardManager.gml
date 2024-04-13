enum INSERTION_POSITION {
	TOP,
	BOTTOM,
	RANDOM
}

enum CARD_SUIT {
	HEARTS,				// Daggers
	SPADES,				// Triangles
	CLUBS,				// Crosses
	DIAMONDS			// Spheres
}

enum CARD_CATEGORY {
	PLAYING_CARD,
	TRINKET
}

enum CARD_RARITY {
	COMMON,
	UNCOMMON,
	RARE,
	LEGENDARY
}

enum CARD_VALUE {
	TWO = 2,
	THREE = 3,
	FOUR = 4,
	FIVE = 5,
	SIX = 6,
	SEVEN = 7,
	EIGHT = 8,
	NINE = 9,
	TEN = 10,
	JACK = 11,
	QUEEN = 12,
	KING = 13,
	ACE = 14
}

enum VALUES {
	ID = 0,
	NAME = 1,
	DESCRIPTION = 2,
	VALUE = 3,
	SUIT = 4,
	DAMAGE_MODIFIER = 5,
	CATEGORY = 6,
	RARITY = 7
}

function scr_card_manager_init() {
	cards_in_play = array_create(0)
	deck_player = array_create(0)
	deck_opponent = array_create(0)
	
	hand_player = array_create(0)
	hand_opponent = array_create(0)
	
	atk_played = false
	def_played = false
}

function scr_card_manager_get_deck_at(_deck, _position) {
	return array_get(_deck, _position)
}

function scr_card_manager_draw_card(_deck, _recipient) {
	// draw the top card from the deck
	var _drawn_card = array_first(_deck)
	
	// remove it from the deck
	array_delete(_deck, 0, 1)
	
	// add it to the recipients hand
	array_push(_recipient, _drawn_card)
	
	return _drawn_card
}

function scr_card_manager_shuffle_deck(_deck) {
	return array_shuffle(_deck)
}

function scr_card_manager_get_deck_size(_deck) {
	return array_length(_deck)
}

function scr_card_manager_add_card_to_deck(_card, _deck, _position) {
	if _position == INSERTION_POSITION.BOTTOM {
		array_push(_deck, _card)
		return
	}
	
	var _insertion_index
	if _position == INSERTION_POSITION.TOP {
		_insertion_index = 0
	}
	if _position == INSERTION_POSITION.RANDOM {
		_insertion_index = irandom(array_length(_deck) - 1)
	}
	
	array_insert(_deck, _insertion_index, _card)
}
