/obj/item/clothing/shoes/syndigaloshes
	desc = "A pair of brown shoes. They seem to have extra grip."
	name = "brown shoes"
	icon_state = "brown"
	item_state = "brown"
	permeability_coefficient = 0.05
	item_flags = ITEM_FLAG_NOSLIP | ITEM_FLAG_THICKMATERIAL
	origin_tech = list(TECH_ESOTERIC = 3)
	var/list/clothing_choices = list()
	siemens_coefficient = 0.8
	species_restricted = null

/obj/item/clothing/shoes/mime
	name = "mime shoes"
	icon_state = "mime"
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/swat
	name = "\improper SWAT boots"
	desc = "When you want to turn up the heat."
	icon_state = "swat"
	force = 3
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_THIRTY
		)
	item_flags = ITEM_FLAG_NOSLIP | ITEM_FLAG_WASHER_ALLOWED
	siemens_coefficient = 0.6

/obj/item/clothing/shoes/combat
	name = "combat boots"
	desc = "When you REALLY want to turn up the heat."
	icon_state = "swat"
	force = 5
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_THIRTY
		)
	item_flags = ITEM_FLAG_NOSLIP | ITEM_FLAG_WASHER_ALLOWED | ITEM_FLAG_THICKMATERIAL
	siemens_coefficient = 0.6

	cold_protection = FEET
	heat_protection = FEET
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+700


/obj/item/clothing/shoes/dutyboots
	name = "duty boots"
	desc = "A pair of steel-toed synthleather boots with a mirror shine."
	icon_state = "duty"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		rad = ARMOR_RAD_THIRTY
		)
	siemens_coefficient = 0.7
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	body_parts_covered = FEET
	heat_protection = FEET
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE

/obj/item/clothing/shoes/tactical
	name = "tactical boots"
	desc = "Tan boots with extra padding and armor."
	icon_state = "desert"
	force = 3
	siemens_coefficient = 0.7

/obj/item/clothing/shoes/dress
	name = "dress shoes"
	desc = "The height of fashion, and they're pre-polished!"
	icon_state = "laceups"
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/dress/white
	name = "white dress shoes"
	desc = "Brilliantly white shoes, not a spot on them."
	icon_state = "whitedress"

/obj/item/clothing/shoes/sandal
	desc = "A pair of rather plain, wooden sandals."
	name = "sandals"
	icon_state = "wizard"
	species_restricted = null
	body_parts_covered = 0
	wizard_garb = TRUE
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/sandal/marisa
	desc = "A pair of magic, black shoes."
	name = "magic shoes"
	icon_state = "black"
	body_parts_covered = FEET

/obj/item/clothing/shoes/clown_shoes
	desc = "The prankster's standard-issue clowning shoes. Damn they're huge!"
	name = "clown shoes"
	icon_state = "clown"
	item_state = "clown"
	force = 0
	var/footstep = 1	//used for squeeks whilst walking
	species_restricted = null
	can_add_hidden_item = FALSE

/obj/item/clothing/shoes/clown_shoes/Initialize()
	. = ..()
	slowdown_per_slot[slot_shoes]  = 1

/obj/item/clothing/shoes/clown_shoes/handle_movement(turf/walking, running)
	if(running)
		if(footstep >= 2)
			footstep = 0
			playsound(src, "clownstep", 50, 1) // this will get annoying very fast.
		else
			footstep++
	else
		playsound(src, "clownstep", 20, 1)

/obj/item/clothing/shoes/cult
	name = "boots"
	desc = "A pair of boots worn by the followers of the Sovereign."
	icon_state = "cult"
	item_state = "cult"
	force = 2
	siemens_coefficient = 0.7
	species_restricted = null

/obj/item/clothing/shoes/cyborg
	name = "cyborg boots"
	desc = "Shoes for a cyborg costume."
	icon_state = "boots"
	item_flags = null

/obj/item/clothing/shoes/slippers
	name = "bunny slippers"
	desc = "Fluffy!"
	icon_state = "slippers"
	item_state = "slippers"
	force = 0
	species_restricted = null
	w_class = ITEM_SIZE_SMALL
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/slippers/worn
	name = "worn bunny slippers"
	desc = "Fluffy..."
	icon_state = "slippers_worn"
	item_state = "slippers_worn"

/obj/item/clothing/shoes/laceup
	name = "laceup shoes"
	desc = "The height of fashion, and they're pre-polished!"
	icon_state = "laceups"
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/swimmingfins
	desc = "Help you swim good."
	name = "swimming fins"
	icon_state = "flippers"
	item_flags = ITEM_FLAG_NOSLIP
	species_restricted = null
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/swimmingfins/Initialize()
	. = ..()
	slowdown_per_slot[slot_shoes] = 1

/obj/item/clothing/shoes/athletic
	name = "athletic shoes"
	desc = "A pair of sleek atheletic shoes. Made by and for the sporty types."
	icon_state = "sportshoe"

/obj/item/clothing/shoes/laceup/sneakies
	desc = "The height of fashion, and they're pre-polished. Upon further inspection, the soles appear to be on backwards. They look uncomfortable."
	species_restricted = list(SPECIES_HUMAN, SPECIES_IPC)
	move_trail = /obj/decal/cleanable/blood/tracks/footprints/reversed
	item_flags = ITEM_FLAG_SILENT

/obj/item/clothing/shoes/heels
	name = "high heels"
	icon_state = "heels"
	desc = "A pair of colourable high heels."
	can_add_cuffs = FALSE

/obj/item/clothing/shoes/heels/black
	name = "black high heels"
	desc = "A pair of black high heels."
	color = COLOR_GRAY15

/obj/item/clothing/shoes/heels/red
	name = "red high heels"
	desc = "A pair of red high heels."
	color = COLOR_RED

/obj/item/clothing/shoes/foamclog
	name = "foam clogs"
	desc = "Made from durable foam resin that retains its spongy feel."
	icon_state = "foamclog"
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE
	var/clipped = FALSE
	var/icon_state_modified = "foamclog-toeless"

/obj/item/clothing/shoes/foamclog/use_tool(obj/item/W, mob/user)
	if (!is_sharp(W))
		return ..()

	if (clipped)
		to_chat(user, SPAN_NOTICE("\The [src] have already been modified!"))
		update_icon()
		return TRUE

	playsound(src.loc, 'sound/items/Wirecutter.ogg', 100, 1)
	user.visible_message(SPAN_WARNING("\The [user] modifies \the [src] with \the [W]."),SPAN_WARNING("You modify \the [src] with \the [W]."))
	cut_clogs()
	return TRUE

/obj/item/clothing/shoes/foamclog/proc/cut_clogs()
	clipped = TRUE
	name = "toe-less [name]"
	desc = "[desc]<br>They have been modified to accommodate a different shape."
	icon_state = icon_state_modified
	if("exclude" in species_restricted)
		species_restricted -= SPECIES_KROOT
	update_icon()
	return

/obj/item/clothing/shoes/foamclog/toeless/Initialize()
	. = ..()
	cut_clogs()

/obj/item/clothing/shoes/foamclog/random/New()
	..()
	color = get_random_colour()

/obj/item/clothing/shoes/foamclog/flipflobster
	name = "flip flobsters"
	desc = "Made from durable foam resin that retains its spongy feel. These are shaped as lobsters."
	icon_state = "flipflobster"
	can_add_hidden_item = FALSE
	can_add_cuffs = FALSE
	icon_state_modified = "flipflobster-toeless"

/obj/item/clothing/shoes/foamclog/flipflobster/toeless/Initialize()
	. = ..()
	cut_clogs()


//ADEPTUS MECHANICUS
/obj/item/clothing/shoes/jackboots/skitshoes //walking sounds only play with shoes and I was losing my mind
	name = "skitarii feet"
	desc = "Augmented for speed and power."
	icon_state = "skitshoes"
	item_state = "skitshoes"
	siemens_coefficient = 1
	unacidable = 1
	canremove = 0
	item_flags = ITEM_FLAG_NOSLIP
	canremove = FALSE
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1000
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/shoes/jackboots/skitshoes/ruststalker //walking sounds only play with shoes and I was losing my mind not having them
	name = "ruststalker feet"
	desc = "Augmented for speed and power"
	icon_state = "skitshoes"
	item_state = "skitshoes"
	siemens_coefficient = 1
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP
	canremove = FALSE

/obj/item/clothing/shoes/jackboots/skitshoes/vanguard //walking sounds only play with shoes and I was losing my mind not having them
	name = "vanguard feet"
	desc = "Augmented for speed and power"
	icon_state = "skitshoes"
	item_state = "skitshoes"
	siemens_coefficient = 1
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP
	canremove = FALSE

/obj/item/clothing/shoes/jackboots/skitshoes/techpriest
	name = "techno-boots"
	desc = "Cybernetic legs scurry the Tech-priest where he is needed."
	icon_state = "merc_rig"
	item_state = "admech_boots"
	siemens_coefficient = 0.7
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP
	canremove = FALSE


//GUARDSMAN SHIT

/obj/item/clothing/shoes/jackboots/cadian
	name = "combat boots"
	desc = "Astra Militarum's common combat boots, found worn by most Imperial Agencies and Astra Militarum."
	icon_state = "jackboots"
	item_state = "jackboots"

/obj/item/clothing/shoes/jackboots/bloodpact
	name = "combat boots"
	desc = "Bloodpact metal combat boots."
	icon_state = "jackboots"
	item_state = "BP_Boots"

/obj/item/clothing/shoes/jackboots/krieg
	name = "combat boots"
	desc = "The Krieg Regiment, unlike most of the Astra Militarum, prefer their less protective but more mobile boots over the standard Mars Pattern used by the Munitorium."
	icon_state = "kriegboots"
	item_state = "kriegboots"

/obj/item/clothing/shoes/jackboots/krieg/grenadier
	name = "combat boots"
	desc = "The Krieg Regiment, unlike most of the Astra Militarum, prefer their less protective but more mobile boots over the standard Mars Pattern used by the Munitorium. Though, in this particular case they have lamented to armoring their own."
	icon_state = "grenboots"
	item_state = "grenboots"
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/shoes/jackboots/maccabian
	name = "combat boots"
	desc = "The Krieg Regiment, unlike most of the Astra Militarum, prefer their less protective but more mobile boots over the standard Mars Pattern used by the Munitorium."
	icon_state = "M_Boots-Icon"
	item_state = "M_Boots-Icon"

//Commissar shoes, not being currently used.
/obj/item/clothing/shoes/jackboots/commissar
	name = "commissar boots"
	desc = "Knee-high riding boots of an officer of the Officio Prefectus."
	icon_state = "comm_boots"
	item_state = "comm_boots"

// Astartes Stuff

/obj/item/clothing/shoes/jackboots/astartes
	name = "astartes mark vii combat boots"
	desc = "Boots of the Emperor's Space Marine."
	icon_state = "rg_lib"
	item_state = "rg_lib"
	canremove = 1
	unacidable = 1
	str_requirement = 1
	item_flags = ITEM_FLAG_NOSLIP
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1000
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+3,
		laser = ARMOR_LASER_FLAK+3,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+35,
		rad = ARMOR_RAD_THIRTY+65,
		bomb = ARMOR_BOMB_TEN+30
	)

/obj/item/clothing/shoes/jackboots/astartes/smurfs
	name = "astartes mark vii combat boots"
	desc = "Boots of the Emperor's Space Marine, This one is painted in the colour scheme of the 12th chapter, the Ultramarines."
	icon_state = "umboots"
	item_state = "umboots"

/obj/item/clothing/shoes/jackboots/astartes/bloodangel
	name = "astartes mark vii combat boots"
	desc = "Boots of the Emperor's Space Marine, This one is painted in the colour scheme of the 9th chapter, the Blood Angels."
	icon_state = "ba_boots"
	item_state = "ba_boots"

/obj/item/clothing/shoes/jackboots/astartes/sallys
	name = "astartes mark vii combat boots"
	desc = "Boots of the Emperor's Space Marine, This one is painted in the colour scheme of the 18th chapter, the Salamanders."
	icon_state = "sl_boots"
	item_state = "sl_boots"

/obj/item/clothing/shoes/jackboots/astartes/raven
	name = "astartes mark vii combat boots"
	desc = "Boots of the Emperor's Space Marine, This one is painted in the colour scheme of the 19th chapter, the Raven Guard."
	icon_state = "rg_lib"
	item_state = "rg_lib"

// Sororitas
/obj/item/clothing/shoes/jackboots/sisterofbattle
	name = "sacred rose power boots"
	desc = "A pair of Power Boots issued to the Sororitas-Militant of the Order Of The Sacred Rose of the Adepta Sororitas."
	icon_state = "sister"
	item_state = "sister"
	canremove = 1
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+1000
	armor = list(
		melee = ARMOR_MELEE_FLAK+1,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_FLAK+2,
		energy = ARMOR_ENERGY_TEN+5,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/shoes/jackboots/sisterofbattle/repentia
	name = "repentia sandals"
	desc = "Worn sandals given Sisters Repentia</i>"
	icon_state = "roman"
	item_state = "roman"
	canremove = 1
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+100
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/shoes/jackboots/sisterofbattle/mlsister
	name = "martyred lady power boots"
	desc = "A pair of Power Boots issued to the sisters of the Order Of Our Martyred Lady of the Adepta Sororitas.</i>"
	icon_state = "mlsister"
	item_state = "mlsister"
	canremove = 1
	unacidable = 1

/obj/item/clothing/shoes/jackboots/sisterofbattle/brsister
	name = "bloody rose power boots"
	desc = "A pair of Power Boots issued to the sisters of the Order Of Our Martyred Lady of the Adepta Sororitas.</i>"
	icon_state = "brsister"
	item_state = "brsister"
	canremove = 1
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP

//Inquisition Stuff

/obj/item/clothing/shoes/jackboots/inquisitor
	name = "combat boots"
	desc = "Tall plasteel boots with black paint."
	icon_state = "inqshoes"
	item_state = "inqshoes"
	cold_protection = FEET
	item_flags = ITEM_FLAG_NOSLIP
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+65,
		bomb = ARMOR_BOMB_TEN+20
	)

/obj/item/clothing/shoes/jackboots/inquisitor/acolyte
	name = "combat boots"
	desc = "Reinforced combat boots."
	icon_state = "jackboots"
	item_state = "jackboots"
	siemens_coefficient = 0.7
	cold_protection = FEET
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)


// Ork

/obj/item/clothing/shoes/orkboots //walking sounds only play with shoes and I was losing my mind not having them
	name = "ork boots"
	desc = "da stompas"
	icon_state = "ork_boots"
	item_state = "ork_boots"
	canremove = 0
	item_flags = ITEM_FLAG_NOSLIP
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+65,
		bomb = ARMOR_BOMB_TEN+20
	)

//Eldar Stuff

/obj/item/clothing/shoes/eldar
	name = "guardian mesh boots"
	desc = "A ancient set of boots. It looks like it's made out of thermoplas in a scale like pattern. It has extra cushion to protect the wearers feet."
	icon_state = "eldboots"
	item_state = "eldboots"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+65,
		bomb = ARMOR_BOMB_TEN+20
	)


/obj/item/clothing/shoes/eldar/ranger
  name = "eldar ranger boots"
  desc = "An Eldar Ranger's set of boots, these appear to be made up of layers of cameoline treated materials, with a thermoplas underlayer."
  icon_state = "eldboots"
  item_state = "eldboots"


/obj/item/clothing/shoes/eldar/druhkari
  name = "ghostplate boots"
  desc = "A ancient set of boots. It looks like it's made out of hardened resin in a thin-scale like pattern. It has extra cushion to protect the wearers feet."
  icon_state = "deldboots"
  item_state = "deldboots"

//PILGRIM SHIT BELOW

/obj/item/clothing/shoes/jackboots/vigilante
	name = "shining shoes"
	desc = "A shined pair of shoes"
	icon_state = "vigilante_boots"
	item_state = "vigilante_boots"
	siemens_coefficient = 0.7
	item_flags = ITEM_FLAG_NOSLIP

/obj/item/clothing/shoes/jackboots/prac_boots
	name = "practioner boots"
	desc = "Squish."
	icon_state = "prac_boots"
	item_state = "prac_boots"

/obj/item/clothing/shoes/jackboots/pilgrim_boots
	name = "pilgrim boots"
	desc = "The black leather boots of a pilgrim, somehow they manage to both fit and don't fit on you, they feel comfortable, can hold a knife."
	icon_state = "prac_boots"
	item_state = "prac_boots"

/obj/item/clothing/shoes/jackboots/inquisitor
	name = "noble boots"
	desc = "A pair of high quality black leather boots for stomping heretics faces in."
	icon_state = "noble-boots"
	item_state = "noble-boots"
	item_flags = ITEM_FLAG_NOSLIP
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+75,
		bomb = ARMOR_BOMB_TEN+25
	)

/obj/item/clothing/shoes/jackboots/noble
	name = "noble boots"
	desc = "A pair of high quality black leather boots for kicking the filthy peasants and participating in questionable hedonistic activities at the chambers."
	icon_state = "noble-boots"
	item_state = "noble-boots"
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/shoes/jackboots/mordian
	name = "Mordian Dress Boots"
	desc = "A pair of high quality black leather boots for parades and drilling"
	icon_state = "noble-boots"
	item_state = "noble-boots"

/obj/item/clothing/shoes/jackboots/noble/rt
	name = "rogue boots"
	desc = "A pair of high quality black leather boots for kicking the filthy peasants and participating in questionable hedonistic activities at the chambers."
	icon_state = "Boots"
	item_state = "Boots"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+75,
		bomb = ARMOR_BOMB_TEN+25
	)

/obj/item/clothing/shoes/scion
	name = "Tempestus Scion Boots"
	desc = "Armoured boots belonging to the elite Tempestus Scions."
	icon_state = "ScionBoots"
	item_state = "ScionBoots"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+75,
		bomb = ARMOR_BOMB_TEN+25
	)
	item_flags = ITEM_FLAG_NOSLIP
	siemens_coefficient = 0.6


// OTHER
/obj/item/clothing/shoes/jackboots/grot
	name = "Small shoes"
	desc = "Handmade small shoes"
	icon_state = "Grotshoes"
	item_state = "Grotshoes"

/obj/item/clothing/shoes/jackboots/grot/grc
	name = "Small combat boots"
	desc = "A smaller version of the jackboots issued to imperium forces."
	icon_state = "GRCboots"
	item_state = "GRCboots"

/obj/item/clothing/shoes/necron
	name = "Necron Feet"
	desc = "A set of heavy duty necrodermis feet, designed for all terrains."
	icon_state = null
	item_state = null
	item_flags = ITEM_FLAG_NOSLIP
	siemens_coefficient = 0
	unacidable = 1
	canremove = 0
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)


/*
/obj/item/clothing/shoes/jackboots/ogryn
	name = "Ogryn Combat Boots"
	desc = "Giant slabs of leather and steel hiding Emperor knows what."
	icon = 'icons/mob/32x40/feet.dmi'
	item_icons = list(slot_shoes_str = 'icons/mob/32x40/feet.dmi')
	icon_state = "ogryn_boots"
	item_state = "ogryn_boots"
	armor = list(melee = 10, bullet = 25, laser = 20, energy = 35, bomb = 35, bio = 0, rad = 0)
	//no more ogryn foot pics, remove the 3 lines below to add ogryn foot pics
	unacidable = 1
	item_flags = ITEM_FLAG_NOSLIP
	canremove = TRUE

//giant knife
/obj/item/clothing/shoes/jackboots/ogryn/New()
	..()
	knife = new /obj/item/melee/sword/combat_knife/catachan/giant
	update_icon()*/
