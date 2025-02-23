//Heretic rig
/obj/item/clothing/head/helmet/space/void/merc
	name = "blood-red voidsuit helmet"
	desc = "An advanced helmet designed for work in special operations. Property of Gorlex Marauders."
	icon_state = "rig0-syndie"
	item_state = "syndie_helm"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	siemens_coefficient = 0.3
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU,SPECIES_KROOT,SPECIES_IPC, SPECIES_VOX)
	sprite_sheets = list(
		SPECIES_VOX = 'icons/mob/species/vox/onmob_head_vox.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_VOX = 'icons/obj/clothing/species/vox/obj_head_vox.dmi'
		)
	camera = /obj/machinery/camera/network/mercenary
	light_overlay = "explorer_light"

/obj/item/clothing/suit/space/void/merc
	icon_state = "rig-syndie"
	name = "blood-red voidsuit"
	desc = "An advanced suit that protects against injuries during special operations. Property of Gorlex Marauders."
	item_state_slots = list(
		slot_l_hand_str = "syndie_voidsuit",
		slot_r_hand_str = "syndie_voidsuit",
	)
	w_class = ITEM_SIZE_LARGE //normally voidsuits are bulky but the merc voidsuit is 'advanced' or something
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_SMALL
		)
	allowed = list(/obj/item/device/flashlight,/obj/item/tank,/obj/item/device/suit_cooling_unit,/obj/item/gun,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/melee/energy/sword,/obj/item/handcuffs)
	siemens_coefficient = 0.3
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU,SPECIES_KROOT,SPECIES_IPC, SPECIES_VOX)
	sprite_sheets = list(
		SPECIES_VOX = 'icons/mob/species/vox/onmob_suit_vox.dmi'
		)
	sprite_sheets_obj = list(
		SPECIES_VOX = 'icons/obj/clothing/species/vox/obj_suit_vox.dmi'
		)


/obj/item/clothing/suit/space/void/merc/prepared
	helmet = /obj/item/clothing/head/helmet/space/void/merc
	boots = /obj/item/clothing/shoes/magboots
	tank = /obj/item/tank/oxygen
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_INVALID_FOR_CHAMELEON
