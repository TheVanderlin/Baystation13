/obj/item/gun/projectile/pistol/m22f
	name = "military pistol"
	desc = "A Vostroyan M22F. A large pistol issued as an IMPDF service weapon."
	magazine_type = /obj/item/ammo_magazine/pistol/double
	allowed_magazines = /obj/item/ammo_magazine/pistol/double
	icon = 'maps/torch/icons/obj/weapons.dmi'
	icon_state = "m22f"
	item_state = "secgundark"
	safety_icon = "m22f-safety"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	fire_delay = 3.5
	ammo_indicator = TRUE

/obj/item/gun/projectile/pistol/m22f/empty
	starts_loaded = FALSE

/obj/item/gun/projectile/pistol/m19
	name = "military pistol"
	desc = "A Vostroyan M19. A light pistol issued as an IMPDF service weapon."
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol
	banned_magazines = list(
		/obj/item/ammo_magazine/pistol/double,
		/obj/item/ammo_magazine/pistol/small
	)
	icon = 'maps/torch/icons/obj/weapons.dmi'
	icon_state = "m19"
	item_state = "secgundark"
	safety_icon = "m19-safety"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	fire_delay = 3.5

/obj/item/gun/projectile/pistol/m19/empty
	starts_loaded = FALSE
