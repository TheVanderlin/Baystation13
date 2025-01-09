/obj/item/gun/projectile/revolver
	name = "revolver"
	desc = "The al-Maliki & Mosley Magnum Double Action is a choice revolver for when you absolutely, positively need to put a hole in the other guy. You feelin' lucky punk?"
	icon = 'icons/obj/guns/revolvers.dmi'
	icon_state = "revolver"
	item_state = "revolver"
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	caliber = CALIBER_SLUG_MAGNUM
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	handle_casings = CYCLE_CASINGS
	max_shells = 8
	fire_delay = 3.5
	ammo_type = /obj/item/ammo_casing/magnum
	mag_insert_sound = 'sound/weapons/guns/interaction/rev_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/rev_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/gunshot_strong.ogg'
	accuracy = 2
	one_hand_penalty = 2
	slowdown_general = 0

/obj/item/gun/projectile/revolver/AltClick()
	if(CanPhysicallyInteract(usr))
		spin_cylinder()
		return TRUE
	return ..()

/obj/item/gun/projectile/revolver/verb/spin_cylinder()
	set name = "Spin cylinder"
	set desc = "Fun when you're bored out of your skull."
	set category = "Object"

	chamber_offset = 0
	visible_message(SPAN_WARNING("\The [usr] spins the cylinder of \the [src]!"), \
	SPAN_NOTICE("You hear something metallic spin and click."))
	playsound(src.loc, 'sound/weapons/revolver_spin.ogg', 100, 1)
	loaded = shuffle(loaded)
	if(rand(1,max_shells) > length(loaded))
		chamber_offset = rand(0,max_shells - length(loaded))

/obj/item/gun/projectile/revolver/consume_next_projectile()
	if(chamber_offset)
		chamber_offset--
		return
	return ..()

/obj/item/gun/projectile/revolver/load_ammo(obj/item/A, mob/user)
	chamber_offset = 0
	return ..()

/obj/item/gun/projectile/revolver/capgun
	name = "cap gun"
	desc = "Looks almost like the real thing! Ages 8 and up."
	icon_state = "revolver-toy"
	fire_sound = 'sound/weapons/gunshot/gunshot.ogg'
	caliber = CALIBER_CAPS
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 1)
	ammo_type = /obj/item/ammo_casing/cap
	var/snipped = FALSE


/obj/item/gun/projectile/revolver/capgun/on_update_icon()
	if (snipped)
		icon_state = "revolver"
	else
		icon_state = "revolver-toy"
	..()


/obj/item/gun/projectile/revolver/capgun/proc/set_snipped(new_snipped = TRUE)
	snipped = new_snipped
	if (new_snipped)
		SetName("revolver")
		desc += " Someone snipped off the barrel's toy mark. How dastardly, this could get someone shot."
	else
		SetName(initial(name))
		desc = initial(desc)
	update_icon()


/obj/item/gun/projectile/revolver/capgun/use_tool(obj/item/tool, mob/user, list/click_params)
	// Wirecutters - Remove toy marking
	if (isWirecutter(tool))
		if (snipped)
			USE_FEEDBACK_FAILURE("\The [src] has already had it's barrel snipped.")
			return TRUE
		user.visible_message(
			SPAN_NOTICE("\The [user] snips \a [src]'s toy markings with \a [tool]."),
			SPAN_NOTICE("You snip \the [src]'s toy markings with \the [tool]."),
			range = 3
		)
		set_snipped()
		return TRUE

	return ..()
