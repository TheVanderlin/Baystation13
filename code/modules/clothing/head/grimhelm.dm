// ENFORCERS
/obj/item/clothing/head/helmet/enforcer
	name = "enforcer flak helmet"
	desc = "A heavy flak helmet, based on Arbites helmet designs, issued to deck enforcers aboard the dauntless. It is painted in a dark blue color to signify authority."
	icon_state = "PalaniteHelmet"
	item_state = "PalaniteHelmet"
	body_parts_covered = FACE|EYES|HEAD
	slowdown_general = 0.01
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	disorientation = 1
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+28,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+8
		)

/obj/item/clothing/head/helmet/enforcer/sergeant
	name = "enforcer carapace helmet"
	desc = "A heavy carapace helmet, inspired by Arbites designs, issued to deck enforcers aboard the dauntless. It is painted in a dark blue color to signify authority."
	icon_state = "MarshalHelm"
	item_state = "MarshalHelm"
	slowdown_general = 0.01
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	disorientation = 0.8
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY
		)

/obj/item/clothing/head/helmet/enforcer/arbitrator
	name = "arbites carapace helmet"
	desc = "The arbites carapace helmet, an upgraded version of the standard Patrol helmet, are issued to local planetary enforcer Arbitrator's both to show rank and for intimidation, It is painted in a dark blue colour."
	icon_state = "Jhelm2"
	item_state = "Jhelm2"
	slowdown_general = 0.01
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+1,
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+8,
		rad = ARMOR_RAD_THIRTY+35,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/head/helmet/enforcer/cap
	name = "enforcer patrol cap"
	desc = "A standard patrol cap worn by the deck enforcers of the Dauntless, designed for comfort and practicality while maintaining a level of authority."
	icon_state = "enforcerhat"
	item_state = "enforcerhat"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-200
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE+10
	body_parts_covered = HEAD
	max_pressure_protection = null
	slowdown_general = 0
	disorientation = 0 // Patrol caps are too shit to be considered helmets.
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-10,
		bio = ARMOR_BIO_THIRTY-20,
		rad = ARMOR_RAD_THIRTY-5,
		bomb = ARMOR_BOMB_TEN-8
	)
	valid_accessory_slots = null
	restricted_accessory_slots = null
	item_flags = ITEM_FLAG_THICKMATERIAL
	flags_inv = null
	w_class = ITEM_SIZE_SMALL

/obj/item/clothing/head/helmet/enforcer/cap/ordinate
	name = "ordinate hat"
	desc = "A humble hat worn by the Administratum ordinates, symbolizing their role in maintaining order and overseeing bureaucratic duties across the Imperium."
	icon_state = "ordinate"
	item_state = "ordinate"

// MILITARUM

/obj/item/clothing/head/helmet/flak
	name = "cadian flak helmet"
	desc = "The most common pattern within in the Atra Militarum, Found throughout Imperial Space, The Cadian Flak Helmet are cheap and easy to produce, at the cost of being nothing but a glorified bucket. This one has the Imperial Aquila engraved on it's forehead."
	icon_state = "newguard"
	item_state = "newguard"
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	slowdown_general = 0.008 // Try to set slowdowns to be 10-20 percent of the armours roughly.
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = BLOCKHEADHAIR
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/flak/carapace
	name = "cadian carapace helmet"
	desc = "A tough carapace helmet standard issue for Cadian troops, designed to provide reliable protection in combat while maintaining mobility."
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.01
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-2,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/medicae
	name = "cadian medicae flak helmet"
	desc = "The most common pattern within in the Atra Militarum, Found throughout Imperial Space, The Cadian Flak Helmet are cheap and easy to produce, at the cost of being nothing but a glorified bucket. This one has the red Cross Emblem engraved on it forehead."
	icon_state = "medicae"
	item_state = "medicae"

/obj/item/clothing/head/helmet/flak/conscript
	name = "cadian flak helmet"
	desc = "The most common pattern within in the Atra Militarum, Found throughout Imperial Space, The Cadian Flak Helmet are cheap and easy to produce, at the cost of being nothing but a glorified bucket. This one has the white stripe painted on it, marking it's owner as a Cadian Whiteshield."
	icon_state = "wshield"
	item_state = "wshield"
	slowdown_general = 0.006 // Try to set slowdowns to be 10-20 percent of the armours roughly.
	disorientation = 0.35
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN-3,
		bio = ARMOR_BIO_THIRTY-5,
		rad = ARMOR_RAD_THIRTY+20,
		bomb = ARMOR_BOMB_TEN
	)
/obj/item/clothing/head/helmet/flak/conscript/pdf
	name = "PDF flak helmet"
	desc = "The most common pattern within the Messian Planetary Defense Forces. It's polish and design is based on the genius of the Magos Explorator of this world -- it's practicality however against measured Cadian Patterns is something to be seen. This helmet is made from expensive and brittle ablative metals."
	icon_state = "PDF-H"
	item_state = "PDF-H"

/obj/item/clothing/head/helmet/flak/conscript/pdf/medic
	name = "PDF medicae flak helmet"
	icon_state = "PDF-MedicH"
	item_state = "PDF-MedicH"

/obj/item/clothing/head/helmet/flak/conscript/pdf/heavy
	name = "PDF heavy flak helmet"
	icon_state = "PDF-SpecialH"
	item_state = "PDF-SpecialH"
	slowdown_general = 0.009
	disorientation = 0.65
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/flak/conscript/pdf/capt
	name = "PDF captain's helmet"
	desc = "A glorious golden helmet worn by the Captain of the PDF."
	icon_state = "PDF-CaptainH"
	item_state = "PDF-CaptainH"
	slowdown_general = 0.009
	disorientation = 0.75
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/conscript/pdf/capt/beret
	name = "Messian Beret"
	desc = "A black painted mesh beret worn by the Messian Captain."
	icon_state = "royalgh"
	item_state = "royalgh"
	body_parts_covered = HEAD
	slowdown_general = 0
	disorientation = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-15,
		rad = ARMOR_RAD_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/flak/krieg
	name = "krieg IX flak helmet"
	desc = "Unlike the more common Cadian-pattern, the Mark IX is made out of durable plasteel, giving it higher defensive capabilities though at the cost of weight and production."
	icon_state = "krieghelm"
	item_state = "krieghelm"
	flags_inv = HIDEEARS|BLOCKHAIR
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	body_parts_covered = FACE|EYES|HEAD
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	slowdown_general = 0.012
	disorientation = 0.85
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		rad = ARMOR_RAD_THIRTY+40,
		bio = ARMOR_BIO_THIRTY+20,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/flak/krieg/medicae
	name = "Krieg Mark IX/M Helmet"
	desc = "Unlike the more common Cadian-pattern, the Mark IX is made out of durable plasteel, giving it higher defensive capabilities though at the cost of weight and production. This one has the red markings of a Combat Medicae."
	icon_state = "krieghelm"
	item_state = "krieghelm"

/obj/item/clothing/head/helmet/flak/krieg/officer
	name = "Krieg IX carapace helmet"
	desc = "Unlike the more common Cadian-pattern, the Mark IX is made out of durable plasteel, giving it higher defensive capabilities though at the cost of weight and production."
	icon_state = "WatchHelm"
	item_state = "WatchHelm"
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+5,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/flak/krieg/grenadier
	name = "Krieg IX/G carapace helmet"
	desc = "Unlike the more common Cadian-pattern, the Mark IX is made out of durable plasteel, giving it higher defensive capabilities though at the cost of weight and production. This one has a decorated ceramite plate layered on top."
	icon_state = "krieghelm"
	item_state = "krieghelm"
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	slowdown_general = 0.014
	disorientation = 1
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/maccabian
	name = "maccabian IX carapace helmet"
	desc = "Unlike the more common Cadian-pattern, the Mark IX is made out of durable plasteel, giving it higher defensive capabilities though at the cost of weight and production."
	icon_state = "M_Helmet-Icon"
	item_state = "M_Helmet-Icon"
	flags_inv = HIDEEARS|BLOCKHAIR
	body_parts_covered = FACE|EYES|HEAD
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	slowdown_general = 0.013
	disorientation = 1
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE-1,
		laser = ARMOR_LASER_CARAPACE-1,
		energy = ARMOR_ENERGY_TEN+5,
		rad = ARMOR_RAD_THIRTY+35,
		bio = ARMOR_BIO_THIRTY+15,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/head/helmet/flak/maccabian/sergeant
	name = "maccabian IX carapace helmet"
	desc = "Unlike the more common Cadian-pattern, the Mark IX is made out of durable plasteel, giving it higher defensive capabilities though at the cost of weight and production."
	icon_state = "M_SHelmet-Icon"
	item_state = "M_SHelmet-Icon"
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	slowdown_general = 0.013
	disorientation = 1
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+10,
		rad = ARMOR_RAD_THIRTY+45,
		bio = ARMOR_BIO_THIRTY+25,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/flak/tempestus
	name = "tempestus carapace helemt"
	desc = "A reinforced helmet and faceplate system designed for the elite Tempestus Scions. Comprised of multiple layers of ceramite, comprising a solid carapace armour system."
	icon_state = "ScionHelmet"
	item_state = "ScionHelmet"
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHAIR
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+450
	slowdown_general = 0.012
	disorientation = 0.5 // Advanced targeting systems negate helmet penalties somewhat.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_THIRTY+65, // Tempestus helmets are more well rounded, protecting against all threats equally compared to Kasrkin.
		bio = ARMOR_BIO_THIRTY+45,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/head/helmet/flak/kasrkin
	name = "kasrkin carapace helmet"
	desc = "A carapace helmet belonging to the elite stormtroopers of the Kasrkin. Cadia may not be intact, but your brain will when in combat with this on."
	icon_state = "kasrkinhelmet"
	flags_inv = HIDEEARS|BLOCKHAIR
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+550
	slowdown_general = 0.012
	disorientation = 0.25
	armor = list(
		melee = ARMOR_MELEE_CARAPACE-1,
		bullet = ARMOR_BALLISTIC_CARAPACE+1, // Kasrkin helmets aren't designed to stop melee.
		laser = ARMOR_LASER_CARAPACE+1,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+15
	)

// Servitor Stuff

/obj/item/clothing/head/helmet/flak/maccabian/servitorhead
	name = "a servitor skull"
	desc = "A bone white skull littered with wiring and augments."
	icon_state = "servitor_helmet"
	item_state = "servitor_helmet"
	canremove = 0

/obj/item/clothing/head/helmet/flak/maccabian/servitorhead/janitor
	icon_state = "servitor_helmet2"
	item_state = "servitor_helmet2"


/// PATROL CAPS

/obj/item/clothing/head/helmet/guardcap
	name = "cadian patrol cap"
	desc = "An enlisted Cadian service cap"
	icon_state = "guard_cap"
	item_state = "guard_cap"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-200
	min_cold_protection_temperature = HELMET_MIN_COLD_PROTECTION_TEMPERATURE+10
	max_pressure_protection = null
	slowdown_general = 0
	disorientation = 0 // Patrol caps are too shit to be considered helmets.
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN-10,
		bio = ARMOR_BIO_THIRTY-20,
		rad = ARMOR_RAD_THIRTY-5,
		bomb = ARMOR_BOMB_TEN-8
	)
	valid_accessory_slots = null
	restricted_accessory_slots = null
	item_flags = ITEM_FLAG_WASHER_ALLOWED
	flags_inv = null
	w_class = ITEM_SIZE_SMALL

/obj/item/clothing/head/helmet/guardcap/sergeant
	name = "cadian patrol cap"
	desc = "Often mistaken for a soft cap, this variation features armor that comes down to protect the face, as well as a vox piece to slide over your ear. Perfect for Senior Enlisted."
	icon_state = "sarge_cap"
	item_state = "sarge_cap"

/obj/item/clothing/head/helmet/guardcap/sergeant/alt
 	name = "Cadian Sergeant's Service Cap"
 	desc = "A Cadian issue sergeant's service cap."
 	icon_state = "sgt_cap"
 	item_state = "sgt_cap"

/obj/item/clothing/head/helmet/enforcer/cap/mordian
	name = "mordian patrol cap"
	desc = "A patrol cap worn by Mordian Iron Guardsmen, reflecting their disciplined nature and commitment to the Emperor's service, designed for practicality in the harshest of conditions."
	icon_state = "enforcerhat"
	item_state = "enforcerhat"

/obj/item/clothing/head/helmet/guardcap/valushanka
	name = "valhallan ushanka"
	desc = "The ushanka worn by Valhallan Combat Medicae, bearing the red markings of their order. It carries the distinctive smell of amasec and sweat, a testament to their dedication in the field."
	icon_state = "valshanka2"
	var/icon_state_up = "valshanka"
	flags_inv = HIDEEARS|BLOCKHEADHAIR

/obj/item/clothing/head/helmet/guardcap/valushanka/attack_self(mob/user)
	if(icon_state == initial(icon_state))
		icon_state = icon_state_up
		to_chat(user, "You raise the ear flaps on the ushanka.")
	else
		icon_state = initial(icon_state)
		to_chat(user, "You lower the ear flaps on the ushanka.")

/obj/item/clothing/head/helmet/guardcap/valushanka/medicae
	desc = "The ushanka worn by the Valhallan Regiment, known for its distinctive smell of amasec and sweat. This hat is a badge of honor for Valhallans, and you shouldn't touch it if you're not one of them."
	icon_state = "mvalshanka2"
	icon_state_up = "mvalshanka"

/obj/item/clothing/head/helmet/guardcap/valushanka/medicae/attack_self(mob/user)
	if(icon_state == initial(icon_state))
		icon_state = icon_state_up
		to_chat(user, "You raise the ear flaps on the ushanka.")
	else
		icon_state = initial(icon_state)
		to_chat(user, "You lower the ear flaps on the ushanka.")

/obj/item/clothing/head/helmet/guardcap/catachan
	name = "catachan headband"
	desc = "Catachan Regiment refuses to acknowledge any sort of protection in favour of their mentality and physical capabilties, Thus. The iconic red headband go with them anywhere they go.. But does it protects them from Bolters or lasguns? No."
	icon_state = "Catachan_Headband"
	item_state = "headband"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE-250
	disorientation = -0.5 // orientates your MINDDD
	armor = list(
		melee = 0,
		bullet = 0,
		laser = 0,
		energy = 0,
		bio = ARMOR_BIO_THIRTY-20,
		rad = ARMOR_RAD_THIRTY-10,
		bomb = 0
	)

/obj/item/clothing/head/helmet/guardcap/catachan/medicae
	name = "catachan medicae headband"
	desc = "Catachan Regiment refuses to acknowledge any sort of protection in favour of their mentality and physical capabilties, Thus. The iconic red headband go with them anywhere they go.. But does it protects them from Bolters or lasguns? No. This headband is worn by a Catachan Medicae."
	icon_state = "mCatachan_Headband"

/obj/item/clothing/head/helmet/guardcap/commissar
	name = "commissar's peaked cap"
	desc = "The fearsome and charismatic peaked cap of a Imperial Guard Commissar, Striking dreads to the lowly Guardsmen and the ever-watching heretics."
	icon_state = "Commissar4Hat"
	item_state = "Commissar4Hat"

/obj/item/clothing/head/helmet/guardcap/commissar/krieg
	name = "commissar's peaked cap"
	desc = "The fearsome and charismatic peaked cap of a Imperial Guard Commissar, Striking dreads to the lowly Guardsmen and the ever-watching heretics."
	icon_state = "KriegissarHat"
	item_state = "KriegissarHat"

/obj/item/clothing/head/helmet/guardcap/mordian
	name = "commissar's peaked cap"
	desc = "The fearsome and charismatic peaked cap of a Imperial Guard Commissar, Striking dreads to the lowly Guardsmen and the ever-watching heretics."
	icon_state = "MordianHat"
	item_state = "MordianHat"

/obj/item/clothing/head/helmet/guardcap/catachan/commi
	name = "commissar's peaked cap"
	desc = "The fearsome and charismatic peaked cap of a Imperial Guard Commissar, Striking dreads to the lowly Guardsmen and the ever-watching heretics."
	icon_state = "CataCommissarHat"
	item_state = "CataCommissarHat"

// TAU


/obj/item/clothing/head/helmet/tau
	name = "fire warrior Helmet"
	desc = "A advanced helmet produced for Tau Fire Caste Warriors, made out of...acceptable quality ceramite."
	icon_state = "fwhelm"
	item_state = "fwhelm"
	flags_inv = HIDEMASK|HIDEEARS|BLOCKHAIR
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	slowdown_general = 0.010
	disorientation = 1 // Tau no melee.
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-3,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-3,
		laser = ARMOR_LASER_POWER_ARMOUR-3,
		energy = ARMOR_ENERGY_TEN+16,
		rad = ARMOR_RAD_THIRTY+55,
		bio = ARMOR_BIO_THIRTY+35,
		bomb = ARMOR_BOMB_THIRTY-5
		)


/obj/item/clothing/head/helmet/tau/breacher
	name = "fire warrior Helmet"
	desc = "The white and bright helmet of a Tau Breacher."
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+800
	icon_state = "tbrea"
	item_state = "tbrea"
	slowdown_general = 0.012
	disorientation = 1.25
	armor = list(
		melee = ARMOR_MELEE_POWER_ARM-2,
		bullet = ARMOR_BALLISTIC_POWER_ARMOUR-2,
		laser = ARMOR_LASER_POWER_ARMOUR-2,
		energy = ARMOR_ENERGY_TEN+20,
		rad = ARMOR_RAD_THIRTY+65,
		bio = ARMOR_BIO_THIRTY+45,
		bomb = ARMOR_BOMB_THIRTY+5
		)

/obj/item/clothing/head/helmet/tau/scout
	name = "fire warrior scout helmet"
	desc = "A advanced helmet produced for Tau Fire Caste Sharpshooters, its made out of some pretty lightweight ceramite and some bits of steel, its probably able to take a few shots before becoming useless."
	icon_state = "scout"
	item_state = "scout"
	disorientation = 0.5

// Ork

/obj/item/clothing/head/helmet/orkhelmet
	name = "metal ork helm"
	desc = "A genioos mekboy 'ad da bright idea of gluin' spikey bits on sum scrap and 'ammering it a tad. Now ya can 'ear it as a helm! Lookz gud against em boolets."
	icon_state = "ork_helm"
	item_state = "ork_helm"
	body_parts_covered = FACE|EYES|HEAD
	slowdown_general = 0.04
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	species_restricted = list(SPECIES_ORK, SPECIES_ORK_NOB, SPECIES_ORK_BOSS, SPECIES_ORK_MEK)
	disorientation = 1
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/head/helmet/orkhelmet/captain
	name = "kaptin's hat"
	desc = "A genioos mekboy 'ad da bright idea of gluin' spikey bits on sum scrap and 'ammering it a tad. Now ya can 'ear it as a helm! Lookz gud against em boolets."
	icon_state = "freeboota"
	item_state = "freeboota"
	disorientation = 0.5
	armor = list(
		melee = ARMOR_MELEE_FLAK+2,
		bullet = ARMOR_BALLISTIC_FLAK+3,
		laser = ARMOR_LASER_FLAK+3,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+30,
		rad = ARMOR_RAD_THIRTY+50,
		bomb = ARMOR_BOMB_TEN+45 // Gestalt so strong they can only be killed in a fair duel.
	)

/obj/item/clothing/head/helmet/orkhelmet/leather
	name = "leatha' helm"
	desc = "Da most cam-. Comma-. Cahm-. A LOT OF BOYS HAVE DIS HERE LEATHA 'ELMET IN DA WAAAAGH!"
	icon_state = "orkhelmet"
	item_state = "orkhelmet"
	disorientation = 0.5
	slowdown_general = 0
	cold_protection = HEAD
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/head/helmet/orkhelmet/leather/knot
	name = "orky knot-top"
	desc = "ZOGGING GORK AND MORK. 'ET SOMETIN BETTA ON YA 'EAD, YA CHEAPSKATE!"
	icon_state = "orkknot"
	item_state = "orkknot"

/obj/item/clothing/head/helmet/orkhelmet/leather/freebota
	name = "piratin' hat"
	desc = "OI MATES GET ON DA WATA' LETS KRUMP SOME UMIES"
	icon_state = "freeboota"
	item_state = "freeboota"

/obj/item/clothing/head/helmet/orkhelmet/leatherheavy
	name = "heavy leatha' helm"
	desc = "Da normal leather 'elmet, but a git's gon' and glue'd some spikey horns on it! What a mad lad innit? More melee protektion, it just makez sense!"
	icon_state = "orkhelmethorns"
	item_state = "orkhelmethorns"

/obj/item/clothing/head/helmet/orkhelmet/las
	name = "shiny metul' helm"
	desc = "Da sights of a Flashgitz, or even a Loota. Ya reckon dat bit of glass will deflect dem lasers, givin' added protektion."
	icon_state = "orkhelmetsight"
	item_state = "orkhelmetsight"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/head/helmet/orkhelmet/grenadier
	name = "boomin' fur hat"
	desc = "Keeps da bombas away from ya noggin. 'Elps against bombs en boohlies, mate."
	icon_state = "orkhelmetfur"
	item_state = "orkhelmetfur"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+40,
		bomb = ARMOR_BOMB_TEN+25
	)



/*


/obj/item/clothing/head/helmet/genestealer
	name = "tyranid scale hide"
	desc = "The hide of a Tyranid Genestealer"
	armor = list(melee = 7, bullet = 34, laser = 34, energy = 15, bomb = 30, bio = 100, rad = 100)
	icon_state = "gsfeet"
	item_state = "gsfeet"
	canremove = 0
	unacidable = 1
	species_restricted = list(SPECIES_TYRANID)

/obj/item/clothing/head/helmet/genestealer/tough
	name = "tyranid chitin"
	desc = "The hide of a Tyranid..."
	armor = list(melee = 5, bullet = 45, laser = 45, energy = 20, bomb = 40, bio = 100, rad = 100)

/obj/item/clothing/head/helmet/genestealer/epic
	name = "tyranid chitin"
	desc = "The hide of a Tyranid..."
	armor = list(melee = 8, bullet = 50, laser = 50, energy = 20, bomb = 50, bio = 100, rad = 100)

/obj/item/clothing/head/helmet/sentryhelm
	name = "Sentry Helmet"
	desc = "Used for taking blows to the noggin without getting hurt."
	armor = list(melee = 2, bullet = 38, laser = 38, energy = 30, bomb = 50, bio = 5, rad = 5)//proteck ya neck
	str_requirement = 18


// Eldar

/obj/item/clothing/head/helmet/eldar
  name = "Guardian Mesh Helmet"
  desc = "A ancient helmet. It looks like it's made from Thermoplas in a scale like pattern."
  icon_state = "eldhelmet"
  item_state = "eldhelmet"
  body_parts_covered = FACE|EYES|HEAD
  armor = list(melee = 25, bullet = 40, laser = 43, bomb = 15, bio = 50, rad = 0) //thermoplas and etc
  body_parts_covered = HEAD
  cold_protection = HEAD
  min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/head/helmet/corsair
  name = "Eldar Corsair Helmet"
  desc = "The dark and shadowy helmet of a voidscarred Corsair."
  icon_state = "aeldar_mask"
  item_state = "aeldar_mask"
  armor = list(melee = 25, bullet = 40, laser = 40, energy = 35, bomb = 15, bio = 50, rad = 0) //thermoplas and etc
  body_parts_covered = HEAD
  cold_protection = HEAD
  min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

/obj/item/clothing/head/helmet/eldar/ranger
  name = "Ranger's Helmet"
  desc = "An Eldar Ranger's Helmet, comprised of layers of cameoline treated material with an underlying thermoplas layer.."
  icon_state = "reconhood"
  item_state = "reconhood"
  armor = list(melee = 25, bullet = 40, laser = 40, energy = 35, bomb = 15, bio = 50, rad = 0) //thermoplas and etc
  body_parts_covered = HEAD
  cold_protection = HEAD
  min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE

 // Dark Eldar

/obj/item/clothing/head/helmet/darkeldar
  name = "Ghostplate Helmet"
  desc = "A ancient helmet. It looks like it's made from hardened resin in a thin-scale like pattern."
  icon_state = "deldhelmet"
  item_state = "deldhelmet"
  body_parts_covered = FACE|EYES|HEAD
  min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE


/obj/item/clothing/head/helmet/vindicare
	name = "Vindicare helmet"
	desc = "The menacing helm of a Vindicare."
	icon_state = "s-ninja"
	armor = list(melee = 5, bullet = 40, laser = 40, energy = 44, bomb = 30, bio = 100, rad = 10)//Bulletproof, because, well, sniper.
	siemens_coefficient = 0
	canremove = 0
	flags_inv = HIDEEARS|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/helmet/thallax
	name = "Vindicare helmet"
	desc = "The armoured helmet of a Thallax Warrior."
	icon_state = "vox-stealth"
	armor = list(melee = 8, bullet = 40, laser = 40, energy = 35, bomb = 70, bio = 100, rad = 100)
	siemens_coefficient = 0
	canremove = 0
	flags_inv = HIDEEARS|BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/head/helmet/colonel
	name = "Colonel's Cap"
	desc = "A protective cap worn by an Imperial Guard Colonel."
	icon_state = "hoscap"
	armor = list(melee = 10, bullet = 30, laser = 30, energy = 30, bomb = 40, bio = 100, rad = 100) //Event only.
	siemens_coefficient = 0
	flags_inv = BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES //For reasons.


/obj/item/clothing/head/helmet/grot
	name = "Tiny hat"
	desc = "A comically small leather hat."
	icon_state = "Grotcap"
	item_state = "Grotcap"
	armor = list(melee = 5, bullet = 8, laser = 5, energy = 35, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/grot/grccap
	name = "Tiny Commissar's hat"
	desc = "A comically small hat with the GRCs symbol."
	icon_state = "GRCcap"
	item_state = "GRCcap"
	armor = list(melee = 6, bullet = 31, laser = 30, energy = 35, bomb = 50, bio = 70, rad = 50)

/obj/item/clothing/head/helmet/grot/helmet
	name = "Tiny metal helm"
	desc = "A repurposed cooking pot"
	icon_state = "Grothelm"
	item_state = "Grothelm"
	armor = list(melee = 6, bullet = 31, laser = 30, energy = 35, bomb = 50, bio = 70, rad = 50)

/obj/item/clothing/head/helmet/grot/beret
	name = "GRC beret"
	desc = "A beret of a GRC operative."
	icon_state = "Grotcap"
	item_state = "Grotcap"
	armor = list(melee = 5, bullet = 8, laser = 5, energy = 35, bomb = 0, bio = 0, rad = 0)

/obj/item/clothing/head/helmet/necron
	name = "Necron Head"
	desc = "The eerie necrodermis skull of a Necron Warrior."
	icon_state = null
	armor = list(melee = 12, bullet = 40, laser = 40, energy = 44, bomb = 30, bio = 100, rad = 10)
	siemens_coefficient = 0
	canremove = 0
	siemens_coefficient = 0
	unacidable = 1
	canremove = 0
	body_parts_covered = HEAD|FACE|EYES
	species_restricted = list(SPECIES_NECRON)



/obj/item/clothing/head/helmet/deathmark
	name = "Deathmark Head"
	desc = "The eerie necrodermis skull of a Deathmark Assasain."
	icon_state = null
	item_state = "Deathmark"
	armor = list(melee = 12, bullet = 40, laser = 40, energy = 44, bomb = 30, bio = 100, rad = 10)
	siemens_coefficient = 0
	canremove = 0
	siemens_coefficient = 0
	unacidable = 1
	canremove = 0
	body_parts_covered = HEAD|FACE|EYES
	species_restricted = list(SPECIES_NECRON)


/obj/item/clothing/head/helmet/astartes
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen"
	icon = 'icons/mob/32x40/hats.dmi'
	item_icons = list(slot_head_str = 'icons/mob/32x40/hats.dmi')
	icon_state = "ultrahelm"
	item_state = "ultrahelm"
	armor = list(melee = 9, bullet = 44, laser = 44, energy = 44, bomb = 60, bio = 100, rad = 100)
	str_requirement = 25
	unacidable = 1
	body_parts_covered = HEAD|FACE|EYES
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = SPACE_SUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	species_restricted = list(SPECIES_ASTARTES)
	sales_price = 50

/obj/item/clothing/head/helmet/astartes/bloodangel
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the IXth Chapter, Blood Angels."
	icon_state = "banghelm"
	item_state = "banghelm"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/bloodangel/lamenter
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the IXth Chapter, Blood Angels."
	icon_state = "lamenterh"
	item_state = "lamenterh"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/ravenguard
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's black birds, This one bears the symbol of the XIXth Chapter, Raven Guards."
	icon_state = "ravhelm"
	item_state = "ravhelm"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/salamander
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's dragon warriors, This one bears the symbol of the XVIIIth Chapter, Salamanders."
	icon_state = "salhelm"
	item_state = "salhelm"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/ultramarine
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the XIIIth Chapter, Ultramarines."
	icon_state = "ultrahelm"
	item_state = "ultrahelm"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/ultramarinenew
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the XIIIth Chapter, Ultramarines."
	icon_state = "ultrah"
	item_state = "ultrah"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/nightlord
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the IIIth Legion, Night Lords."
	icon_state = "nightlordh"
	item_state = "nightlordh"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/alphalegion
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the XXth Legion, Alpha Legion."
	icon_state = "alphalegh"
	item_state = "alphalegh"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/worldbearer
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the XXth Legion, World Bearers."
	icon_state = "worldbh"
	item_state = "worldbh"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/plaguemarine
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the XXth Legion, Plague Marines."
	icon_state = "plaguemh"
	item_state = "plaguemh"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/sergeant
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one is worn by a sergeant."

/obj/item/clothing/head/helmet/astartes/sergeant/ravenguard
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's black birds, This one bears the symbol of the XIXth Chapter, Raven Guards. It's decorated with an Iron Halo, Representing his seniority in the art of deepstrike."
	icon_state = "ravcap"
	item_state = "ravcap"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/sergeant/salamander
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's dragon warriors, This one bears the symbol of the XVIIIth Chapter, Salamanders. It's decorated with an Iron Halo, Representing his seniority in the art of flame."
	icon_state = "salcap"
	item_state = "salcap"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/sergeant/ultramarine
	name = "Astartes Mark VII Helmet"
	desc = "The daunting helmet of the Emperor's chosen, This one bears the symbol of the XIIIth Chapter, Ultramarines. It's decorated with an Iron Halo, Representing his seniority in the art of administration."
	icon_state = "ultracap"
	item_state = "ultracap"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/apothecary
	name = "Astartes Mark VII Helmet"
	desc = "The vigilant helmet of the Astartes Apothecary, Painted in white and upgraded with genescanner and intergrated scanner."
	icon_state = "apohelm"
	item_state = "apohelm"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/apothecary/ravenguard
	name = "Astartes Mark VII Helmet"
	desc = "The vigilant helmet of the Astartes Apothecary, Painted in white and upgraded with genescanner and integrated scanner, This one bears the symbol of the XIXth Chapter, Raven Guards."
	icon_state = "ravapo"
	item_state = "ravapo"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

/obj/item/clothing/head/helmet/astartes/techmarine
	name = "Astartes Mark VII Helmet"
	desc = "The advanced helmet of the Astartes Techmarine, Comes with the distinct red colour and advanced scanning system to detect, locate and repair inconsistency in machinery and Astartes holy armour."
	icon_state = "techhelm"
	item_state = "techhelm"
	flags_inv = HIDEMASK|HIDEEYES|HIDEFACE|HIDEEARS

*/
