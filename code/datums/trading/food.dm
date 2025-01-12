/* // Food merchants would make growing food, colonizing worlds kind of pointless. Why start a farm when you can teleport food for almost no cost?
/datum/trader/grocery
	name = "Grocer"
	name_language = TRADER_DEFAULT_NAME
	possible_origins = list("HyTee", "Kreugars", "Spaceway", "Privaxs", "FutureValue", "Phyvendyme", "Skreller's Market")
	trade_flags = TRADER_MONEY

	possible_trading_items = list(/obj/item/reagent_containers/food/snacks                      = TRADER_SUBTYPES_ONLY,
							/obj/item/reagent_containers/food/drinks/cans                       = TRADER_SUBTYPES_ONLY,
							/obj/item/reagent_containers/food/drinks/bottle                     = TRADER_SUBTYPES_ONLY,
							/obj/item/reagent_containers/food/drinks/bottle/small               = TRADER_BLACKLIST,
							/obj/item/reagent_containers/food/snacks/boiledslimecore            = TRADER_BLACKLIST,
							/obj/item/reagent_containers/food/snacks/checker                    = TRADER_BLACKLIST_ALL,
							/obj/item/reagent_containers/food/snacks/fruit_slice                = TRADER_BLACKLIST,
							/obj/item/reagent_containers/food/snacks/slice                      = TRADER_BLACKLIST_ALL,
							/obj/item/reagent_containers/food/snacks/grown                      = TRADER_BLACKLIST_ALL,
							/obj/item/reagent_containers/food/snacks/human                      = TRADER_BLACKLIST_ALL,
							/obj/item/reagent_containers/food/snacks/sliceable/braincake        = TRADER_BLACKLIST,
							/obj/item/reagent_containers/food/snacks/meat/human                 = TRADER_BLACKLIST,
							/obj/item/reagent_containers/food/snacks/variable                   = TRADER_BLACKLIST_ALL
							)

	speech = list(TRADER_HAIL_GENERIC     = "Hello, welcome to ORIGIN, grocery store of the future!",
				TRADER_HAIL_DENY          = "I'm sorry, we've blacklisted your communications due to rude behavior.",

				TRADER_TRADE_COMPLETE     = "Thank you for shopping at ORIGIN!",
				TRADER_NO_BLACKLISTED    = "I... wow, that's... no, sir. No.",
				TRADER_NO_GOODS     = "ORIGIN only accepts cash, sir.",
				TRADER_NOT_ENOUGH   = "That is not enough money, sir.",
				TRADER_HOW_MUCH           = "Sir, that'll cost you VALUE CURRENCY. Will that be all?",

				TRADER_COMPLEMENT_FAILURE    = "Sir, this is a professional environment. Please don't make me get my manager.",
				TRADER_COMPLEMENT_SUCCESS  = "Thank you, sir!",
				TRADER_INSULT_GOOD        = "Sir, please do not make a scene.",
				TRADER_INSULT_BAD         = "Sir, I WILL get my manager if you don't calm down.",

				TRADER_BRIBE_FAILURE      = "Of course sir! ORIGIN is always here for you!",
				)

/datum/trader/bakery
	name = "Pastry Chef"
	name_language = TRADER_DEFAULT_NAME
	origin = "Bakery"
	possible_origins = list("Cakes By Design", "Corner Bakery Local", "My Favorite Cake & Pastry Cafe", "Mama Joes Bakery", "Sprinkles and Fun", "Cakestrosity")

	speech = list(TRADER_HAIL_GENERIC     = "Hello, welcome to ORIGIN! We serve baked goods, including pies, cakes, and anything sweet!",
				TRADER_HAIL_DENY          = "Our food is a privilege, not a right. Goodbye.",

				TRADER_TRADE_COMPLETE     = "Thank you for your purchase! Come again if you're hungry for more!",
				TRADER_NO_BLACKLISTED    = "We only accept money. Not... that.",
				TRADER_NO_GOODS     = "Cash for cakes! That's our business!",
				TRADER_NOT_ENOUGH   = "Our dishes are much more expensive than that, sir.",
				TRADER_HOW_MUCH           = "That lovely dish will cost you VALUE CURRENCY.",

				TRADER_COMPLEMENT_FAILURE    = "Oh wow, how nice of you...",
				TRADER_COMPLEMENT_SUCCESS  = "You're almost as sweet as my pies!",
				TRADER_INSULT_GOOD        = "My pies are NOT knockoffs!",
				TRADER_INSULT_BAD         = "Well, aren't you a sour apple?",

				TRADER_BRIBE_FAILURE      = "Oh ho ho! I'd never think of taking ORIGIN on the road!",
				)
	possible_trading_items = list(/obj/item/reagent_containers/food/snacks/slice/birthdaycake/filled     = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/carrotcake/filled         = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/cheesecake/filled         = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/chocolatecake/filled      = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/lemoncake/filled          = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/limecake/filled           = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/orangecake/filled         = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/plaincake/filled          = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/pumpkinpie/filled         = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/slice/bananabread/filled        = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/sliceable                       = TRADER_SUBTYPES_ONLY,
								/obj/item/reagent_containers/food/snacks/sliceable/pizza                 = TRADER_BLACKLIST_ALL,
								/obj/item/reagent_containers/food/snacks/sliceable/xenomeatbread         = TRADER_BLACKLIST,
								/obj/item/reagent_containers/food/snacks/sliceable/flatdough             = TRADER_BLACKLIST,
								/obj/item/reagent_containers/food/snacks/sliceable/braincake             = TRADER_BLACKLIST,
								/obj/item/reagent_containers/food/snacks/pie                             = TRADER_THIS_TYPE,
								/obj/item/reagent_containers/food/snacks/applepie                        = TRADER_THIS_TYPE)
*/
