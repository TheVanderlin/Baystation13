//Regular heretic space suit
/obj/item/clothing/head/helmet/space/syndicate
	name = "red space helmet"
	icon_state = "syndicate"
	item_state = "syndicate"
	desc = "A crimson helmet sporting clean lines and durable plating. Engineered to look menacing."
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SMALL,
		rad = ARMOR_RAD_THIRTY
		)
	siemens_coefficient = 0.3

/obj/item/clothing/suit/space/syndicate
	name = "red space suit"
	icon_state = "syndicate"
	item_state_slots = list(
		slot_l_hand_str = "space_suit_syndicate",
		slot_r_hand_str = "space_suit_syndicate",
	)
	desc = "A crimson spacesuit sporting clean lines and durable plating. Robust, reliable, and slightly suspicious."
	w_class = ITEM_SIZE_NORMAL
	allowed = list(
		/obj/item/gun,
		/obj/item/ammo_magazine,
		/obj/item/ammo_casing,
		/obj/item/material/twohanded/ravenor,
		/obj/item/melee,
		/obj/item/melee/energy/sword,
		/obj/item/handcuffs,
		/obj/item/tank/oxygen_emergency,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/tank/nitrogen_emergency
	)
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SMALL,
		rad = ARMOR_RAD_THIRTY
		)
	siemens_coefficient = 0.3


//Black heretic space suit
/obj/item/clothing/head/helmet/space/syndicate/black
	name = "black space helmet"
	desc = "A black helmet sporting clean lines and durable plating."
	icon_state = "syndicate-helm-black"
	item_state = "syndicate-helm-black"

/obj/item/clothing/suit/space/syndicate/black
	name = "black space suit"
	desc = "A black spacesuit sporting clean lines and durable plating."
	icon_state = "syndicate-black"
	item_state_slots = list(
		slot_l_hand_str = "syndicate-black",
		slot_r_hand_str = "syndicate-black",
	)
