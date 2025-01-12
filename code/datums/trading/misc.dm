/datum/trader/ship/pet_shop
	name = "Pet Shop Owner"
	name_language = LANGUAGE_TAU
	origin = "Pet Shop"
	trade_flags = TRADER_GOODS|TRADER_MONEY|TRADER_WANTED_ONLY
	possible_origins = list("Paws-Out", "Pets-R-Smart", "Tentacle Companions", "Xeno-Pets and Assorted Goods", "Barks and Drools")
	speech = list(TRADER_HAIL_GENERIC    = "Welcome to my xeno-pet shop! Here you will find many wonderful companions. Some a bit more... aggressive than others. But companions none the less. I also buy pets, or trade them.",
				TRADER_HAIL_DENY         = "I no longer wish to speak to you.",

				TRADER_TRADE_COMPLETE    = "Remember to give them attention and food. They are living beings, and you should treat them like so.",
				TRADER_NO_BLACKLISTED   = "Legally I can' do that. Morally, I refuse to do that.",
				TRADER_FOUND_UNWANTED = "I only want animals. I don't need food or shiny things. I'm looking for specific ones at that. Ones I already have the cage and food for.",
				TRADER_NOT_ENOUGH   = "I'd give you the animal for free, but I need the money to feed the others. So you must pay in full.",
				TRADER_HOW_MUCH          = "This is a fine specimen. I believe it will cost you VALUE CURRENCY.",
				TRADER_WHAT_WANT         = "I have the facilities, currently, to support",

				TRADER_COMPLEMENT_FAILURE   = "That was almost charming.",
				TRADER_COMPLEMENT_SUCCESS = "Thank you. I needed that.",
				TRADER_INSULT_GOOD       = "I ask you to stop. We can be peaceful. I know we can.",
				TRADER_INSULT_BAD        = "My interactions with you are becoming less than fruitful.",

				TRADER_BRIBE_FAILURE     = "I'm not going to do that. I have places to be.",
				TRADER_BRIBE_SUCCESS      = "Hm. It'll be good for the animals, so sure.",
				)

	possible_wanted_items = list(/mob/living/simple_animal/passive/corgi      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/cat         = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/crab        = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/lizard      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/mouse       = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/mushroom    = TRADER_THIS_TYPE,
								/mob/living/simple_animal/tindalos    = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/tomato      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/cow         = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/chick       = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/chicken     = TRADER_THIS_TYPE,
								/mob/living/simple_animal/yithian     = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/diyaab = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/bear = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/shantak= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/parrot      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/samak= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/goat = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/carp = TRADER_THIS_TYPE)

	possible_trading_items = list(/mob/living/simple_animal/passive/corgi     = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/cat         = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/crab        = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/lizard      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/mouse       = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/mushroom    = TRADER_THIS_TYPE,
								/mob/living/simple_animal/tindalos    = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/tomato      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/cow         = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/chick       = TRADER_THIS_TYPE,
								/mob/living/simple_animal/passive/chicken     = TRADER_THIS_TYPE,
								/mob/living/simple_animal/yithian     = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/diyaab = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/bear= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/shantak= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/parrot      = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/beast/samak= TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/retaliate/goat = TRADER_THIS_TYPE,
								/mob/living/simple_animal/hostile/carp= TRADER_THIS_TYPE,
								/obj/item/device/dociler              = TRADER_THIS_TYPE,
								/obj/structure/dogbed                 = TRADER_THIS_TYPE)

/datum/trader/ship/pet_shop/New()
	..()
	speech[TRADER_HAIL_START + SPECIES_TAU] = "Ah! A fellow Skrell. How wonderful, I may have a few pets imported from back home. Take a look."
