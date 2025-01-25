/obj/item/gun/projectile/revolver/foundation
	name = "Culexus Nullstriker"
	icon = 'icons/obj/guns/foundation.dmi'
	icon_state = "foundation"
	desc = "A fascinating device, utilised by agents of the Culexus temple to attack Psykers."
	ammo_type = /obj/item/ammo_casing/magnum/nullglass

/obj/item/gun/projectile/revolver/foundation/disrupts_psionics()
	return FALSE

/obj/item/storage/briefcase/foundation
	name = "Briefcase"
	desc = "A handsome black leather briefcase."
	icon_state = "fbriefcase"
	item_state = "fbriefcase"

/obj/item/storage/briefcase/foundation/disrupts_psionics()
	return FALSE

/obj/item/storage/briefcase/foundation/New()
	..()
	new /obj/item/ammo_magazine/speedloader/revolver/nullglass(src)
	new /obj/item/gun/projectile/revolver/foundation(src)
	make_exact_fit()
