/obj/item/rig/combat
	name = "combat power armour"
	desc = "A sleek and dangerous hardsuit for active combat."
	icon_state = "security_rig"
	suit_type = "combat hardsuit"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_FIFTY
		)
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/combat
	helm_type = /obj/item/clothing/head/helmet/space/rig/combat
	boot_type = /obj/item/clothing/shoes/magboots/rig/combat
	glove_type = /obj/item/clothing/gloves/rig/combat

/obj/item/clothing/head/helmet/space/rig/combat
	light_overlay = "helmet_light_dual_green"
	species_restricted = list(SPECIES_HUMAN, SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)


/obj/item/clothing/suit/space/rig/combat
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)

	allowed = list(
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/handcuffs,
		/obj/item/device/t_scanner,
		/obj/item/rcd,
		/obj/item/rpd,
		/obj/item/crowbar,
		/obj/item/screwdriver,
		/obj/item/weldingtool,
		/obj/item/wirecutters,
		/obj/item/wrench,
		/obj/item/device/multitool,
		/obj/item/device/radio,
		/obj/item/device/scanner/gas,
		/obj/item/storage/briefcase/inflatable,
		/obj/item/material/twohanded/ravenor,
		/obj/item/melee,
		/obj/item/gun,
		/obj/item/storage/firstaid,
		/obj/item/reagent_containers/hypospray,
		/obj/item/roller_bed,
		/obj/item/device/suit_cooling_unit
	)

/obj/item/clothing/shoes/magboots/rig/combat
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)


/obj/item/clothing/gloves/rig/combat
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_NOCUFFS
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)


/obj/item/rig/combat/equipped
	initial_modules = list(
		/obj/item/rig_module/mounted/energy/egun,
		/obj/item/rig_module/vision/thermal,
		/obj/item/rig_module/grenade_launcher,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/combat,
		/obj/item/rig_module/cooling_unit
		)

//Extremely OP, hardly standard issue equipment
//Now a little less OP
/obj/item/rig/military
	name = "military power armour"
	desc = "An austere hardsuit used by paramilitary groups and real soldiers alike."
	icon_state = "military_rig"
	suit_type = "military hardsuit"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_RESISTANT,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_THIRTY
		)
	offline_vision_restriction = TINT_HEAVY

	chest_type = /obj/item/clothing/suit/space/rig/military
	helm_type = /obj/item/clothing/head/helmet/space/rig/military
	boot_type = /obj/item/clothing/shoes/magboots/rig/military
	glove_type = /obj/item/clothing/gloves/rig/military

/obj/item/clothing/head/helmet/space/rig/military
	light_overlay = "helmet_light_dual_green"
	species_restricted = list(SPECIES_HUMAN, SPECIES_TAU)


/obj/item/clothing/suit/space/rig/military
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)

	allowed = list(
		/obj/item/device/flashlight,
		/obj/item/tank,
		/obj/item/material/twohanded/ravenor,
		/obj/item/melee,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/handcuffs,
		/obj/item/device/t_scanner,
		/obj/item/rcd,
		/obj/item/crowbar,
		/obj/item/screwdriver,
		/obj/item/weldingtool,
		/obj/item/wirecutters,
		/obj/item/wrench,
		/obj/item/device/multitool,
		/obj/item/device/radio,
		/obj/item/device/scanner/gas,
		/obj/item/storage/briefcase/inflatable,
		/obj/item/gun,
		/obj/item/storage/firstaid,
		/obj/item/reagent_containers/hypospray,
		/obj/item/roller_bed,
		/obj/item/device/suit_cooling_unit
	)

/obj/item/clothing/shoes/magboots/rig/military
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)


/obj/item/clothing/gloves/rig/military
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_NOCUFFS
	species_restricted = list(SPECIES_HUMAN,SPECIES_TAU, SPECIES_KROOT, SPECIES_IPC)


/obj/item/rig/military/equipped
	initial_modules = list(
		/obj/item/rig_module/mounted/energy/egun,
		/obj/item/rig_module/vision/multi,
		/obj/item/rig_module/grenade_launcher,
		/obj/item/rig_module/ai_container,
		/obj/item/rig_module/power_sink,
		/obj/item/rig_module/electrowarfare_suite,
		/obj/item/rig_module/chem_dispenser/combat,
		/obj/item/rig_module/cooling_unit
		)
