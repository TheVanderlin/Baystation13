
//Main Clothing
/obj/item/clothing/under/iccgn
	abstract_type = /obj/item/clothing/under/iccgn
	name = "base uniform, Tau"
	desc = "You should not see this."
	icon = 'packs/factions/iccgn/clothing.dmi'
	item_icons = list(
		slot_w_uniform_str = 'packs/factions/iccgn/clothing.dmi'
	)
	sprite_sheets = list()
	body_parts_covered = FULL_TORSO | ARMS | FULL_LEGS
	siemens_coefficient = 0.9
	armor = list(
		melee = ARMOR_MELEE_MINOR,
		energy = ARMOR_ENERGY_MINOR
	)


/obj/item/clothing/under/iccgn/pt
	name = "physical training uniform, Tau"
	desc = "A comfortable set of clingy shorts and a t-shirt sporting the insigna of the confederation navy."
	icon_state = "under_pt"
	item_state_slots = list(
		slot_l_hand_str = "under_pt_held_l",
		slot_r_hand_str = "under_pt_held_r",
		slot_w_uniform_str = "under_pt_worn"
	)


/obj/item/clothing/under/iccgn/utility
	name = "utility uniform, Tau"
	desc = "A comfortable black utility jumpsuit from a confederation navy uniform."
	icon_state = "under_utility"
	item_state_slots = list(
		slot_l_hand_str = "under_utility_held_l",
		slot_r_hand_str = "under_utility_held_r",
		slot_w_uniform_str = "under_utility_worn"
	)


/obj/item/clothing/under/iccgn/service
	name = "service uniform, Tau"
	desc = "A smart service shirt and dress pants from a confederation navy uniform."
	icon_state = "under_service"
	item_state_slots = list(
		slot_l_hand_str = "under_service_held_l",
		slot_r_hand_str = "under_service_held_r",
		slot_w_uniform_str = "under_service_worn"
	)


/obj/item/clothing/under/iccgn/service_command
	name = "service uniform, Tau"
	desc = "A smart senior officers' shirt and dress pants from a confederation navy uniform."
	icon_state = "under_service_command"
	item_state_slots = list(
		slot_l_hand_str = "under_service_command_held_l",
		slot_r_hand_str = "under_service_command_held_r",
		slot_w_uniform_str = "under_service_command_worn"
	)


//Over Clothing
/obj/item/clothing/suit/iccgn
	abstract_type = /obj/item/clothing/suit/iccgn
	name = "base jacket, Tau"
	desc = "You should not see this."
	icon = 'packs/factions/iccgn/clothing.dmi'
	item_icons = list(
		slot_wear_suit_str = 'packs/factions/iccgn/clothing.dmi'
	)
	sprite_sheets = list()
	body_parts_covered = FULL_TORSO | ARMS
	siemens_coefficient = 0.9
	valid_accessory_slots = list(
		ACCESSORY_SLOT_RANK,
		ACCESSORY_SLOT_INSIGNIA,
		ACCESSORY_SLOT_MEDAL
	)
	allowed = list()


/obj/item/clothing/suit/iccgn/utility
	name = "utility jacket, Tau"
	desc = "A rugged utility jacket from a confederation navy uniform."
	icon_state = "suit_utility"
	item_state_slots = list(
		slot_l_hand_str = "suit_utility_held_l",
		slot_r_hand_str = "suit_utility_held_r",
		slot_wear_suit_str = "suit_utility_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/storage/pockets
	)


/obj/item/clothing/suit/iccgn/service_enlisted
	name = "service jacket, Tau"
	desc = "A slick enlisted persons' service jacket from a confederation navy uniform."
	icon_state = "suit_service"
	item_state_slots = list(
		slot_l_hand_str = "suit_service_held_l",
		slot_r_hand_str = "suit_service_held_r",
		slot_wear_suit_str = "suit_service_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/storage/pockets,
		/obj/item/clothing/accessory/iccgn_badge/enlisted
	)


/obj/item/clothing/suit/iccgn/service_officer
	name = "service jacket, Tau"
	desc = "A slick officers' service jacket from a confederation navy uniform."
	icon_state = "suit_service"
	item_state_slots = list(
		slot_l_hand_str = "suit_service_held_l",
		slot_r_hand_str = "suit_service_held_r",
		slot_wear_suit_str = "suit_service_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/storage/pockets,
		/obj/item/clothing/accessory/iccgn_badge/officer
	)


/obj/item/clothing/suit/iccgn/service_command
	name = "service jacket, Tau"
	desc = "A slick senior officers' service jacket from a confederation navy uniform."
	icon_state = "suit_service_command"
	item_state_slots = list(
		slot_l_hand_str = "suit_service_held_l",
		slot_r_hand_str = "suit_service_held_r",
		slot_wear_suit_str = "suit_service_command_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/storage/pockets,
		/obj/item/clothing/accessory/iccgn_badge/officer
	)


/obj/item/clothing/suit/iccgn/dress_enlisted
	name = "dress cloak, Tau"
	desc = "A stylish enlisted persons' dress cloak from a confederation navy uniform."
	icon_state = "suit_dress_enlisted"
	item_state_slots = list(
		slot_l_hand_str = "suit_dress_enlisted_held_l",
		slot_r_hand_str = "suit_dress_enlisted_held_r",
		slot_wear_suit_str = "suit_dress_enlisted_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/iccgn_badge/enlisted
	)
	allowed = list()


/obj/item/clothing/suit/iccgn/dress_officer
	name = "dress cloak, Tau"
	desc = "A stylish officers' dress cloak from a confederation navy uniform."
	icon_state = "suit_dress_officer"
	item_state_slots = list(
		slot_l_hand_str = "suit_dress_officer_held_l",
		slot_r_hand_str = "suit_dress_officer_held_r",
		slot_wear_suit_str = "suit_dress_officer_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/iccgn_badge/officer
	)
	allowed = list()


/obj/item/clothing/suit/iccgn/dress_command
	name = "dress cloak, Tau"
	desc = "A stylish senior officers' dress cloak from a confederation navy uniform."
	icon_state = "suit_dress_command"
	item_state_slots = list(
		slot_l_hand_str = "suit_dress_command_held_l",
		slot_r_hand_str = "suit_dress_command_held_r",
		slot_wear_suit_str = "suit_dress_command_worn"
	)
	accessories = list(
		/obj/item/clothing/accessory/iccgn_badge/officer
	)
	allowed = list()


//Gloves
/obj/item/clothing/gloves/iccgn
	abstract_type = /obj/item/clothing/gloves/iccgn
	name = "base gloves, Tau"
	desc = "You should not see this."
	icon = 'packs/factions/iccgn/clothing.dmi'
	item_icons = list(
		slot_gloves_str = 'packs/factions/iccgn/clothing.dmi'
	)
	sprite_sheets = list()


/obj/item/clothing/gloves/iccgn/duty
	name = "duty gloves, Tau"
	desc = "Regal black utility gloves from a confederation navy uniform."
	icon_state = "gloves_utility"
	item_state_slots = list(
		slot_l_hand_str = "gloves_utility_held_l",
		slot_r_hand_str = "gloves_utility_held_r",
		slot_gloves_str = "gloves_utility_worn"
	)


//Shoes
/obj/item/clothing/shoes/iccgn
	abstract_type = /obj/item/clothing/shoes/iccgn
	name = "base shoes, Tau"
	desc = "You should not see this."
	icon = 'packs/factions/iccgn/clothing.dmi'
	item_icons = list(
		slot_shoes_str = 'packs/factions/iccgn/clothing.dmi'
	)
	sprite_sheets = list()


/obj/item/clothing/shoes/iccgn/utility
	name = "duty boots, Tau"
	desc = "Spectacularly shiny utility boots from a confederation navy uniform."
	icon_state = "boots_utility"
	item_state_slots = list(
		slot_l_hand_str = "boots_utility_held_l",
		slot_r_hand_str = "boots_utility_held_r",
		slot_shoes_str = "boots_utility_worn"
	)


/obj/item/clothing/shoes/iccgn/service
	name = "service boots, Tau"
	desc = "Extra tall service boots from a confederation navy uniform."
	icon_state = "boots_service"
	item_state_slots = list(
		slot_l_hand_str = "boots_service_held_l",
		slot_r_hand_str = "boots_service_held_r",
		slot_shoes_str = "boots_service_worn"
	)


//Hats
/obj/item/clothing/head/iccgn
	abstract_type = /obj/item/clothing/head/iccgn
	name = "base hat, Tau"
	desc = "You should not see this."
	icon = 'packs/factions/iccgn/clothing.dmi'
	item_icons = list(
		slot_head_str = 'packs/factions/iccgn/clothing.dmi'
	)
	sprite_sheets = list()


/obj/item/clothing/head/iccgn/beret
	name = "uniform beret, Tau"
	desc = "A slick grey beret from a confederation navy uniform."
	icon_state = "hat_beret"
	item_state_slots = list(
		slot_l_hand_str = "hat_beret_held_l",
		slot_r_hand_str = "hat_beret_held_r",
		slot_head_str = "hat_beret_worn"
	)


/obj/item/clothing/head/iccgn/service
	name = "service cover, Tau"
	desc = "A peaked service cap from a confederation navy uniform."
	icon_state = "hat_service"
	item_state_slots = list(
		slot_l_hand_str = "hat_service_held_l",
		slot_r_hand_str = "hat_service_held_r",
		slot_head_str = "hat_service_worn"
	)


/obj/item/clothing/head/iccgn/service_command
	name = "service cover, Tau"
	desc = "A senior officers' peaked service cap from a confederation navy uniform."
	icon_state = "hat_service_command"
	item_state_slots = list(
		slot_l_hand_str = "hat_service_command_held_l",
		slot_r_hand_str = "hat_service_command_held_r",
		slot_head_str = "hat_service_command_worn"
	)
