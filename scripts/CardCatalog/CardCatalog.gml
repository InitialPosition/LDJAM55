/**
		This is the function that holds all card definitions in the game. A card is defined as an array in
		the following form:
		[
			CARD ID,
			CARD NAME,
			CARD DESCRIPTION,
			CARD VALUE,
			CARD SUIT,
			CARD DAMAGE MODIFIER,
			CARD CATEGORY,
			CARD RARITY
		]
**/

function scr_card_manager_get_card(_id) {
	switch _id {
		case 0:
			return
			[
				_id,
				"2 of DAGGERS",
				"Deals 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 1:
			return
			[
				_id,
				"3 of DAGGERS",
				"Deals 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 2:
			return
			[
				_id,
				"4 of DAGGERS",
				"Deals 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 3:
			return
			[
				_id,
				"5 of DAGGERS",
				"Deals 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 4:
			return
			[
				_id,
				"6 of DAGGERS",
				"Deals 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 5:
			return
			[
				_id,
				"7 of DAGGERS",
				"Deals 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 6:
			return
			[
				_id,
				"8 of DAGGERS",
				"Deals 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 7:
			return
			[
				_id,
				"9 of DAGGERS",
				"Deals 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 8:
			return
			[
				_id,
				"10 of DAGGERS",
				"Deals 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 9:
			return
			[
				_id,
				"JACK of DAGGERS",
				"Deals 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 10:
			return
			[
				_id,
				"QUEEN of DAGGERS",
				"Deals 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 11:
			return
			[
				_id,
				"KING of DAGGERS",
				"Deals 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 12:
			return
			[
				_id,
				"ACE of DAGGERS",
				"Deals 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 13:
			return
			[
				_id,
				"2 of TRIANGLES",
				"Shields from 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 14:
			return
			[
				_id,
				"3 of TRIANGLES",
				"Shields from 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 15:
			return
			[
				_id,
				"4 of TRIANGLES",
				"Shields from 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 16:
			return
			[
				_id,
				"5 of TRIANGLES",
				"Shields from 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 17:
			return
			[
				_id,
				"6 of TRIANGLES",
				"Shields from 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 18:
			return
			[
				_id,
				"7 of TRIANGLES",
				"Shields from 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 19:
			return
			[
				_id,
				"8 of TRIANGLES",
				"Shields from 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 20:
			return
			[
				_id,
				"9 of TRIANGLES",
				"Shields from 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 21:
			return
			[
				_id,
				"10 of TRIANGLES",
				"Shields from 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 22:
			return
			[
				_id,
				"JACK of TRIANGLES",
				"Shields from 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 23:
			return
			[
				_id,
				"QUEEN of TRIANGLES",
				"Shields from 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 24:
			return
			[
				_id,
				"KING of TRIANGLES",
				"Shields from 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 25:
			return
			[
				_id,
				"ACE of TRIANGLES",
				"Shields from 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 26:
			return
			[
				_id,
				"2 of CROSSES",
				"Shields from 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 27:
			return
			[
				_id,
				"3 of CROSSES",
				"Shields from 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 28:
			return
			[
				_id,
				"4 of CROSSES",
				"Shields from 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 29:
			return
			[
				_id,
				"5 of CROSSES",
				"Shields from 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 30:
			return
			[
				_id,
				"6 of CROSSES",
				"Shields from 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 31:
			return
			[
				_id,
				"7 of CROSSES",
				"Shields from 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 32:
			return
			[
				_id,
				"8 of CROSSES",
				"Shields from 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 33:
			return
			[
				_id,
				"9 of CROSSES",
				"Shields from 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 34:
			return
			[
				_id,
				"10 of CROSSES",
				"Shields from 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 35:
			return
			[
				_id,
				"JACK of CROSSES",
				"Shields from 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 36:
			return
			[
				_id,
				"QUEEN of CROSSES",
				"Shields from 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 37:
			return
			[
				_id,
				"KING of CROSSES",
				"Shields from 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 38:
			return
			[
				_id,
				"ACE of CROSSES",
				"Shields from 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 39:
			return
			[
				_id,
				"2 of SPHERES",
				"Deals 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 40:
			return
			[
				_id,
				"3 of SPHERES",
				"Deals 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 41:
			return
			[
				_id,
				"4 of SPHERES",
				"Deals 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 42:
			return
			[
				_id,
				"5 of SPHERES",
				"Deals 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 43:
			return
			[
				_id,
				"6 of SPHERES",
				"Deals 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 44:
			return
			[
				_id,
				"7 of SPHERES",
				"Deals 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 45:
			return
			[
				_id,
				"8 of SPHERES",
				"Deals 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 46:
			return
			[
				_id,
				"9 of SPHERES",
				"Deals 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 47:
			return
			[
				_id,
				"10 of SPHERES",
				"Deals 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 48:
			return
			[
				_id,
				"JACK of SPHERES",
				"Deals 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 49:
			return
			[
				_id,
				"QUEEN of SPHERES",
				"Deals 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 50:
			return
			[
				_id,
				"KING of SPHERES",
				"Deals 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 51:
			return
			[
				_id,
				"ACE of SPHERES",
				"Deals 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 52:
			return
			[
				_id,
				"2 of DAGGERS",
				"Deals 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 53:
			return
			[
				_id,
				"3 of DAGGERS",
				"Deals 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 54:
			return
			[
				_id,
				"4 of DAGGERS",
				"Deals 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 55:
			return
			[
				_id,
				"5 of DAGGERS",
				"Deals 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 56:
			return
			[
				_id,
				"6 of DAGGERS",
				"Deals 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 57:
			return
			[
				_id,
				"7 of DAGGERS",
				"Deals 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 58:
			return
			[
				_id,
				"8 of DAGGERS",
				"Deals 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 59:
			return
			[
				_id,
				"9 of DAGGERS",
				"Deals 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 60:
			return
			[
				_id,
				"10 of DAGGERS",
				"Deals 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 61:
			return
			[
				_id,
				"JACK of DAGGERS",
				"Deals 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 62:
			return
			[
				_id,
				"QUEEN of DAGGERS",
				"Deals 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 63:
			return
			[
				_id,
				"KING of DAGGERS",
				"Deals 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 64:
			return
			[
				_id,
				"ACE of DAGGERS",
				"Deals 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 65:
			return
			[
				_id,
				"2 of TRIANGLES",
				"Shields from 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 66:
			return
			[
				_id,
				"3 of TRIANGLES",
				"Shields from 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 67:
			return
			[
				_id,
				"4 of TRIANGLES",
				"Shields from 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 68:
			return
			[
				_id,
				"5 of TRIANGLES",
				"Shields from 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 69:
			return
			[
				_id,
				"6 of TRIANGLES",
				"Shields from 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 70:
			return
			[
				_id,
				"7 of TRIANGLES",
				"Shields from 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 71:
			return
			[
				_id,
				"8 of TRIANGLES",
				"Shields from 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 72:
			return
			[
				_id,
				"9 of TRIANGLES",
				"Shields from 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 73:
			return
			[
				_id,
				"10 of TRIANGLES",
				"Shields from 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 74:
			return
			[
				_id,
				"JACK of TRIANGLES",
				"Shields from 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 75:
			return
			[
				_id,
				"QUEEN of TRIANGLES",
				"Shields from 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 76:
			return
			[
				_id,
				"KING of TRIANGLES",
				"Shields from 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 77:
			return
			[
				_id,
				"ACE of TRIANGLES",
				"Shields from 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.SPADES,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 78:
			return
			[
				_id,
				"2 of CROSSES",
				"Shields from 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 79:
			return
			[
				_id,
				"3 of CROSSES",
				"Shields from 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 80:
			return
			[
				_id,
				"4 of CROSSES",
				"Shields from 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 81:
			return
			[
				_id,
				"5 of CROSSES",
				"Shields from 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 82:
			return
			[
				_id,
				"6 of CROSSES",
				"Shields from 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 83:
			return
			[
				_id,
				"7 of CROSSES",
				"Shields from 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 84:
			return
			[
				_id,
				"8 of CROSSES",
				"Shields from 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 85:
			return
			[
				_id,
				"9 of CROSSES",
				"Shields from 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 86:
			return
			[
				_id,
				"10 of CROSSES",
				"Shields from 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 87:
			return
			[
				_id,
				"JACK of CROSSES",
				"Shields from 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 88:
			return
			[
				_id,
				"QUEEN of CROSSES",
				"Shields from 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 89:
			return
			[
				_id,
				"KING of CROSSES",
				"Shields from 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 90:
			return
			[
				_id,
				"ACE of CROSSES",
				"Shields from 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.CLUBS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 91:
			return
			[
				_id,
				"2 of SPHERES",
				"Deals 2 damage.",
				CARD_VALUE.TWO,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 92:
			return
			[
				_id,
				"3 of SPHERES",
				"Deals 3 damage.",
				CARD_VALUE.THREE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 93:
			return
			[
				_id,
				"4 of SPHERES",
				"Deals 4 damage.",
				CARD_VALUE.FOUR,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 94:
			return
			[
				_id,
				"5 of SPHERES",
				"Deals 5 damage.",
				CARD_VALUE.FIVE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 95:
			return
			[
				_id,
				"6 of SPHERES",
				"Deals 6 damage.",
				CARD_VALUE.SIX,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 96:
			return
			[
				_id,
				"7 of SPHERES",
				"Deals 7 damage.",
				CARD_VALUE.SEVEN,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 97:
			return
			[
				_id,
				"8 of SPHERES",
				"Deals 8 damage.",
				CARD_VALUE.EIGHT,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 98:
			return
			[
				_id,
				"9 of SPHERES",
				"Deals 9 damage.",
				CARD_VALUE.NINE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 99:
			return
			[
				_id,
				"10 of SPHERES",
				"Deals 10 damage.",
				CARD_VALUE.TEN,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 100:
			return
			[
				_id,
				"JACK of SPHERES",
				"Deals 11 damage.",
				CARD_VALUE.JACK,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 101:
			return
			[
				_id,
				"QUEEN of SPHERES",
				"Deals 12 damage.",
				CARD_VALUE.QUEEN,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 102:
			return
			[
				_id,
				"KING of SPHERES",
				"Deals 13 damage.",
				CARD_VALUE.KING,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		case 103:
			return
			[
				_id,
				"ACE of SPHERES",
				"Deals 14 damage.",
				CARD_VALUE.ACE,
				CARD_SUIT.DIAMONDS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.COMMON
			]
		default:
			return
			[
				-999,
				"RedCocoa",
				"Uhh... if I show up, you broke the game somehow. Whoops.",
				999,
				CARD_SUIT.HEARTS,
				0,
				CARD_CATEGORY.PLAYING_CARD,
				CARD_RARITY.LEGENDARY
			]
	}
}