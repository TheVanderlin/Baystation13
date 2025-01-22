/mob/living/simple_animal/hostile/human/heretic
	name = "Infardi" // Basic melee militia with a knife.
	desc = "A cult militia member of the Infardi zealots who serve the Anarch as mainline shocktroopers."
	icon = 'icons/mob/animal2.dmi'
	icon_state = "guard_wounded1"
	icon_living = "guard_wounded1"
	icon_dead = "guard_wounded1d"
	icon_gib = "syndicate_gib"
	turns_per_move = 5
	response_help = "pokes"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 2
	maxhealth = 100
	health = 100
	harm_intent_damage = 5
	natural_weapon = /obj/item/natural_weapon/punch
	can_escape = TRUE
	a_intent = I_HURT
	blocky = 30
	dodgey = 30
	var/corpse = /obj/landmark/corpse/infardi
	var/weapon1 = /obj/item/material/twohanded/ravenor/knife/trench
	var/weapon2
	unsuitable_atmos_damage = 15
	environment_smash = 1
	faction = "Chaos"
	status_flags = CANPUSH
	say_list_type = /datum/say_list/heretic
	ai_holder = /datum/ai_holder/simple_animal/humanoid/hostile/infardi
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK-2, // Almost equiv of power armor
		bullet = ARMOR_BALLISTIC_FLAK-2,
		laser = ARMOR_LASER_FLAK-2, // Almost immune to heat.
		energy = 20,
		bio = 40,
		rad = 40,
		bomb = 10,
		)

/datum/ai_holder/simple_animal/humanoid/hostile/infardi
	threaten_delay = 2 SECOND
	threaten_timeout = 300 SECONDS
	violent_breakthrough = TRUE // smashes objects in the way
	speak_chance = 5
	base_wander_delay = 4
	conserve_ammo = TRUE // Set to false for bosses
	pointblank = FALSE // Shoot in CQB?
	returns_home = FALSE // Do they go home
	max_home_distance = 10 // This is the cap for BYOND. 14
	destructive = FALSE // Will damage random structures
	intelligence_level = AI_NORMAL // Set to intelligent for bosses

/datum/say_list/heretic
	speak = list("This was never meant to be clean. You know that.",
				"I can feel everything coming apart, piece by piece.",
				"We were lied to... but now we're too deep to turn back.",
				"Equipment’s failing... like everything else.",
				"You sense it? Something’s wrong.")
	emote_see = list("rubs the back of his neck", "fidgets with his weapon", "casts a glance over his shoulder", "tightens his jaw", "stares into the distance")

	say_understood = list("Understood. Blood binds us.", "It's clear. We go.")
	say_cannot = list("Not possible.", "Can't be done.")
	say_maybe_target = list("Something stirs... I feel it.")
	say_got_target = list("Kill them! No mercy!")
	say_threaten = list("You'll bleed out soon.", "You’ve chosen death.")
	say_stand_down = list("It’s done. For now.", "Fuck it...")
	say_escalate = list("We'll drown them in misery!", "This ends now!")


	threaten_sound = 'sound/weapons/TargetOn.ogg'
	stand_down_sound = 'sound/weapons/TargetOff.ogg'

/mob/living/simple_animal/hostile/human/heretic/death(gibbed, deathmessage, show_dead_message)
	..(gibbed, deathmessage, show_dead_message)
	if(corpse)
		new corpse (src.loc)
	if(weapon1)
		new weapon1 (src.loc)
	if(weapon2)
		new weapon2 (src.loc)
	qdel(src)
	return

// Fancy pantsy human combat code

/mob/living/simple_animal/hostile/human/use_weapon(obj/item/weapon, mob/user, list/click_params)
	if (!weapon.force)
		return ..()

	// Shield check - probability of deflecting the attack
	if (prob(blocky))
		user.visible_message(
			SPAN_WARNING("\The [user] swings \a [weapon] at \the [src], but they block it with their [weapon]!"),
			SPAN_WARNING("You swing \the [weapon] at \the [src], but they block it with their [weapon]!"),
			exclude_mobs = list(src)
		)
		to_chat(src, SPAN_WARNING("\The [user] swings \a [weapon] at you, but you block it with your [weapon]!"))
		return TRUE

	// Block pain damage
	if (weapon.damtype == DAMAGE_PAIN)
		user.visible_message(
			SPAN_WARNING("\The [user] swings \a [weapon] at \the [src], but it has no effect!"),
			SPAN_WARNING("You swing \the [weapon] at \the [src], but it has no effect!"),
			exclude_mobs = list(src)
		)
		to_chat(src, SPAN_WARNING("\The [user] swings \a [weapon] at you, but it has no effect!"))
		return TRUE

	// Resolve the hit zone
	var/hit_zone = resolve_item_attack(weapon, user, user.zone_sel ? user.zone_sel.selecting : ran_zone())
	if (!hit_zone)
		return TRUE

	// Apply damage
	health -= weapon.force

	// Messages for a successful hit
	playsound(src, weapon.hitsound, 75, TRUE)
	user.visible_message(
		SPAN_WARNING("\The [user] swings \a [weapon] at \the [src]!"),
		SPAN_DANGER("You swing \the [weapon] at \the [src]!"),
		exclude_mobs = list(src)
	)
	to_chat(src, SPAN_DANGER("\The [user] swings \a [weapon] at you!"))

	return TRUE

/mob/living/simple_animal/hostile/human/heretic/bullet_act(obj/item/projectile/Proj)
	if(!Proj || Proj.nodamage)
		return
	if (status_flags & GODMODE)
		return PROJECTILE_FORCE_MISS

	// Check if the projectile can deal damage
	if (!can_damage_health(Proj.damage, Proj.damtype, Proj.damage_flags()))
		playsound(src, Proj.hitsound, 50, TRUE)
		visible_message(
			SPAN_WARNING("\The [src] is hit by a projectile, but it has no effect!"),
			SPAN_WARNING("You feel a projectile hit you, but it has no effect.")
		)
		return TRUE

	// Check if they dodge the attack
	if (prob(dodgey)) // If they succeed in dodging
		visible_message(SPAN_DANGER("\The [src] dodges \the [Proj]!"))
		return TRUE

	// Apply damage if the dodge fails
	health -= Proj.damage
	bullet_impact_visuals(Proj)

	// Messages for a successful hit
	playsound(src, Proj.hitsound, 75, TRUE)
	visible_message(
		SPAN_DANGER("\The [src] is struck by a projectile!"),
		SPAN_DANGER("You feel a projectile hit you!")
	)

	return TRUE




/mob/living/simple_animal/hostile/human/heretic/berserker
	natural_weapon = /obj/item/material/twohanded/ravenor/sword/chopper/heavy
	weapon1 = /obj/item/material/twohanded/ravenor/sword/chopper/heavy
	weapon2 = null
	status_flags = 0
	blocky = 40
	dodgey = 35
	health = 150
	maxhealth = 150

/mob/living/simple_animal/hostile/human/heretic/trooper
	min_gas = null
	max_gas = null
	minbodytemp = 0
	ranged = 1
	rapid = 1
	projectile_accuracy = -1
	projectile_dispersion = 2
	desc = "A cult militia member of the Infardi zealots who serve the Anarch as mainline shocktroopers."
	icon_state = "traitorguard2"
	icon_living = "traitorguard2"
	icon_dead = "traitorguard2_dead"
	name = "Infardi Trooper"
	projectilesound = 'sound/warhammer/guns/fire/smg_fire.ogg'
	natural_weapon = /obj/item/material/twohanded/ravenor/knife
	casingtype = /obj/item/ammo_casing/pistol/ap
	corpse = /obj/landmark/corpse/infardi/trooper
	ranged_attack_delay = 0.5 SECONDS
	speed = 0
	blocky = 25
	dodgey = 30
	weapon1 = /obj/item/gun/projectile/automatic/autogun
	projectiletype = /obj/item/projectile/bullet/pistol/ap
	health = 120
	maxhealth = 120
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK-1, // Almost equiv of power armor
		bullet = ARMOR_BALLISTIC_FLAK-1,
		laser = ARMOR_LASER_FLAK-1, // Almost immune to heat.
		energy = 20,
		bio = 50,
		rad = 100,
		bomb = 10,
		)

/mob/living/simple_animal/hostile/human/heretic/trooper/Process_Spacemove()
	return 1

/mob/living/simple_animal/hostile/human/heretic/bloodpact
	ranged = 1
	rapid = 1
	projectile_accuracy = 0
	projectile_dispersion = 1
	name = "Bloodpact Soldier"
	desc = "A cult militia soldier of the Blood Pact, serving the Archon as disciplined shock troops in the front lines of Chaos assaults."
	icon_state = "merc_standart"
	icon_living = "merc_standart"
	icon_dead = "merc_standartd"
	casingtype = /obj/item/ammo_casing/autogun
	ranged_attack_delay = 0.4 SECONDS
	corpse = /obj/landmark/corpse/bloodpact
	projectilesound = 'sound/warhammer/guns/fire/smg_fire.ogg'
	natural_weapon = /obj/item/material/twohanded/ravenor/knife/trench
	weapon1 = /obj/item/gun/projectile/automatic/autogun/valhalla
	projectiletype = /obj/item/projectile/bullet/rifle
	min_gas = null
	max_gas = null
	minbodytemp = 0
	speed = 0
	blocky = 25
	dodgey = 35
	health = 130
	maxhealth = 130
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK, // Almost equiv of power armor
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK, // Almost immune to heat.
		energy = 30,
		bio = 60,
		rad = 100,
		bomb = 15,
		)

/mob/living/simple_animal/hostile/human/heretic/bloodpact/Process_Spacemove()
	return 1

/mob/living/simple_animal/hostile/human/heretic/bloodpact/commando
	icon_state = "merc_leader"
	icon_living = "merc_leader"
	icon_dead = "merc_leaderd"
	name = "Bloodpact Commando"
	projectile_accuracy = 0
	projectile_dispersion = 0
	ranged_attack_delay = 0.35 SECONDS // Heavier round. Beats carapace.
	projectilesound = 'sound/warhammer/gunshot/auto2.ogg'
	corpse = /obj/landmark/corpse/bloodpact/commando
	casingtype = /obj/item/ammo_casing/autogun/militarum/ap
	weapon1 = /obj/item/gun/projectile/automatic/autogun/stubber
	projectiletype = /obj/item/projectile/bullet/rifle/heavy/ap
	natural_weapon = /obj/item/material/twohanded/ravenor/knife/bowie
	blocky = 33
	dodgey = 37
	health = 150
	maxhealth = 150
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK+2, // Almost equiv of power armor
		bullet = ARMOR_BALLISTIC_FLAK+3,
		laser = ARMOR_LASER_FLAK+3, // Almost immune to heat.
		energy = 30,
		bio = 60,
		rad = 100,
		bomb = 15,
		)

/mob/living/simple_animal/hostile/viscerator
	name = "viscerator"
	desc = "A small, twin-bladed machine capable of inflicting very deadly lacerations."
	icon = 'icons/mob/simple_animal/critter.dmi'
	icon_state = "viscerator_attack"
	icon_living = "viscerator_attack"
	pass_flags = PASS_FLAG_TABLE
	health = 15
	maxhealth = 15
	natural_weapon = /obj/item/natural_weapon/rotating_blade
	faction = "syndicate"
	min_gas = null
	max_gas = null
	minbodytemp = 0

	meat_type =     null
	meat_amount =   0
	bone_material = null
	bone_amount =   0
	skin_material = null
	skin_amount =   0
/obj/item/natural_weapon/rotating_blade
	name = "rotating blades"
	attack_verb = list("sliced", "cut")
	hitsound = 'sound/weapons/bladeslice.ogg'
	force = 15
	edge = 1
	sharp = 1

/mob/living/simple_animal/hostile/viscerator/death(gibbed, deathmessage, show_dead_message)
	..(null,"is smashed into pieces!", show_dead_message)
	qdel(src)

/mob/living/simple_animal/hostile/viscerator/hive
	faction = "hivebot"
