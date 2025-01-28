/obj/item/clothing/gloves/captain
	desc = "Regal blue gloves, with a nice gold trim. Swanky."
	name = "captain's gloves"
	icon_state = "captain"
	item_state = "egloves"

/obj/item/clothing/gloves/cyborg
	desc = "Beep boop borp!"
	name = "cyborg gloves"
	icon_state = "black"
	item_state = "r_hands"
	siemens_coefficient = 1.0

/obj/item/clothing/gloves/insulated
	desc = "These gloves will protect the wearer from electric shocks."
	name = "insulated gloves"
	color = COLOR_YELLOW
	icon_state = "white"
	item_state = "lgloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500

/obj/item/clothing/gloves/insulated/cheap                             //Cheap Chinese Crap
	desc = "These gloves are cheap copies of the coveted gloves, no way this can end badly."
	name = "budget insulated gloves"
	siemens_coefficient = 1			//Set to a default of 1, gets overridden in New()

/obj/item/clothing/gloves/insulated/cheap/New()
	..()
	//average of 0.4, better than regular gloves' 0.75
	siemens_coefficient = pick(0, 0.1, 0.2, 0.3, 0.4, 0.6, 1.3)

/obj/item/clothing/gloves/forensic
	desc = "Specially made gloves for forensic technicians. The luminescent threads woven into the material stand out under scrutiny."
	name = "forensic gloves"
	icon_state = "forensic"
	item_state = "bgloves"
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05

	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = GLOVES_MAX_HEAT_PROTECTION_TEMPERATURE

/obj/item/clothing/gloves/thick
	desc = "These work gloves are thick and fire-resistant."
	name = "work gloves"
	icon_state = "black"
	item_state = "bgloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_WASHER_ALLOWED

	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS

/obj/item/clothing/gloves/thick/modified
	item_flags = ITEM_FLAG_PREMODIFIED | ITEM_FLAG_WASHER_ALLOWED

/obj/item/clothing/gloves/thick/swat
	desc = "These tactical gloves are somewhat fire and impact-resistant."
	name = "\improper SWAT Gloves"
	item_state = "swat_gl"
	siemens_coefficient = 0
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/gloves/thick/combat //Combined effect of SWAT gloves and insulated gloves
	desc = "These tactical gloves are somewhat fire and impact resistant."
	name = "combat gloves"
	icon_state = "work"
	item_state = "wgloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	force = 5
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN
	)
	cold_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS

/obj/item/clothing/gloves/thick/leather
	desc = "These leather work gloves protect against thorns, barbs, prickles, spikes and other harmful objects of floral origin."
	name = "thick leather gloves"
	icon_state = "leather"
	item_state = "ggloves"

/obj/item/clothing/gloves/thick/leather/modified
	item_flags = ITEM_FLAG_PREMODIFIED | ITEM_FLAG_WASHER_ALLOWED

/obj/item/clothing/gloves/latex
	name = "latex gloves"
	desc = "Sterile latex gloves."
	icon_state = "latex"
	item_state = "lgloves"
	w_class = ITEM_SIZE_TINY
	siemens_coefficient = 1.1 //thin latex gloves, much more conductive than fabric gloves (basically a capacitor for AC)
	permeability_coefficient = 0.01
	germ_level = 0

/obj/item/clothing/gloves/latex/modified
	item_flags = ITEM_FLAG_PREMODIFIED | ITEM_FLAG_WASHER_ALLOWED

/obj/item/clothing/gloves/latex/nitrile
	name = "nitrile gloves"
	desc = "Sterile nitrile gloves."
	icon_state = "nitrile"
	item_state = "ngloves"

/obj/item/clothing/gloves/latex/nitrile/modified
	item_flags = ITEM_FLAG_PREMODIFIED | ITEM_FLAG_WASHER_ALLOWED

/obj/item/clothing/gloves/thick/duty
	desc = "These brown duty gloves are made from a durable synthetic."
	name = "work gloves"
	icon_state = "work"
	item_state = "wgloves"
	armor = list(
		melee = ARMOR_MELEE_BASIC,
		bullet = ARMOR_BALLISTIC_BASIC,
		laser = ARMOR_LASER_BASIC
		)

/obj/item/clothing/gloves/thick/duty/modified
	item_flags = ITEM_FLAG_PREMODIFIED | ITEM_FLAG_WASHER_ALLOWED

/obj/item/clothing/gloves/tactical
	desc = "These brown tactical gloves are made from a durable synthetic, and have hardened knuckles."
	name = "tactical gloves"
	icon_state = "work"
	item_state = "wgloves"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	force = 5
	siemens_coefficient = 0.50
	permeability_coefficient = 0.05
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/gloves/guards
	desc = "A pair of synthetic gloves and arm pads reinforced with armor plating."
	name = "arm guards"
	icon_state = "guards"
	item_state = "guards"
	body_parts_covered = HANDS
	w_class = ITEM_SIZE_NORMAL
	siemens_coefficient = 0.7
	permeability_coefficient = 0.03
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY+5,
		rad = ARMOR_RAD_THIRTY+25,
		bomb = ARMOR_BOMB_TEN
	)

/obj/item/clothing/gloves/fire
	desc = "A pair of gloves specially design for firefight and damage control."
	name = "fire gloves"
	icon_state = "fire_gloves"
	item_state = "fire_gloves"
	siemens_coefficient = 0.50
	gas_transfer_coefficient = 0.90
	permeability_coefficient = 0.50
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_WASHER_ALLOWED
	body_parts_covered = HANDS
	cold_protection = HANDS
	heat_protection = HANDS
	min_cold_protection_temperature = GLOVES_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = HANDS
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = FIRESUIT_MAX_PRESSURE

/obj/item/clothing/gloves/royalguard
	desc = "These black leather gloves are made from the finest grox leather sourced locally, and have hardened knuckles."
	name = "tactical gloves"
	icon_state = "royalgg"
	item_state = "royalgg"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/gloves/thick/swat/combat/warfare
	icon_state = "warfare_gloves"
	item_state = "warfare_gloves"

/obj/item/clothing/gloves/thick/swat/combat/bloodpact
	icon_state = "warfare_gloves"
	item_state = "BP_Gloves"

/obj/item/clothing/gloves/thick/swat/combat/warfare/rt
	icon_state = "rtg"
	item_state = "rtg"

/obj/item/clothing/gloves/thick/swat/krieg
	icon_state = "krieggloves"
	item_state = "krieggloves"
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+45,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/gloves/thick/swat/maccabian
	icon_state = "M_Gloves-Icon"
	item_state = "M_Gloves-Icon"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/gloves/thick/swat/Smaccabian
	icon_state = "M_SGauntlets-Icon"
	item_state = "M_SGauntlets-Icon"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+45,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/gloves/thick/swat/grenadier
	name = "grenadier gloves"
	desc = "The Krieg Grenadier's distinct gloves designed to be resistant against all common chemical and biological attacks, as well as being uparmored for extra protection."
	icon_state = "krieggloves"
	item_state = "krieggloves"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/gloves/thick/swat/cadian
	name = "cadian flak gloves"
	desc = "The Astra Militarum standard issued gloves, found virtually everywhere in Imperial Space. Protect against most weather conditions and light bruises."
	icon_state = "work"
	item_state = "wgloves"
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+5
	)

/obj/item/clothing/gloves/thick/swat/techpriest
	name = "cyborg tech priest hands"
	desc = "The augmented palms and fingers of a tech priest. Designed to allow the Priest to safely work on any machine."
	canremove = 0
	siemens_coefficient = 0
	permeability_coefficient = 0.05
	armor = list(
		melee = ARMOR_MELEE_FLAK-2,
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1,
		energy = ARMOR_ENERGY_TEN+10,
		bio = ARMOR_BIO_THIRTY+15,
		rad = ARMOR_RAD_THIRTY+35,
		bomb = ARMOR_BOMB_TEN+5
	)
	icon_state = "work"
	item_state = "techpriest"
	unacidable = 1

/obj/item/clothing/gloves/thick/swat/sister
	name = "sacred rose gauntlets"
	desc = "Gauntlets of the Adepta Sororitas's Order Of Sacred Rose Battle Sisters, Part of their Power Armour System."
	icon_state = "sister"
	item_state = "sister"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+35,
		rad = ARMOR_RAD_THIRTY+65,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/gloves/thick/swat/sister/mlsister
	name = "martyred lady gauntlets"
	desc = "Gauntlets of a sister belonging to The Order of Our Martyred Lady. Part of their Power Armour System."
	icon_state = "mlsister"
	item_state = "mlsister"

/obj/item/clothing/gloves/thick/swat/sister/brsister
	name = "bloody rose gauntlets"
	desc = "Gauntlets of a sister belonging to The Order of the Sacred Rose. Part of their power armor system."
	icon_state = "brsister"
	item_state = "brsister"

/obj/item/clothing/gloves/thick/swat/cadian/scion
	desc = "Armoured gauntlets belonging to the elite Tempestus Scions."
	name = "tempestus gauntlets"
	icon_state = "ScionGloves"
	item_state = "ScionGloves"
	armor = list(
		melee = ARMOR_MELEE_FLAK-1,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+10
	)

/obj/item/clothing/gloves/thick/swat/cadian/astartes
	desc = "Powered gauntlets"
	name = "Astartes Gauntlets"
	icon_state = "ScionGloves"
	item_state = "ScionGloves"
	max_heat_protection_temperature = FIRESUIT_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+1,
		laser = ARMOR_LASER_FLAK+1,
		energy = ARMOR_ENERGY_TEN+20,
		bio = ARMOR_BIO_THIRTY+25,
		rad = ARMOR_RAD_THIRTY+55,
		bomb = ARMOR_BOMB_TEN+15
	)

/obj/item/clothing/gloves/prac_gloves
	name = "practioner gloves"
	desc = "Now you can grope the dead without worrying about what you're contracting."
	icon_state = "prac_gloves"
	item_state = "prac_gloves"

// Astra Militarum Stuff
