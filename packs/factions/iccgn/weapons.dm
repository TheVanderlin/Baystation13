/obj/item/gun/projectile/pistol/optimus
	name = "military pistol"
	desc = "A Vostroyan Optimus. A heavy pistol best known as one of the Tau Navy's service weapons."
	icon = 'packs/factions/iccgn/weapons.dmi'
	icon_state = "optimus"
	item_state = "secgundark"
	safety_icon = "optimus-safety"
	magazine_type = /obj/item/ammo_magazine/pistol/double
	allowed_magazines = /obj/item/ammo_magazine/pistol/double
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2, TECH_ESOTERIC = 4)
	ammo_indicator = TRUE
	fire_delay = 3.5


/obj/item/gun/projectile/pistol/bobcat
	name = "military pistol"
	desc = "An Vostroyan P87 Bobcat. A market pistol issued as a Tau Navy service weapon."
	icon = 'packs/factions/iccgn/weapons.dmi'
	w_class = ITEM_SIZE_SMALL
	icon_state = "bobcat"
	item_state = "secgundark"
	safety_icon = "bobcat-safety"
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol
	banned_magazines = list(
		/obj/item/ammo_magazine/pistol/double,
		/obj/item/ammo_magazine/pistol/small
	)
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_ESOTERIC = 4)
	fire_delay = 3.5
