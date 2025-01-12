/datum/trader/ship/gunshop
	name = "Tetsumoko"
	name_language = TRADER_DEFAULT_NAME
	origin = "Tetsumoko"
	possible_origins = list("Slug Hauler", "Emperor's Mercy", "The Valkyrie", "Tetsumoko")
	speech = list(TRADER_HAIL_GENERIC    = "Welcome to the armory. What kind of firepower do you need today?",
				TRADER_HAIL_DENY         = "You’re not authorized for this trade. Move along.",

				TRADER_TRADE_COMPLETE    = "Weapons acquired. Keep your safety on until it’s time.",
				TRADER_NO_BLACKLISTED    = "This item is restricted. I can't provide that to you.",
				TRADER_NO_GOODS          = "No items, no trade. You’ve got nothing for me.",
				TRADER_NOT_ENOUGH        = "Your offer doesn't meet the price. Increase it if you want a deal.",
				TRADER_HOW_MUCH          = "This will cost you... VALUE.",

				TRADER_COMPLEMENT_FAILURE = "Compliments won’t change the price. Focus on the deal.",
				TRADER_COMPLEMENT_SUCCESS = "Ha, you’ve got taste. Let’s wrap this up.",
				TRADER_INSULT_GOOD        = "I expected more from someone coming to me for weapons.",
				TRADER_INSULT_BAD         = "Watch your tongue, or you’ll end up needing more than just a gun."
				)


	possible_trading_items = list(
		/obj/item/gun/projectile/pistol/stub = TRADER_ALL,
		/obj/item/gun/projectile/pistol/bolt_pistol = TRADER_ALL,
		/obj/item/gun/projectile/heavysniper/boltaction/imperial = TRADER_ALL,
		/obj/item/gun/projectile/automatic/autogun = TRADER_ALL,
		/obj/item/gun/projectile/automatic/boltrifle/lockebolter = TRADER_ALL
	)

/datum/trader/ship/gunshop2
	name = "The Guanshiyin"
	name_language = TRADER_DEFAULT_NAME
	origin = "Slug Seller"
	possible_origins = list("The Guanshiyin", "Emperor's Wrath", "The Camino", "Banderra", "Forge Wrath")
	speech = list(TRADER_HAIL_GENERIC    = "Looking for firearms? State your request, and I’ll see what I can offer.",
				TRADER_HAIL_DENY         = "No clearance for you. Move along.",

				TRADER_TRADE_COMPLETE    = "Transaction complete. Use your weapons wisely.",
				TRADER_NO_BLACKLISTED    = "This item is blacklisted. I cannot trade it.",
				TRADER_NO_GOODS          = "No firearms, no deal.",
				TRADER_NOT_ENOUGH        = "Your offer is insufficient. Come back with more.",
				TRADER_HOW_MUCH          = "It’ll cost you... VALUE.",

				TRADER_COMPLEMENT_FAILURE = "That’s enough talk. Let’s focus on the trade.",
				TRADER_COMPLEMENT_SUCCESS = "Not bad. Now, let’s finish this deal.",
				TRADER_INSULT_GOOD        = "I’d expect more from someone willing to pay for weapons.",
				TRADER_INSULT_BAD         = "I’d advise you keep your mouth shut if you want to leave here in one piece."
				)


	possible_trading_items = list(
		/obj/item/gun/projectile/pistol/slug = TRADER_ALL,
		/obj/item/gun/projectile/revolver/imperial = TRADER_ALL,
		/obj/item/gun/projectile/shotgun/pump/voxlegis = TRADER_ALL,
		/obj/item/gun/projectile/automatic/slugrifle = TRADER_ALL,
		/obj/item/gun/projectile/automatic/radcarbine = TRADER_ALL
	)

/datum/trader/ship/ammoshop
	name = "Munitorum Smuggler"
	name_language = TRADER_DEFAULT_NAME
	origin = "Munitorum Smuggler"
	possible_origins = list("Munitorum Smuggler", "Ghoul Smuggler")
	speech = list(TRADER_HAIL_GENERIC    = "Looking for ammo or just trouble?",
				TRADER_HAIL_DENY         = "You’re wasting my time. Move along before you regret it.",

				TRADER_TRADE_COMPLETE    = "Done. Don’t waste it; you’ll need every shot.",
				TRADER_NO_BLACKLISTED    = "I’m no heretic’s quartermaster. Take that filth elsewhere.",
				TRADER_NO_GOODS          = "No goods, no trade. I don’t deal in charity.",
				TRADER_NOT_ENOUGH        = "That won’t cover the cost. Come back when you’re serious.",
				TRADER_HOW_MUCH          = "It’s going to cost you… VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "You’d do well to shut your mouth before I shut it for you.",
				TRADER_COMPLEMENT_SUCCESS   = "Heh, not bad. I’ve heard worse.",
				TRADER_INSULT_GOOD          = "I expected better. Clearly, I was wrong.",
				TRADER_INSULT_BAD           = "Say that again, and you’ll eat a charge pack."
				)


	possible_trading_items = list(
		/obj/item/ammo_magazine/shotholder = TRADER_ALL,
		/obj/item/ammo_magazine/speedloader = TRADER_ALL,
		/obj/item/ammo_magazine/bolt_rifle_magazine = TRADER_ALL,
		/obj/item/ammo_magazine/bolt_pistol_magazine = TRADER_ALL
	)

/datum/trader/ship/ammoshop2
	name = "Munition Bulk Trader"
	name_language = TRADER_DEFAULT_NAME
	origin = "Munition Bulk Trader"
	possible_origins = list("Munition Bulk Trader", "The Supplier")
	speech = list(TRADER_HAIL_GENERIC    = "Looking for ammo or just trouble?",
				TRADER_HAIL_DENY         = "You’re wasting my time. Move along before you regret it.",

				TRADER_TRADE_COMPLETE    = "Done. Don’t waste it; you’ll need every shot.",
				TRADER_NO_BLACKLISTED    = "I’m no heretic’s quartermaster. Take that filth elsewhere.",
				TRADER_NO_GOODS          = "No goods, no trade. I don’t deal in charity.",
				TRADER_NOT_ENOUGH        = "That won’t cover the cost. Come back when you’re serious.",
				TRADER_HOW_MUCH          = "It’s going to cost you… VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "You’d do well to shut your mouth before I shut it for you.",
				TRADER_COMPLEMENT_SUCCESS   = "Heh, not bad. I’ve heard worse.",
				TRADER_INSULT_GOOD          = "I expected better. Clearly, I was wrong.",
				TRADER_INSULT_BAD           = "Say that again, and you’ll eat a charge pack."
				)


	possible_trading_items = list(
		/obj/item/ammo_magazine/magnum = TRADER_ALL,
		/obj/item/ammo_magazine/pistol = TRADER_ALL,
		/obj/item/ammo_magazine/shotgunmag = TRADER_ALL,
	)

/datum/trader/ship/ammoshop3
	name = "Militarum Trader"
	name_language = TRADER_DEFAULT_NAME
	origin = "Militarum Trader"
	possible_origins = list("Militarum Trader", "Naval Smuggler")
	speech = list(TRADER_HAIL_GENERIC    = "Looking for ammo or just trouble?",
				TRADER_HAIL_DENY         = "You’re wasting my time. Move along before you regret it.",

				TRADER_TRADE_COMPLETE    = "Done. Don’t waste it; you’ll need every shot.",
				TRADER_NO_BLACKLISTED    = "I’m no heretic’s quartermaster. Take that filth elsewhere.",
				TRADER_NO_GOODS          = "No goods, no trade. I don’t deal in charity.",
				TRADER_NOT_ENOUGH        = "That won’t cover the cost. Come back when you’re serious.",
				TRADER_HOW_MUCH          = "It’s going to cost you… VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "You’d do well to shut your mouth before I shut it for you.",
				TRADER_COMPLEMENT_SUCCESS   = "Heh, not bad. I’ve heard worse.",
				TRADER_INSULT_GOOD          = "I expected better. Clearly, I was wrong.",
				TRADER_INSULT_BAD           = "Say that again, and you’ll eat a charge pack."
				)


	possible_trading_items = list(
		/obj/item/ammo_magazine/autogun = TRADER_ALL,
		/obj/item/ammo_magazine/heavy = TRADER_ALL,
		/obj/item/ammo_magazine/autogunheavy = TRADER_ALL
	)

/datum/trader/ship/laspacks
	name = "Mordian Smuggler"
	name_language = TRADER_DEFAULT_NAME
	origin = "Mordian Smuggler"
	possible_origins = list("Mordian Smuggler", "Valhallan Supplies")
	speech = list(TRADER_HAIL_GENERIC    = "Looking for laspacks or just trouble?",
				TRADER_HAIL_DENY         = "You’re wasting my time. Move along before you regret it.",

				TRADER_TRADE_COMPLETE    = "Done. Don’t waste it; you’ll need every shot.",
				TRADER_NO_BLACKLISTED    = "I’m no heretic’s quartermaster. Take that filth elsewhere.",
				TRADER_NO_GOODS          = "No goods, no trade. I don’t deal in charity.",
				TRADER_NOT_ENOUGH        = "That won’t cover the cost. Come back when you’re serious.",
				TRADER_HOW_MUCH          = "It’s going to cost you… VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "You’d do well to shut your mouth before I shut it for you.",
				TRADER_COMPLEMENT_SUCCESS   = "Heh, not bad. I’ve heard worse.",
				TRADER_INSULT_GOOD          = "I expected better. Clearly, I was wrong.",
				TRADER_INSULT_BAD           = "Say that again, and you’ll eat a charge pack."
				)

	possible_trading_items = list(
		/obj/item/cell/device/high/laspack = TRADER_ALL,
		/obj/item/cell/device/high/mechanicus = TRADER_THIS_TYPE,
		/obj/item/cell/device/high/melta = TRADER_THIS_TYPE,
		/obj/item/cell/device/high/xenos = TRADER_THIS_TYPE
	)

/datum/trader/ship/egunshop
	name = "Lasman's Gantry"
	name_language = TRADER_DEFAULT_NAME
	origin = "Lasman's Gantry"
	possible_origins = list("Lasman's Gantry", "PDF Depot #517")
	speech = list(TRADER_HAIL_GENERIC    = "Welcome to the future of warfare! ORIGIN, your one-stop shop for energy weaponry!",
				TRADER_HAIL_DENY         = "I'm sorry, your communication channel has been blacklisted.",

				TRADER_TRADE_COMPLETE    = "Thank you, your purchase has been logged and you have automatically liked our Spacebook page.",
				TRADER_NO_BLACKLISTED   = "I'm sorry, is that a joke?",
				TRADER_NO_GOODS    = "We deal in cash.",
				TRADER_NOT_ENOUGH  = "State of the art weaponry costs more than that.",
				TRADER_HOW_MUCH          = "All our quality weapons are priceless, but I'd give that to you for VALUE.",

				TRADER_COMPLEMENT_FAILURE   = "If I was dumber I probably would have believed you.",
				TRADER_COMPLEMENT_SUCCESS = "Yes, I am very smart.",
				TRADER_INSULT_GOOD       = "Energy weapons are TWICE the gun kinetic guns are!",
				TRADER_INSULT_BAD        = "That's... very mean. I won't think twice about blacklisting your channel, so stop."
				)

	possible_trading_items = list(/obj/item/gun/energy/lasgun                     = TRADER_ALL)

/datum/trader/dogan
	name = "Dogan"
	origin = "Dogan's Gun Beacon"
	speech = list(TRADER_HAIL_GENERIC    = "Hello! This is an automatic recording of me, Mr. Dogan! I hope you like the... GUNS... I've got in store for you today.",
				TRADER_HAIL_DENY         = "I formally welcome you to... NOT... visit our store!",

				TRADER_TRADE_COMPLETE    = "Thank you for... PURCHASING... that quality... ITEM... from me!",
				TRADER_NO_BLACKLISTED   = "Thank you for... that quality... ILLEGAL OFFER THAT I WILL REFUSE... from me!",
				TRADER_NO_GOODS    = "Thank you for... that quality... OFFER THAT ISN'T MONEY THAT I WILL REFUSE... from me!",
				TRADER_NOT_ENOUGH  = "Thank you for... that quality... OFFER THAT IS NOT ENOUGH... from me!",
				TRADER_HOW_MUCH          = "Thank you for... ASKING ME ABOUT MY PRICES... that quality... ITEM is worth VALUE... from me!",

				TRADER_COMPLEMENT_FAILURE   = "Thank you for... that quality... COMPLIMENT... from me!",
				TRADER_COMPLEMENT_SUCCESS = "Thank you for... that quality... COMPLIMENT... from me!",
				TRADER_INSULT_GOOD       = "Thank you for... that quality... INSULT... from me!",
				TRADER_INSULT_BAD        = "Thank you for... that quality... INSULT... from me!"
				)
	compliment_increase = 0
	insult_drop = 0

	possible_trading_items = list(/obj/item/gun/energy/plasma                 = TRADER_ALL,
								/obj/item/gun/energy/meltagun                 = TRADER_ALL,
								/obj/item/gun/energy/tau/railgun                 = TRADER_THIS_TYPE,
								/obj/item/gun/energy/tau/pulserifle                         = TRADER_THIS_TYPE)
