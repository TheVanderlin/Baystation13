
/obj/item/clothing/suit/armor
	allowed = list(/obj/item/gun/energy,/obj/item/device/radio,/obj/item/reagent_containers/spray/pepper,/obj/item/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/handcuffs,/obj/item/gun/magnetic,/obj/item/clothing/head/helmet,/obj/item/device/flashlight)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	item_flags = ITEM_FLAG_THICKMATERIAL | ITEM_FLAG_AIRTIGHT
	flags_inv = CLOTHING_BULKY
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6
	equip_delay = 2 SECONDS
	slowdown_general = 0.09
	w_class = ITEM_SIZE_HUGE
	min_pressure_protection = 0

/obj/item/clothing/suit/armor/equip_delay_before(mob/user, slot, equip_flags)
	user.setClickCooldown(1 SECOND)
	user.visible_message(
		SPAN_ITALIC("\The [user] begins to don \the [src]."),
		SPAN_ITALIC("You begin to don \the [src]."),
		SPAN_ITALIC("You can hear metal clicking and fabric rustling."),
		range = 5
	)


/obj/item/clothing/suit/armor/equip_delay_after(mob/user, slot, equip_flags)
	user.visible_message(
		SPAN_ITALIC("\The [user] finishes putting on \the [src]."),
		SPAN_NOTICE("You finish putting on \the [src]."),
		range = 5
	)

/obj/item/clothing/suit/armor/vest/old //just realized these had never been removed
	name = "armor"
	desc = "An armored vest that protects against some damage."
	icon_state = "armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	cold_protection = UPPER_TORSO|LOWER_TORSO
	heat_protection = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_TEN
		)

/obj/item/clothing/suit/armor/vest/old/security
	name = "militarum armour"
	desc = "An armored vest that protects against some damage. This one has a imperial badge."
	icon_state = "armorsec"

/obj/item/clothing/suit/armor/vest/warden
	name = "warden's jacket"
	desc = "An armoured jacket with silver rank pips and livery."
	icon_state = "warden_jacket"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_TEN
		)
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS

/obj/item/clothing/suit/armor/swat/officer
	name = "officer jacket"
	desc = "An armored jacket used in special operations."
	icon_state = "detective"
	item_state = "detective"
	blood_overlay_type = "coat"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)


/obj/item/clothing/suit/armor/det_suit
	name = "armor"
	desc = "An armored vest with a investigator's badge on it."
	icon_state = "detective-armor"
	blood_overlay_type = "armor"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_TEN
		)


//Reactive armor
//When the wearer gets hit, this armor will teleport the user a short distance away (to safety or to more danger, no one knows. That's the fun of it!)
/obj/item/clothing/suit/armor/reactive
	name = "reactive teleport armour"
	desc = "Someone separated our Chief Science Officer from their own head!"
	active = 0.0
	icon_state = "reactiveoff"
	blood_overlay_type = "armor"
	armor = null


/obj/item/clothing/suit/armor/reactive/handle_shield(mob/user, damage, atom/damage_source = null, mob/attacker = null, def_zone = null, attack_text = "the attack")
	if(prob(50))
		user.visible_message(SPAN_DANGER("The reactive teleport system flings [user] clear of the attack!"))
		var/list/turfs = list()
		for(var/turf/T in orange(6, user))
			if(istype(T,/turf/space)) continue
			if(T.density) continue
			if(T.x>world.maxx-6 || T.x<6)	continue
			if(T.y>world.maxy-6 || T.y<6)	continue
			turfs += T
		if(!length(turfs)) turfs += pick(/turf in orange(6))
		var/turf/picked = pick(turfs)
		if(!isturf(picked)) return

		var/datum/effect/spark_spread/spark_system = new /datum/effect/spark_spread()
		spark_system.set_up(5, 0, user.loc)
		spark_system.start()
		playsound(user.loc, "sparks", 50, 1)

		user.forceMove(picked)
		return PROJECTILE_FORCE_MISS
	return 0

/obj/item/clothing/suit/armor/reactive/attack_self(mob/user as mob)
	src.active = !( src.active )
	if (src.active)
		to_chat(user, SPAN_NOTICE("The reactive armor is now active."))
		src.icon_state = "reactive"
		src.item_state = "reactive"
	else
		to_chat(user, SPAN_NOTICE("The reactive armor is now inactive."))
		src.icon_state = "reactiveoff"
		src.item_state = "reactiveoff"
		src.add_fingerprint(user)
	return

/obj/item/clothing/suit/armor/reactive/emp_act(severity)
	active = 0
	src.icon_state = "reactiveoff"
	src.item_state = "reactiveoff"
	..()

//Non-hardsuit ERT armor.
//Commander
/obj/item/clothing/suit/armor/vest/ert
	name = "asset protection command armour"
	desc = "A set of armor worn by many imperial and private asset protection forces. Has blue highlights."
	icon_state = "ertarmor_cmd"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY
		)

//Security
/obj/item/clothing/suit/armor/vest/ert/security
	name = "asset protection militarum armour"
	desc = "A set of armor worn by many imperial and private asset protection forces. Has red highlights."
	icon_state = "ertarmor_sec"

//Engineer
/obj/item/clothing/suit/armor/vest/ert/engineer
	name = "asset protection engineering armour"
	desc = "A set of armor worn by many imperial and private asset protection forces. Has orange highlights."
	icon_state = "ertarmor_eng"

//Medical
/obj/item/clothing/suit/armor/vest/ert/medical
	name = "asset protection medical armour"
	desc = "A set of armor worn by many imperial and private asset protection forces. Has red and white highlights."
	icon_state = "ertarmor_med"

//New Vests
/obj/item/clothing/suit/armor/vest
	name = "armored vest"
	desc = "An armor vest made of synthetic fibers."
	icon_state = "kvest"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY
		)
	valid_accessory_slots = list(ACCESSORY_SLOT_INSIGNIA)

/obj/item/clothing/suit/armor/vest/nt
	name = "corporate armored vest"
	desc = "A synthetic armor vest. This one is marked with a imperial logo."
	icon_state = "ntvest"

/obj/item/clothing/suit/armor/vest/detective
	name = "brown armored vest"
	desc = "An synthetic armor vest colored in a vintage brown."
	icon_state = "detvest"

/obj/item/clothing/suit/armor/vest/pcrc
	name = "contractor armored vest"
	desc = "A synthetic armor vest. This one is marked with the crest of Necromunda, a private militarum firm."
	icon_state = "pcrcvest"

/obj/item/clothing/suit/armor/vest/press
	name = "press armored vest"
	desc = "A synthetic armor vest. This one is blue and has patches with the word 'PRESS' on the back and front."
	icon_state = "pvest"

/obj/item/clothing/suit/armor/grim/storage/vest
	name = "webbed armor vest"
	desc = "A synthetic armor vest. This one has added webbing and ballistic plates."
	icon_state = "webvest"
	accessories = list(/obj/item/clothing/accessory/armor_plate)
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_SMALL,
		bio = ARMOR_BIO_THIRTY-8,
		rad = ARMOR_RAD_THIRTY-8,
		bomb = ARMOR_BOMB_THIRTY
		)
	allowed = list(/obj/item/gun/energy,/obj/item/device/radio,/obj/item/reagent_containers/spray/pepper,/obj/item/gun/projectile,/obj/item/ammo_magazine,/obj/item/ammo_casing,/obj/item/melee/baton,/obj/item/handcuffs,/obj/item/gun/magnetic)
	body_parts_covered = null
	item_flags = ITEM_FLAG_THICKMATERIAL
	cold_protection = UPPER_TORSO|LOWER_TORSO
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.6

/obj/item/clothing/suit/armor/grim/storage/vest/nt
	name = "corporate militarum heavy armored vest"
	desc = "A synthetic armor vest with CORPORATE SECURITY printed in red lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "ntwebvest"

/obj/item/clothing/suit/armor/grim/storage/vest/nt/warden
	name = "warden heavy armored vest"
	desc = "A synthetic armor vest with WARDEN printed in silver lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "secwebvest"

/obj/item/clothing/suit/armor/grim/storage/vest/nt/hos
	name = "commander heavy armored vest"
	desc = "A synthetic armor vest with COMMANDER printed in silver lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "secwebvest"

/obj/item/clothing/suit/armor/grim/storage/vest/pcrc
	name = "contractor heavy armored vest"
	desc = "A synthetic armor vest with PRIVATE SECURITY printed in cyan lettering on the chest. This one has added webbing and ballistic plates."
	icon_state = "pcrcwebvest"

/obj/item/clothing/suit/armor/grim/storage/vest/tactical //crack at a more balanced mid-range armor, minor improvements over standard vests, with the idea "modern" combat armor would focus on energy weapon protection.
	name = "tactical armored vest"
	desc = "A heavy armored vest in a fetching tan. It is surprisingly flexible and light, even with the extra webbing and advanced ceramic plates."
	icon_state = "tacwebvest"

/obj/item/clothing/suit/armor/grim/storage/vest/merc
	name = "heavy combat armour"
	desc = "A high-quality armored vest made from a hard synthetic material. It is surprisingly flexible and light, despite formidable armor plating."
	icon_state = "mercwebvest"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_SMALL,
		bio = ARMOR_BIO_THIRTY,
		rad = ARMOR_RAD_THIRTY,
		bomb = ARMOR_BOMB_THIRTY
		)
	body_parts_covered = ARMS|LEGS //now covers legs with new sprite
	cold_protection = UPPER_TORSO|LOWER_TORSO|LEGS
	heat_protection = UPPER_TORSO|LOWER_TORSO|LEGS

/obj/item/clothing/suit/armor/makeshift
	name = "makeshift armour"
	desc = "A pair of sheets held together by rods and wires, meant to cover your upper body and back."
	icon_state = "makeshift-armor"
	blood_overlay_type = "armor"
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_PRIMAL,
		laser = ARMOR_LASER_BASIC,
		energy = ARMOR_ENERGY_TEN,
		bio = ARMOR_BIO_THIRTY-8,
		rad = ARMOR_RAD_THIRTY-8,
		bomb = ARMOR_BOMB_TEN
		)
	slowdown_general = 0.1
	siemens_coefficient = 1.3 // This /is/ a pair of exposed metal sheets and cable coil.



//All of the armor below is mostly unused


/obj/item/clothing/suit/armor/centcomm
	name = "\improper Cent. Com. armour"
	desc = "A suit that protects against some damage."
	icon_state = "centcom"
	w_class = ITEM_SIZE_HUGE//bulky item
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	allowed = list(
		/obj/item/gun/energy,
		/obj/item/material/twohanded/ravenor,
		/obj/item/melee,
		/obj/item/handcuffs,
		/obj/item/tank/oxygen_emergency,
		/obj/item/tank/oxygen_emergency_extended,
		/obj/item/tank/nitrogen_emergency,
	)
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	cold_protection = UPPER_TORSO | LOWER_TORSO | LEGS | FEET | ARMS | HANDS
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0

/obj/item/clothing/suit/armor/heavy
	name = "heavy armour"
	desc = "A heavily armored suit that protects against moderate damage."
	icon_state = "heavy"
	w_class = ITEM_SIZE_HUGE//bulky item
	gas_transfer_coefficient = 0.90
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	siemens_coefficient = 0

/obj/item/clothing/suit/armor/tdome
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT

/obj/item/clothing/suit/armor/tdome/red
	name = "thunderdome suit (red)"
	desc = "Reddish armor."
	icon_state = "tdred"
	siemens_coefficient = 1

/obj/item/clothing/suit/armor/tdome/green
	name = "thunderdome suit (green)"
	desc = "Pukish armor."
	icon_state = "tdgreen"
	siemens_coefficient = 1
