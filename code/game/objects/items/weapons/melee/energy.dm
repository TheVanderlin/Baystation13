/obj/item/melee/energy
	var/active = FALSE
	var/damaged = FALSE
	var/disabled
	var/active_force
	var/active_throwforce
	var/active_icon
	var/lighting_color
	var/active_attack_verb
	var/inactive_attack_verb = list()
	armor_penetration = 6
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_NO_BLOOD


/obj/item/melee/energy/can_embed()
	return FALSE


/obj/item/melee/energy/Initialize()
	. = ..()
	if(active)
		active = FALSE
		activate()
	else
		active = TRUE
		deactivate()


/obj/item/melee/energy/on_update_icon()
	if(active)
		icon_state = active_icon
	else
		icon_state = initial(icon_state)


/obj/item/melee/energy/proc/activate(mob/living/user)
	if (active)
		return
	if (damaged)
		if (world.time < disabled)
			if (user)
				user.show_message(SPAN_WARNING("\The [src] sputters. It's not going to work right now!"))
			return
		user.visible_message(SPAN_NOTICE("\The [src] resonates perfectly, once again."))
		damaged = FALSE

	active = TRUE
	force = active_force
	throwforce = active_throwforce
	sharp = TRUE
	edge = TRUE
	slot_flags |= SLOT_DENYPOCKET
	attack_verb = active_attack_verb

	if (user)
		playsound(user, 'sound/weapons/saberon.ogg', 50, 1)
		to_chat(user, SPAN_NOTICE("\The [src] is now energised."))
	set_light(2, 0.8, lighting_color)

	if (istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	update_icon()


/obj/item/melee/energy/proc/deactivate(mob/living/user)
	if (!active)
		return
	active = FALSE
	force = initial(force)
	throwforce = initial(throwforce)
	sharp = initial(sharp)
	edge = initial(edge)
	slot_flags = initial(slot_flags)
	attack_verb = inactive_attack_verb

	if (user)
		playsound(user, 'sound/weapons/saberoff.ogg', 50, 1)
		to_chat(user, SPAN_NOTICE("\The [src] deactivates!"))
	set_light(0)

	if (istype(user,/mob/living/carbon/human))
		var/mob/living/carbon/human/H = user
		H.update_inv_l_hand()
		H.update_inv_r_hand()

	update_icon()


/obj/item/melee/energy/attack_self(mob/living/user as mob)
	if (active)
		if ((MUTATION_CLUMSY in user.mutations) && prob(50))
			var/datum/pronouns/pronouns = user.choose_from_pronouns()
			user.visible_message(SPAN_DANGER("\The [user] accidentally cuts [pronouns.self] with \the [src]."),\
			SPAN_DANGER("You accidentally cut yourself with \the [src]."))
			user.take_organ_damage(5,5)
		deactivate(user)
	else
		activate(user)

	add_fingerprint(user)
	return


/obj/item/melee/energy/emp_act(severity)
	SHOULD_CALL_PARENT(FALSE)
	if (!active)
		return
	if (damaged)
		return
	var/disabletime = 30 SECONDS
	if (severity == EMP_ACT_HEAVY)
		disabletime = 1.5 MINUTES

	visible_message(SPAN_DANGER("\The [src] violently shudders!"))
	new /obj/overlay/self_deleting/emppulse(get_turf(src))

	disabled = world.time + disabletime
	var/mob/living/carbon/M = loc
	if (M)
		deactivate(M)
	else
		deactivate()
	update_icon()
	damaged = TRUE
	GLOB.empd_event.raise_event(src, severity)


/obj/item/melee/energy/get_storage_cost()
	if (active)
		return ITEM_SIZE_NO_CONTAINER
	return ..()


/obj/item/melee/energy/IsHeatSource()
	return active ? 3500 : 0


/*
 * Energy Axe
 */
/obj/item/melee/energy/axe
	icon = 'icons/obj/weapons/melee_energy.dmi'
	name = "energy axe"
	desc = "An energised battle axe."
	icon_state = "axe0"
	active_icon = "axe1"
	lighting_color = COLOR_SABER_AXE
	active_force = 40
	active_throwforce = 35
	force = 20
	throwforce = 10
	throw_speed = 1
	throw_range = 5
	w_class = ITEM_SIZE_NORMAL
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_NO_BLOOD
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	origin_tech = list(TECH_MAGNET = 3, TECH_COMBAT = 4)
	active_attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut")
	inactive_attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut")
	sharp = TRUE
	edge = TRUE
	melee_accuracy_bonus = 15


/obj/item/melee/energy/axe/deactivate(mob/living/user)
	. = ..()
	to_chat(user, SPAN_NOTICE("\The [src] is de-energised. It's just a regular axe now."))


/*
 * Energy Sword
 */
/obj/item/melee/energy/sword
	icon = 'icons/obj/weapons/melee_energy.dmi'
	name = "energy sword"
	desc = "May the force be within you."
	icon_state = "sword0"
	active_force = 30
	active_throwforce = 20
	force = 3
	throwforce = 5
	throw_speed = 1
	throw_range = 5
	w_class = ITEM_SIZE_SMALL
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_NO_BLOOD
	origin_tech = list(TECH_MAGNET = 3, TECH_ESOTERIC = 4)
	sharp = TRUE
	edge = TRUE
	base_parry_chance = 30
	active_attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	hitsound = 'sound/weapons/blade1.ogg'
	var/blade_color


/obj/item/melee/energy/sword/Initialize()
	if(!blade_color)
		blade_color = pick("red","blue","green","purple")

	active_icon = "sword[blade_color]"
	var/color_hex = list("red" = COLOR_SABER_RED,  "blue" = COLOR_SABER_BLUE, "green" = COLOR_SABER_GREEN, "purple" = COLOR_SABER_PURPLE)
	lighting_color = color_hex[blade_color]

	. = ..()


/obj/item/melee/energy/sword/green
	blade_color = "green"


/obj/item/melee/energy/sword/red
	blade_color = "red"


/obj/item/melee/energy/sword/red/activated
	active = TRUE


/obj/item/melee/energy/sword/blue
	blade_color = "blue"


/obj/item/melee/energy/sword/purple
	blade_color = "purple"


/obj/item/melee/energy/sword/dropped(mob/user)
	..()
	if(!istype(loc,/mob))
		deactivate(user)


/obj/item/melee/energy/sword/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	. = ..()
	if(.)
		var/datum/effect/spark_spread/spark_system = new /datum/effect/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, 'sound/weapons/blade1.ogg', 50, 1)


/obj/item/melee/energy/sword/get_parry_chance(mob/user, mob/attacker)
	return active ? ..() : 0


/obj/item/melee/energy/sword/pirate
	icon = 'icons/obj/weapons/melee_energy.dmi'
	name = "energy cutlass"
	desc = "Arrrr matey."
	icon_state = "cutlass0"
	active_icon = "cutlass1"
	lighting_color = COLOR_SABER_CUTLASS


/obj/item/melee/energy/sword/pirate/activated
	active = TRUE


/*
 *Energy Blade
 */
/obj/item/melee/energy/blade
	icon = 'icons/obj/weapons/melee_energy.dmi'
	name = "energy blade"
	desc = "A concentrated beam of energy in the shape of a blade. Very stylish... and lethal."
	icon_state = "blade"
	active_icon = "blade"	//It's all energy, so it should always be visible.
	lighting_color = COLOR_SABER_GREEN
	active_force = 40 //Normal attacks deal very high damage - about the same as wielded fire axe
	active = 1
	armor_penetration = 6
	sharp = TRUE
	edge = TRUE
	anchored = TRUE    // Never spawned outside of inventory, should be fine.
	active_throwforce = 1  //Throwing or dropping the item deletes it.
	throw_speed = 1
	throw_range = 1
	w_class = ITEM_SIZE_TINY //technically it's just energy or something, I dunno
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_NO_BLOOD
	active_attack_verb = list("attacked", "slashed", "stabbed", "sliced", "torn", "ripped", "diced", "cut")
	hitsound = 'sound/weapons/blade1.ogg'
	var/mob/living/creator
	var/datum/effect/spark_spread/spark_system


/obj/item/melee/energy/blade/New()
	..()
	spark_system = new /datum/effect/spark_spread()
	spark_system.set_up(5, 0, src)
	spark_system.attach(src)


/obj/item/melee/energy/blade/Initialize()
	. = ..()
	START_PROCESSING(SSobj, src)


/obj/item/melee/energy/blade/Destroy()
	STOP_PROCESSING(SSobj, src)
	. = ..()


/obj/item/melee/energy/blade/get_storage_cost()
	return ITEM_SIZE_NO_CONTAINER


/obj/item/melee/energy/blade/attack_self(mob/user as mob)
	user.drop_from_inventory(src)


/obj/item/melee/energy/blade/dropped()
	..()
	QDEL_IN(src, 0)


/obj/item/melee/energy/blade/Process()
	if (!creator || loc != creator || !creator.IsHolding(src))
		// Tidy up a bit.
		if(istype(loc,/mob/living))
			var/mob/living/carbon/human/host = loc
			if(istype(host))
				for(var/obj/item/organ/external/organ in host.organs)
					for(var/obj/item/O in organ.implants)
						if(O == src)
							organ.implants -= src
			host.pinned -= src
			host.embedded -= src
			host.drop_from_inventory(src)
		QDEL_IN(src, 0)


/obj/item/melee/energy/machete
	icon = 'icons/obj/weapons/melee_energy.dmi'
	name = "energy machete"
	desc = "A machete handle that extends out into a long, purple machete blade. It appears to be Tau in origin."
	icon_state = "machete_skrell_x"
	active_icon = "machete_skrell"
	active_force = 25
	active_throwforce = 17.25
	lighting_color = COLOR_SABER_SKRELL
	force = 3
	throwforce = 1
	w_class = ITEM_SIZE_SMALL
	origin_tech = list(TECH_MAGNET = 3)
	active_attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut")
	hitsound = 'sound/weapons/blade1.ogg'

	
	//WARHAMMER 40 THOUSAND IMPERIAL BITCHES WITH BOLTERS!


/obj/item/melee/energy/powersword //basis for other power weapons
	name = "Power Sword"
	desc = "A adamantium sword with a void shield generator inside of it, the void shield will cut through almost anything that it touches when its on, so make sure you don't cut yourself."
	item_state = "powersword"
	icon_state = "powersword"
	active_force = 47 //should be enough to cut off most limbs
	active_throwforce = 18
	icon = 'icons/obj/guardpower_gear_32xOBJ.dmi'
	force = 42
	armor_penetration = 10
	throwforce = 15
	throw_speed = 1
	throw_range = 4
	base_parry_chance = 30
	attack_cooldown = DEFAULT_WEAPON_COOLDOWN
	edge = 1
	sharp = 1
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_OCLOTHING
	atom_flags = 0
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	origin_tech = list(TECH_MAGNET = 6, TECH_COMBAT = 6)
	attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut", "slashed", "sliced")
	hitsound = 'sound/weapons/slash.ogg'
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
	armor = list(melee = 1, bullet = 3, laser = 3, energy = 3, bomb = 3, bio = 0, rad = 0)

/obj/item/melee/energy/powersword/activate(mob/living/user)
	..()
	icon_state = "powersword_on"
	to_chat(user, "<span class='notice'>\The [src] is now energised.</span>")

/obj/item/melee/energy/powersword/deactivate(mob/living/user)
	..()
	icon_state = initial(icon_state)
	to_chat(user, "<span class='notice'>\The [src] is de-energised. It's just a regular adamantium sword now.</span>")

/obj/item/melee/energy/powersword/astartes/ingelldina
	name = "Ingelldina Pattern Power Sword"
	desc = "A adamantium sword with a void shield generator inside of it, this one is very long and heavy, clearly having been made for one of the sons of the emperor."
	item_state = "powersword" // There is no on-mob for powersword we must use this. It looks alright.
	icon_state = "powersword"
	active_force = 52 //should be enough to cut off most limbs
	active_throwforce = 20
	force = 47 //its just a adamantium sword when offline
	throwforce = 15
	throw_speed = 1
	throw_range = 4
	sharp = TRUE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_OCLOTHING
	base_parry_chance = 45
	w_class = ITEM_SIZE_HUGE
	atom_flags = 0
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	origin_tech = list(TECH_MAGNET = 7, TECH_COMBAT = 7)
	attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut")
	armor_penetration = 11


/obj/item/melee/energy/powersword/claw/integrated/terminator
	name = "Terminator Lightning Claws"
	desc = "A gauntlet with 4 clawed fingers with a void shield generator inside of it, the voidshield makes a concentrated power field around each of the 4 claws, making them able to cut through almost anything, this one was integrated to the user's armor and would need a series of ajustments to be safely removed."
	icon_state = "powerclaw-alt_mag"
	item_state = "none"
	active_force = 40
	active_throwforce = 0
	force = 35
	throwforce = 1
	throw_speed = 1
	throw_range = 1
	armor_penetration = 22
	edge = 1
	sharp = 1
	attack_cooldown = FAST_WEAPON_COOLDOWN
	base_parry_chance = 66
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_LARGE
	atom_flags = 0
	attack_verb = list("mauled", "clawed", "cleaved", "torn", "cut")
	//can_door_force = 1

/obj/item/melee/energy/powersword/fist/integrated/terminator //Make other sub-groups for this when other power fists get added.
	name = "Terminator Power Fist"
	desc = "A powerful ceramite gauntlet, coated in a crackling power field, this one was integrated to the user's armor and would need a series of ajustments to be safely removed."
	icon_state = "powerclaw-alt_mag"
	item_state = "none"
	active_force = 60
	active_throwforce = 0
	force = 38
	throwforce = 1
	throw_speed = 1
	throw_range = 1
	armor_penetration = 18
	edge = 1
	sharp = 1
	attack_cooldown = SLOW_WEAPON_COOLDOWN
	base_parry_chance = 45
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_LARGE
	atom_flags = 0
	attack_verb = list("crushed", "slammed", "bludgeoned", "smashed", "slammed")
//	can_door_force = 1
//	wall_breaker = 1

/obj/item/melee/energy/powersword/fist/integrated/terminator/activate(mob/living/user)
	..()
	icon_state = "powerclaw-alt_on_mag"
	to_chat(user, "<span class='notice'>\The [src] is now energised.</span>")

/obj/item/melee/energy/powersword/fist/integrated/terminator/deactivate(mob/living/user)
	..()
	icon_state = initial(icon_state)
	to_chat(user, "<span class='notice'>\The [src] is de-energised. It's just a ceramite fist now.</span>")

/obj/item/melee/energy/powersword/fist/integrated/terminator/dropped()
	..()
	spawn(1) if(src) qdel(src)

