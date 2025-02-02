/datum/extension/armor/mech
	under_armor_mult = 0.3

/obj/item/robot_parts/robot_component/armour/exosuit
	name = "exosuit armour plating"
	desc = "A pair of flexible armor plates, used to protect the internals of exosuits and its pilot."
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_THIRTY
		)
	origin_tech = list(TECH_MATERIAL = 1)

/obj/item/robot_parts/robot_component/armour/exosuit/radproof
	name = "radiation-proof armour plating"
	desc = "A fully enclosed radiation hardened shell designed to protect the pilot from radiation."
	icon_state = "armor_r"
	icon_state_broken = "armor_r_broken"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SHIELDED
		)
	origin_tech = list(TECH_MATERIAL = 3)

/obj/item/robot_parts/robot_component/armour/exosuit/em
	name = "EM-shielded armour plating"
	desc = "A shielded plating that sorrounds the eletronics and protects them from electromagnetic radiation."
	icon_state = "armor_e"
	icon_state_broken = "armor_e_broken"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL ,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_SHIELDED,
		bomb = ARMOR_BOMB_TEN,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	origin_tech = list(TECH_MATERIAL = 3)

/obj/item/robot_parts/robot_component/armour/exosuit/combat
	name = "heavy combat plating"
	desc = "Plating designed to deflect incoming attacks and explosions."
	icon_state = "armor_c"
	icon_state_broken = "armor_c_broken"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED
		)
	origin_tech = list(TECH_MATERIAL = 3)

/obj/item/robot_parts/robot_component/armour/exosuit/Initialize()
	. = ..()
	set_extension(src, /datum/extension/armor/mech, armor)