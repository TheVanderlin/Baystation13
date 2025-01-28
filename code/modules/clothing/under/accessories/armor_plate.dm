/obj/item/clothing/accessory/armor_plate
	name = "light flak plates"
	desc = "Constructed from steel-reinforced synthetic fibers, this light flak plate offers basic protection against shrapnel and low-velocity projectiles."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "armor_light"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	min_pressure_protection = 0
	slowdown = 0.03
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 0,
		energy = 1,
		bio = 4,
		rad = 5,
		bomb = 1
		)
	slot = ACCESSORY_SLOT_ARMOR_CHEST
	flags_inv = null

/obj/item/clothing/accessory/armor_plate/flak
	name = "medium flak plates"
	desc = "A plasteel-reinforced flak plate, providing enhanced protection against ballistic impacts and energy discharge."
	icon_state = "armor_medium"
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+300
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 1,
		energy = 2,
		bio = 6,
		rad = 7,
		bomb = 2
		)
	slowdown = 0.04

/obj/item/clothing/accessory/armor_plate/nurgle
	name = "nurgle plates"
	desc = "A disgusting plague infused plating, providing enhanced protection against ballistic impacts and energy discharge. It writhes as if the metal were alive."
	icon_state = "armor_medium"
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	color = COLOR_PAKISTAN_GREEN
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	cold_protection = FULL_BODY // CHAOS PROTECTION
	heat_protection = FULL_BODY
	armor = list(
		melee = 2,
		bullet = 3,
		laser = 2,
		energy = 2,
		bio = 26,
		rad = 27,
		bomb = 4
		)
	slowdown = 0.05

/obj/item/clothing/accessory/armor_plate/nurgleheavy
	name = "heavy nurgle plates"
	desc = "A disgusting plague infused plating, providing enhanced protection against ballistic impacts and energy discharge. It writhes as if the metal were alive."
	icon_state = "armor_medium"
	color = COLOR_PAKISTAN_GREEN
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	cold_protection = FULL_BODY // CHAOS PROTECTION
	heat_protection = FULL_BODY
	armor = list(
		melee = 3,
		bullet = 3,
		laser = 3,
		energy = 4,
		bio = 26,
		rad = 27,
		bomb = 6
		)
	slowdown = 0.055

/obj/item/clothing/accessory/armor_plate/tzeentch
	name = "exotic plates"
	desc = "A beautiful alien plating, providing enhanced protection against ballistic impacts and energy discharge. It writhes with constant sparks of chaos magic."
	icon_state = "armor_medium"
	color = COLOR_PALE_PURPLE_GRAY
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	cold_protection = FULL_BODY // CHAOS PROTECTION
	heat_protection = FULL_BODY
	armor = list(
		melee = 2,
		bullet = 2,
		laser = 4,
		energy = 8,
		bio = 16,
		rad = 17,
		bomb = 6
		)
	slowdown = 0.05

/obj/item/clothing/accessory/armor_plate/flakheavy
	name = "heavy flak plates"
	desc = "A plasteel-reinforced flak plate, providing enhanced protection against ballistic impacts and energy discharge."
	icon_state = "armor_medium"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	armor = list(
		melee = 2,
		bullet = 2,
		laser = 2,
		energy = 4,
		bio = 10,
		rad = 11,
		bomb = 4
		)
	slowdown = 0.06

/obj/item/clothing/accessory/armor_plate/flaklamellar
	name = "lamellar flak plates"
	desc = "A plasteel-reinforced flak plate, providing enhanced protection against ballistic impacts and energy discharge."
	icon_state = "armor_medium"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+450
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 1,
		energy = 2,
		bio = 6,
		rad = 7,
		bomb = 2
		)
	slowdown = 0.025 // Lighter weight, allows for better mobility

/obj/item/clothing/accessory/armor_plate/flaktribal
	name = "tribal flak lamellar"
	desc = "Old scavenged flak-plates sewn in with hard cured xenos leathers and alien fabrics."
	icon_state = "armor_medium"
	color = COLOR_BEASTY_BROWN
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+450
	slowdown = 0.02
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 0,
		energy = 1,
		bio = 8,
		rad = 9,
		bomb = 2
		)

/obj/item/clothing/accessory/armor_plate/carapace
	name = "carapace plates"
	desc = "A carapace plate reinforced with ablative coatings, designed to dissipate energy and deflect high-velocity rounds. Provides robust defense in high-risk environments."
	icon_state = "armor_tactical"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+500
	armor = list(
		melee = 2,
		bullet = 3,
		laser = 2,
		energy = 4,
		bio = 10,
		rad = 11,
		bomb = 6
		)

	slowdown = 0.05

/obj/item/clothing/accessory/armor_plate/carapacemaster
	name = "masterwork carapace plates"
	desc = "A carapace plate reinforced with ablative coatings, designed to dissipate energy and deflect high-velocity rounds. Provides robust defense in high-risk environments."
	icon_state = "armor_tactical"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+600
	armor = list(
		melee = 3,
		bullet = 3,
		laser = 3,
		energy = 6,
		bio = 11,
		rad = 12,
		bomb = 7
		)

	slowdown = 0.05

/obj/item/clothing/accessory/armor_plate/carapaceheavy
	name = "heavy carapace plates"
	desc = "Crafted with ceramic composites and advanced synthetic materials, this heavy carapace plate maximizes protection against ballistic and energy-based attacks."
	icon_state = "armor_merc"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+650
	armor = list(
		melee = 3,
		bullet = 3,
		laser = 3,
		energy = 6,
		bio = 11,
		rad = 12,
		bomb = 7
		)
	slowdown = 0.065

/obj/item/clothing/accessory/armor_plate/padding
	name = "light padding"
	desc = "The lining of someone's clothes, it seems like they cut it out..."
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+200
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	max_pressure_protection = null
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0
	armor = list(
		melee = 0,
		bullet = 0,
		laser = 0,
		energy = 0,
		bio = 4,
		rad = 5,
		bomb = 1
		)

/obj/item/clothing/accessory/armor_plate/paddingheavy
	name = "heavy padding"
	desc = "The heavy lining of someone's clothes, it seems like they cut it out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	color = COLOR_BEASTY_BROWN
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+350
	slowdown = 0.01
	armor = list(
		melee = 1,
		bullet = 0,
		laser = 0,
		energy = 1,
		bio = 8,
		rad = 9,
		bomb = 2
		)

/obj/item/clothing/accessory/armor_plate/paddingbio
	name = "special padding"
	desc = "A special hazard lining used in standard medicae kits, it's been cut out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+400
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	slowdown = 0.01
	armor = list(
		melee = 1,
		bullet = 0,
		laser = 0,
		energy = 1,
		bio = 18,
		rad = 19,
		bomb = 2
		)

/obj/item/clothing/accessory/armor_plate/paddingmech
	name = "hazard padding"
	desc = "A special tech hazard lining used primarily by the mechanicus, it's been cut out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	max_pressure_protection = VOIDSUIT_MAX_PRESSURE
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+550
	slowdown = 0.035
	armor = list(
		melee = 1,
		bullet = 1,
		laser = 1,
		energy = 4,
		bio = 24,
		rad = 24,
		bomb = 4
		)

/obj/item/clothing/accessory/armor_plate/mechplate
	name = "hazard plating"
	desc = "A special tech hazard plating used primarily by mechanicus tech priests -- it's been ripped out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+700
	slowdown = 0.065
	armor = list(
		melee = 2,
		bullet = 2,
		laser = 2,
		energy = 8,
		bio = 26,
		rad = 26,
		bomb = 8
		)

/obj/item/clothing/accessory/armor_plate/mechplatemagos
	name = "special hazard plating"
	desc = "A special tech hazard plating used primarily by mechanicus tech priests -- it's been ripped out..."
	icon = 'icons/obj/clothing/obj_suit.dmi'
	icon_state = "helmcover_green"
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	color = COLOR_BEASTY_BROWN
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+700
	slowdown = 0.075
	armor = list(
		melee = 3,
		bullet = 3,
		laser = 3,
		energy = 10,
		bio = 28,
		rad = 28,
		bomb = 12
		)

/obj/item/clothing/accessory/armor_plate/bodyglovebio
	name = "biohazard bodyglove" // DO NOT EVER ATTACH TO ARMOR. BODYGLOVES ARE NOT ARMOR ACCESORIES. THEY ARE UNIFORM ATTACHMENTS
	desc = "Composed of layered polymer fibers, attached to a uniform, this chemical bodyglove offers lightweight and flexible protection, suitable for menial mechanicus duties and light exploration."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	siemens_coefficient = 0.1
	color = COLOR_DARK_GREEN_GRAY
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_under.dmi')
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	slot_flags = SLOT_OCLOTHING //can wear in suit slot as well
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor" // Bodygloves use base armor_plate temp protection.
	icon_state = "robotics"
	item_state = "robotics_s"
	slowdown = 0.02
	flags_inv = null
	armor = list(
		melee = 0,
		bullet = 0,
		laser = 0,
		energy = 4,
		rad = 15,
		bio = 15,
		bomb = 5
		)

/obj/item/clothing/accessory/armor_plate/bodyglovemech
	name = "mechanicus bodyglove"
	desc = "Composed of advanced tech polymer fibers, attached to a uniform, this carapace-mesh bodyglove offers lightweight and flexible protection, suitable for all mechanicus duties and exploration of death-worlds."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	siemens_coefficient = 0.1
	color = COLOR_DARK_GREEN_GRAY
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = 'icons/mob/onmob/onmob_under.dmi'
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	slot_flags = SLOT_OCLOTHING //can wear in suit slot as well
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "robotics"
	item_state = "robotics_s"
	slowdown = 0.03
	flags_inv = null
	armor = list(
		melee = 0,
		bullet = 1,
		laser = 1,
		energy = 8,
		rad = 20,
		bio = 20,
		bomb = 5
		)

/obj/item/clothing/accessory/armor_plate/bodyglove
	name = "undersuit bodyglove"
	desc = "Composed of layered polymer fibers, attached to a uniform, this low-profile bodyglove offers lightweight and flexible protection, suitable for minimizing bulk without sacrificing defense."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	siemens_coefficient = 0.1
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = 'icons/mob/onmob/onmob_under.dmi'
	slot_flags = SLOT_OCLOTHING
	slot = ACCESSORY_SLOT_UTILITY // Worn alongside a carrier plate.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "jensen_s"
	item_state = "jensen_s"
	slowdown = 0.02 // Almost the same as Mech but lighter and offers no decent bio/rad prot.
	flags_inv = null
	armor = list(
		melee = 0,
		bullet = 1,
		laser = 1,
		energy = 2,
		bio = 5,
		rad = 5,
		bomb = 2
		)

/obj/item/clothing/accessory/armor_plate/bodyglove2
	name = "armoured bodyglove"
	desc = "Made from tech polymers, attached to a uniform, this experimental bodyglove balances flexibility with advanced defensive capabilities, providing enhanced protection at the cost of more cumbersome movement."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+40
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_under.dmi')
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	slot_flags = SLOT_OCLOTHING
	slot = ACCESSORY_SLOT_UTILITY // Attaches to uniform or can be worn as exosuit.
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "robotics"
	item_state = "robotics_s"
	slowdown = 0.04 // This item is super OP if stacked with power armor. It can be the difference between a lasgun critting you or just causing an injury.
	flags_inv = null
	armor = list(
		melee = 1,
		bullet = 2,
		laser = 2,
		energy = 4,
		bio = 5,
		rad = 5,
		bomb = 4
		)

/obj/item/clothing/accessory/armor_plate/bodyglovecatachan
	name = "catachan under armour"
	desc = "Made from tech polymers, attached to a uniform, this death world variant balances energy protection with advanced bio defense systems, though it is vulnerable to primitive firearms, it's users rarely have to worry about losing when it comes to glorious melee."
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS // We're simulating their rippling muscles a little bit with this bodyglove.
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE+50
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD // Catachans dont get cold.
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
	max_pressure_protection = SPACE_SUIT_MAX_PRESSURE
	icon = 'icons/obj/clothing/uniforms.dmi'
	item_icons = list(slot_wear_suit_str = 'icons/mob/onmob/onmob_under.dmi')
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	slot_flags = SLOT_OCLOTHING
	slot = ACCESSORY_SLOT_UTILITY // Attaches to uniform or can be worn as exosuit.
	w_class = ITEM_SIZE_NORMAL
	blood_overlay_type = "armor"
	icon_state = "catacomm" // Bulletproof pants and shirt.
	item_state = "catacomm_s"
	slowdown = 0.03
	flags_inv = null
	armor = list(
		melee = 2,
		bullet = 1,
		laser = 2,
		energy = 4,
		bio = 8,
		rad = 8,
		bomb = 4
		)
