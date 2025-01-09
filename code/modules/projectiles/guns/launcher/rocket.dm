/obj/item/gun/launcher/rocket
	name = "rocket launcher"
	desc = "MAGGOT."
	icon_state = "rocket"
	item_state = "rocket"
	w_class = ITEM_SIZE_HUGE
	throw_speed = 2
	throw_range = 10
	force = 5.0
	obj_flags =  OBJ_FLAG_CONDUCTIBLE
	slot_flags = 0
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	fire_sound = 'sound/effects/bang.ogg'
	combustion = 1

	release_force = 15
	throw_distance = 30
	var/max_rockets = 1
	var/list/rockets = list()

/obj/item/gun/launcher/rocket/examine(mob/user, distance)
	. = ..()
	if(distance <= 2)
		to_chat(user, SPAN_NOTICE("[length(rockets)] / [max_rockets] rockets."))


/obj/item/gun/launcher/rocket/use_tool(obj/item/tool, mob/user, list/click_params)
	// Rocket - Load ammo
	if (istype(tool, /obj/item/ammo_casing/rocket))
		if (length(rockets) >= max_rockets)
			USE_FEEDBACK_FAILURE("\The [src] is full.")
			return TRUE
		if (!user.unEquip(tool, src))
			FEEDBACK_UNEQUIP_FAILURE(user, tool)
			return TRUE
		rockets += tool
		playsound(src, 'sound/effects/cannon_load.ogg', 50, 3)
		user.visible_message(
			SPAN_NOTICE("\The [user] loads \a [src] with \a [tool]."),
			SPAN_NOTICE("You load \the [src] with \the [tool].")
		)
		if (max_rockets > 1)
			to_chat(user, SPAN_INFO("\The [src] now has [length(rockets)]/[max_rockets] rocket\s loaded."))
		return TRUE

	return ..()


/obj/item/gun/launcher/rocket/consume_next_projectile()
	if(length(rockets))
		var/obj/item/ammo_casing/rocket/I = rockets[1]
		var/obj/item/missile/M = new (src)
		M.primed = 1
		rockets -= I
		return M
	return null

/obj/item/gun/launcher/rocket/handle_post_fire(mob/user, atom/target)
	log_and_message_admins("fired a rocket from a rocket launcher ([src.name]) at [target].", user)
	..()

/obj/item/gun/launcher/rocket/krak
	name = "Krak Missile Launcher"
	desc = "A simple krak missile launcher, a robust and man-portable anti-tank weapon primarily in use by PDF forces."
	icon = 'icons/obj/weapons/gun/other.dmi'
	icon_state = "rcl_rifle"
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	fire_sound = 'sound/warhammer/gunshot/tank.ogg'

/obj/item/gun/launcher/rocket/ork
	name = "Ork Rokit Launcha"
	desc = "De rockity bit iz to be pointed at da umies. Charge in wid ya choppa when ya shoot it, innit."
	icon = 'icons/obj/weapons/gun/other.dmi'
	icon_state = "rokkit_launcha"
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	fire_sound = 'sound/warhammer/gunshot/tank.ogg'
