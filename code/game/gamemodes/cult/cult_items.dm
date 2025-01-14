/obj/item/melee/cultblade
	name = "cult blade"
	desc = "An arcane weapon wielded by the followers of the Sovereign."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	icon_state = "cultblade"
	item_state = "cultblade"
	edge = TRUE
	sharp = TRUE
	w_class = ITEM_SIZE_LARGE
	force = 36
	throwforce = 10
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("attacked", "slashed", "stabbed", "sliced", "tore", "ripped", "diced", "cut")

/obj/item/melee/cultblade/use_before(mob/living/M, mob/living/user)
	. = FALSE
	if (iscultist(user))
		return FALSE

	var/zone = (user.hand ? BP_L_ARM : BP_R_ARM)
	var/obj/item/organ/external/affecting = null
	if(ishuman(user))
		var/mob/living/carbon/human/H = user
		affecting = H.get_organ(zone)

	if(affecting)
		to_chat(user, SPAN_DANGER("An unexplicable force rips through your [affecting.name], tearing the sword from your grasp!"))
	else
		to_chat(user, SPAN_DANGER("An unexplicable force rips through you, tearing the sword from your grasp!"))

	//random amount of damage between half of the blade's force and the full force of the blade.
	user.apply_damage(rand(force/2, force), DAMAGE_BRUTE, zone, (DAMAGE_FLAG_SHARP | DAMAGE_FLAG_EDGE), armor_pen = 100)
	user.Weaken(5)

	if(user.unEquip(src))
		throw_at(get_edge_target_turf(src, pick(GLOB.alldirs)), rand(1,3), throw_speed)

	var/spooky = pick('sound/hallucinations/growl1.ogg', 'sound/hallucinations/growl2.ogg', 'sound/hallucinations/growl3.ogg', 'sound/hallucinations/wail.ogg')
	playsound(loc, spooky, 50, 1)
	return TRUE

/obj/item/melee/cultblade/pickup(mob/living/user as mob)
	if (!iscultist(user))
		to_chat(user, SPAN_WARNING("An overwhelming feeling of dread comes over you as you pick up the cultist's sword. It would be wise to be rid of this blade quickly."))
		user.make_dizzy(120)


/obj/item/clothing/head/culthood
	name = "cult hood"
	icon_state = "culthood"
	desc = "A hood worn by the followers of the Sovereign."
	flags_inv = HIDEFACE
	body_parts_covered = HEAD
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_PRIMAL
	)
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_HELMET_MIN_COLD_PROTECTION_TEMPERATURE
	siemens_coefficient = 0.8 //That's a pretty cool opening in the hood. Also: Cloth making physical contact to the skull.

/obj/item/clothing/head/culthood/magus
	name = "magus helm"
	icon_state = "magus"
	desc = "A helm worn by the followers of the Sovereign."
	flags_inv = HIDEFACE | BLOCKHAIR
	body_parts_covered = HEAD|FACE|EYES
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_RESISTANT
	)

/obj/item/clothing/head/culthood/alt
	icon_state = "cult_hoodalt"

/obj/item/clothing/suit/cultrobes
	name = "cult robes"
	desc = "A set of durable robes worn by the followers of the Sovereign."
	icon_state = "cultrobes"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS
	allowed = list(/obj/item/book/tome,/obj/item/melee/cultblade)
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_PRIMAL,
		energy = ARMOR_ENERGY_SMALL,
		bomb = ARMOR_BOMB_THIRTY
	)
	flags_inv = HIDEJUMPSUIT
	siemens_coefficient = 0.6

/obj/item/clothing/suit/cultrobes/alt
	icon_state = "cultrobesalt"

/obj/item/clothing/suit/cultrobes/magusred
	name = "magus robes"
	desc = "A set of plated robes worn by the followers of the Sovereign."
	icon_state = "magusred"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|FEET|ARMS|HANDS
	flags_inv = HIDEGLOVES|HIDESHOES|HIDEJUMPSUIT
	armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_RESISTANT,
		bomb = ARMOR_BOMB_THIRTY
	)

/obj/item/clothing/head/helmet/space/cult
	name = "cult helmet"
	desc = "A space worthy helmet used by the followers of the Sovereign."
	icon_state = "cult_helmet"
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_THIRTY
	) //Real tanky shit.
	siemens_coefficient = 0.3 //Bone is not very conducive to electricity.

/obj/item/clothing/suit/space/cult
	name = "cult armour"
	icon_state = "cult_armour"
	desc = "A bulky suit of armour, bristling with spikes. It looks space proof."
	allowed = list(/obj/item/book/tome,/obj/item/melee/cultblade,/obj/item/tank,/obj/item/device/suit_cooling_unit)
	armor = list(
		melee = ARMOR_MELEE_PRIMAL,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = ARMOR_ENERGY_TEN,
		bomb = ARMOR_BOMB_THIRTY,
		bio = ARMOR_BIO_SHIELDED,
		rad = ARMOR_RAD_THIRTY
	)
	siemens_coefficient = 0.2
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HANDS
