/mob/living/simple_animal/hostile/daemon
	name = "daemon thing"
	desc = "A disgusting horror of the warp." // Fast moving daemon. Deadly in large mobs, especially against unarmored humans.
	icon = 'icons/mob/Demon.dmi' // Make sure to set this to the icon of whatever new mob you add.
	icon_state = "demon"
	icon_living = "demon"
	icon_dead = "demon_dead"
	speak_emote = list("twitches.")
	turns_per_move = 5 // Don't change. Also doesn't seem to do anything unless you set it(like under vagrant)
	see_in_dark = 7 // Not smart.
	response_help  = "caresses"
	response_disarm = "shoves"
	response_harm   = "mauls"
	maxhealth = 150
	health = 150
	movement_cooldown = 2
	natural_weapon = /obj/item/natural_weapon/daemon
	heat_damage_per_tick = 2
	cold_damage_per_tick = 0
	faction = "Demon"
	pass_flags = PASS_FLAG_TABLE // go over table
	move_to_delay = 3
	speed = 2 // Lower is better
	bleed_colour = "#380606"
	break_stuff_probability = 20
	pry_time = 10 SECONDS
	pry_desc = "clawing"
	minbodytemp = 0
	min_gas = null
	max_gas = null
	meat_type = null // need to meat this boy UP. Also make it have poison in it.
	meat_amount = 5
	bone_amount = 10
	skin_amount = 5
	bone_material = MATERIAL_BONE_GENERIC
	skin_material = MATERIAL_SKIN_CHITIN
	minbodytemp = 0
	maxbodytemp = 800
	dodgey = 15
	blocky = 10
	deathsound = null // Give a sound boi
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK+2,
		laser = ARMOR_LASER_CARAPACE,
		energy = 35,
		bio = 100,
		rad = 100,
		bomb = 25,
		)

	ai_holder = /datum/ai_holder/simple_animal/melee/daemon // /datum/ai_holder/simple_animal/melee/evasive Use evasive and maybe more complex AI for certain types of daemons.
	say_list = /datum/say_list/daemon

/datum/say_list/daemon
	emote_hear = list("roars!", "groans..")
	emote_see = list("snaps it's head..", "twitches", "stops suddenly") // Swarm enemies don't get sounds to avoid too much fuckery

/datum/ai_holder/simple_animal/melee/daemon
	violent_breakthrough = TRUE // smashes objects in the way
	speak_chance = 5
	base_wander_delay = 3
	conserve_ammo = TRUE // Set to false for bosses
	// pointblank = FALSE daemons that shoot projectiles maybe?
	returns_home = FALSE // Do they go home
	max_home_distance = 10 // This is the cap for BYOND. 14
	destructive = TRUE
	intelligence_level = AI_NORMAL

/obj/item/natural_weapon/daemon
	force = 35
	armor_penetration = 6
	sharp = TRUE
	edge = TRUE
	attack_cooldown = 2 SECONDS
	attack_verb = list("mauled", "bitten")

// Fancy pantsy simple animal hostile code
/mob/living/simple_animal/hostile/use_weapon(obj/item/weapon, mob/user, list/click_params)
	if (!weapon.force)
		return ..()

	// Shield check - probability of deflecting the attack
	if (prob(blocky))
		user.visible_message(
			SPAN_WARNING("\The [user] swings \a [weapon] at \the [src], but they deflect it!"),
			SPAN_WARNING("You swing \the [weapon] at \the [src], but they deflect it!"),
			exclude_mobs = list(src)
		)
		to_chat(src, SPAN_WARNING("\The [user] swings \a [weapon] at you, but you deflect it!"))
		return TRUE

	// Check if the weapon can deal damage
	if (!can_damage_health(weapon.force, weapon.damtype, weapon.damage_flags()))
		playsound(src, weapon.hitsound, 50, TRUE)
		user.visible_message(
			SPAN_WARNING("\The [user] hits \the [src] [weapon], but it bounces off!"),
			SPAN_WARNING("You hit \the [src] [weapon], but it bounces off!"),
			exclude_mobs = list(src)
		)
		show_message(
			SPAN_WARNING("\The [user] hits you [weapon], but it bounces off!"),
			VISIBLE_MESSAGE,
			SPAN_WARNING("You felt something bounce off you harmlessly.")
		)
		return TRUE

	// Resolve the hit zone
	var/hit_zone = resolve_item_attack(weapon, user, user.zone_sel ? user.zone_sel.selecting : ran_zone())
	if (!hit_zone)
		return TRUE

	// Apply damage
	var/damage = weapon.force
	// Adjust damage based on type
	if (weapon.damtype == DAMAGE_STUN)
		damage /= 6
	if (weapon.damtype == DAMAGE_BRUTE)
		damage /= 2
	if (weapon.damtype == DAMAGE_BURN)
		damage /= 1.5

	health -= damage

	// Messages for a successful hit
	playsound(src, weapon.hitsound, 75, TRUE)
	user.visible_message(
		SPAN_DANGER("\The [user] swings \a [weapon] at \the [src]!"),
		SPAN_DANGER("You swing \the [weapon] at \the [src]!"),
		exclude_mobs = list(src)
	)
	to_chat(src, SPAN_DANGER("\The [user] swings \a [weapon] at you!"))

	return TRUE


/mob/living/simple_animal/hostile/bullet_act(obj/item/projectile/Proj)
	if(!Proj || Proj.nodamage)
		return
	if (status_flags & GODMODE)
		return PROJECTILE_FORCE_MISS

	var/damage = Proj.damage

	// Adjust damage based on type
	if (Proj.damtype == DAMAGE_STUN)
		damage = Proj.damage / 6
	if (Proj.damtype == DAMAGE_BRUTE)
		damage = Proj.damage / 2
	if (Proj.damtype == DAMAGE_BURN)
		damage = Proj.damage / 1.5

	// Handle agony effects
	if(Proj.agony)
		damage += Proj.agony / 6
		if(health < Proj.agony * 3)
			Paralyse(Proj.agony / 20)
			visible_message(SPAN_WARNING("[src] is stunned momentarily!"))

	// Check dodge
	if(!prob(dodgey)) // If they fail dodge, apply damage
		src.health -= damage
		bullet_impact_visuals(Proj)
	else
		visible_message(SPAN_DANGER("The [src] dodges the [Proj]!"))

	// React to attack if AI is present and projectile has a firer
	if (ai_holder && Proj.firer)
		ai_holder.react_to_attack(Proj.firer)

	Proj.on_hit(src)

	return 0

/mob/living/simple_animal/hostile/daemon/zygote
	name = "daemon blob"
	desc = "A disgusting horror of the warp." // Slow moving zygote, can resist lots of damage and defeat strong armor.
	icon = 'icons/mob/animal2.dmi'
	icon_state = "floater"
	icon_living = "floater"
	icon_dead = "floater2"
	speak_emote = list("twitches.")
	see_in_dark = 5 // Zygotes aren't too bright.
	response_help  = "caresses"
	response_disarm = "shoves"
	response_harm   = "mauls"
	maxhealth = 200
	health = 200
	movement_cooldown = 4
	natural_weapon = /obj/item/natural_weapon/daemon/zygote
	heat_damage_per_tick = 1
	cold_damage_per_tick = 0
	faction = "Demon"
	pass_flags = PASS_FLAG_TABLE | PASS_FLAG_GRILLE // gelatinous
	move_to_delay = 4
	speed = 1
	bleed_colour = "#3e5c06"
	break_stuff_probability = 15
	pry_time = 8 SECONDS
	pry_desc = "squishing"
	say_list = /datum/say_list/daemon/zygote
	maxbodytemp = 2000 // equiv of a hardsuit alm
	dodgey = 5 // stoopid
	blocky = 5
	natural_armor = list(
		melee = ARMOR_MELEE_CARAPACE+1, // Almost equiv of power armor
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_POWER_ARMOUR, // Almost immune to heat.
		energy = 40,
		bio = 100,
		rad = 100,
		bomb = 20,
		)

/obj/item/natural_weapon/daemon/zygote
	force = 35
	armor_penetration = 33 // Las AP is diff to melee.
	sharp = TRUE
	edge = TRUE
	attack_cooldown = 3 SECONDS
	damtype = DAMAGE_BURN
	attack_verb = list("melted", "scorched")

/datum/say_list/daemon/zygote
	emote_hear = list("squishes excitedly", "gwibbles...")
	emote_see = list("wobbles violently...", "farts loudly", "stops squibbling") // No sound for zygotes since swarm type enemy

/mob/living/simple_animal/hostile/daemon/hulk
	name = "daemonic hulk"
	desc = "This violent bubbling hulk of flesh and meat crawls toward you." // Hulk similar to Zygotes are slow and more deadly in caves/dungeons.
	icon = 'icons/mob/animal2.dmi'
	icon_state = "oormat"
	icon_living = "oormat"
	icon_dead = "oormat2"
	speak_emote = list("twitches.")
	see_in_dark = 7
	response_help  = "splooges"
	response_disarm = "slams"
	response_harm   = "eviscerates"
	maxhealth = 700
	health = 700
	movement_cooldown = 6 // he fat
	natural_weapon = /obj/item/natural_weapon/daemon/hulk
	heat_damage_per_tick = 2
	cold_damage_per_tick = 0
	faction = "Demon"
	pass_flags = 0
	move_to_delay = 3
	speed = 2
	bleed_colour = "#3f2b06"
	break_stuff_probability = 25
	pry_time = 2 SECONDS
	pry_desc = "tearing"
	say_list = /datum/say_list/daemon/hulk
	maxbodytemp = 1000
	dodgey = 2
	blocky = 5
	natural_armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = 40,
		bio = 100,
		rad = 100,
		bomb = 25,
		)

/obj/item/natural_weapon/daemon/hulk
	force = 55
	armor_penetration = 8 // Hits harder, penetrates all armor and faster attack then zygote.
	sharp = TRUE
	edge = TRUE
	attack_cooldown = 2 SECONDS
	attack_verb = list("crushed", "ripped")

/datum/say_list/daemon/hulk
	emote_hear = list("roars", "retches")
	emote_see = list("charges!", "prepares it's mass...")
	emotesee_sound = 'sound/effects/quotes/cults/demon/demon_spawn_alert.ogg'

/mob/living/simple_animal/hostile/daemon/champion
	name = "daemonic thing" // Originally champion. Now a generic daemon so it can be used for things non khornate
	desc = "This thing is beyond you. RUN!"
	icon = 'icons/mob/animal2.dmi'
	icon_state = "khorne_daemon"
	icon_living = "khorne_daemon"
	icon_dead = "khorne_daemon_dead_anim"
	speak_emote = list("twitches.")
	see_in_dark = 7
	response_help  = "splooges"
	response_disarm = "slams"
	response_harm   = "eviscerates"
	maxhealth = 500 // Not a hulk. But so much more deadly.
	health = 500
	movement_cooldown = 2
	natural_weapon = /obj/item/natural_weapon/daemon/champion
	heat_damage_per_tick = 2
	cold_damage_per_tick = 0
	faction = "Demon"
	pass_flags = 0
	move_to_delay = 3
	speed = 4 // Fast as fuk
	bleed_colour = "#3f2b06"
	break_stuff_probability = 10
	pry_time = 2 SECONDS
	pry_desc = "tearing"
	say_list = /datum/say_list/daemon/champion
	maxbodytemp = 1200
	dodgey = 35 // Stronk
	blocky = 25
	natural_armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE+2,
		laser = ARMOR_LASER_CARAPACE+2,
		energy = 40,
		bio = 100,
		rad = 100,
		bomb = 25,
		)
	ai_holder = /datum/ai_holder/simple_animal/melee/champion

/datum/ai_holder/simple_animal/melee/champion
	violent_breakthrough = TRUE // smashes objects in the way
	speak_chance = 5
	base_wander_delay = 2
	returns_home = FALSE // Do they go home
	max_home_distance = 10 // This is the cap for BYOND. 14
	destructive = TRUE
	intelligence_level = AI_NORMAL

/datum/ai_holder/simple_animal/melee/champion/post_melee_attack(atom/A)
	if(holder.Adjacent(A) && prob(15)) // champions attempt to dodge 15 percent of the time
		holder.IMove(get_step(holder, pick(GLOB.alldirs)))
		holder.face_atom(A)

/obj/item/natural_weapon/daemon/champion
	force = 45
	armor_penetration = 7 // Weaker then a hulk but twice as fast.
	sharp = TRUE
	edge = TRUE
	attack_cooldown = 1 SECONDS
	attack_verb = list("torn", "slashed")

/datum/say_list/daemon/champion
	emote_hear = list("roars!", "bellows!")
	emote_see = list("charges!")
	emotesee_sound = 'sound/effects/quotes/cults/demon/demon_spawn3.ogg'

/mob/living/simple_animal/hostile/daemon/zygote/worm
	name = "daemonic worm"
	desc = "This disgusting worm-thing is coming for you!"
	icon_state = "loge"
	icon_living = "loge"
	icon_dead = "loge2"
	see_in_dark = 6
	maxhealth = 255
	health = 255
	movement_cooldown = 4
	move_to_delay = 3
	speed = 4
	bleed_colour = "#2f4b4b"
	dodgey = 20 // silly worm
	blocky = 10
	pass_flags = PASS_FLAG_TABLE

/mob/living/simple_animal/hostile/daemon/large
	name = "daemonic beast"
	desc = "This disgusting thing is coming for you!"
	icon = 'icons/mob/Demon.dmi'
	icon_state = "goliath"
	icon_living = "goliath"
	icon_dead = "goliath_dead"
	see_in_dark = 7
	maxhealth = 255
	health = 255
	movement_cooldown = 4
	move_to_delay = 2
	speed = 3
	bleed_colour = "#4b3c2f"
	dodgey = 12
	blocky = 12
	pass_flags = 0

/mob/living/simple_animal/hostile/daemon/large/do_special_attack(atom/A)
	set waitfor = FALSE
	set_AI_busy(TRUE)

	do_windup_animation(A, 1 SECOND)
	sleep(1 SECOND) // For the telegraphing.

	// Do the actual leap.
	status_flags |= LEAPING // Lets us pass over everything.
	visible_message(SPAN_DANGER("\The [src] leaps at \the [A]!"))
	throw_at(get_step(get_turf(A), get_turf(src)), special_attack_max_range+1, 1, src)
	var/leap_sound = 'sound/weapons/spiderlunge.ogg'
	playsound(src, leap_sound, 75, 1)

	sleep(5) // For the throw to complete. It won't hold up the AI ticker due to waitfor being false.

	if(status_flags & LEAPING)
		status_flags &= ~LEAPING // Revert special passage ability.

	var/turf/T = get_turf(src) // Where we landed. This might be different than A's turf.

	. = FALSE

	// Now for the stun.
	var/mob/living/victim = null
	for(var/mob/living/L in T) // So player-controlled spiders only need to click the tile to stun them.
		if(L == src)
			continue

		if(ishuman(L))
			var/mob/living/carbon/human/H = L
			if(H.check_shields(damage = 0, damage_source = src, attacker = src, def_zone = null, attack_text = "the leap"))
				continue // We were blocked.

		victim = L
		break
	if (victim.skill_check(SKILL_COMBAT, SKILL_MASTER))
		visible_message(SPAN_DANGER("\The [victim] knocks the [src] to the ground!"))
		set_AI_busy(FALSE)
		return
	if(victim)
		victim.Weaken(rand(0,2))
		victim.visible_message(SPAN_DANGER("\The [src] pounces on \the [victim]!"))
		to_chat(victim, SPAN_CLASS("critical", "\The [src] pounces on you!"))
		. = TRUE

	set_AI_busy(FALSE)

/mob/living/simple_animal/hostile/daemon/minion
	name = "???"
	desc = "A vile banana thing of the warp."
	icon = 'icons/mob/Demon.dmi'
	icon_state = "minion_1"
	icon_living = "minion_1"
	icon_dead = "goliath_dead"
	see_in_dark = 8
	maxhealth = 255
	health = 255
	movement_cooldown = 3
	move_to_delay = 2
	speed = 2.5
	bleed_colour = "#dfe764"
	dodgey = 25
	blocky = 15
	pass_flags = 0

/mob/living/simple_animal/hostile/daemon/headcrab
	name = "daemonic parasite"
	desc = "A disgusting flesh creature formed out of flesh vines that have occupied a human head..."
	icon = 'icons/map_project/port/components_large.dmi'
	icon_state = "head"
	icon_living = "head"
	icon_dead = "head_dead_2"
	see_in_dark = 8
	maxhealth = 70
	health = 70
	movement_cooldown = 3
	move_to_delay = 2
	speed = 2.5
	dodgey = 35
	blocky = 0
	pass_flags = PASS_FLAG_TABLE
	natural_weapon = /obj/item/natural_weapon/daemon/infestor
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = 25,
		bio = 100,
		rad = 100,
		bomb = 15,
		)

/obj/item/natural_weapon/daemon/infestor
	force = 25
	armor_penetration = 5
	sharp = TRUE
	edge = TRUE
	attack_cooldown = 3 SECONDS
	attack_verb = list("mauled", "bitten")

/mob/living/simple_animal/hostile/daemon/headcrab/do_special_attack(atom/A)
	set waitfor = FALSE
	set_AI_busy(TRUE)

	// Leap telegraphing
	do_windup_animation(A, 1 SECOND)
	sleep(1 SECOND)

	// Execute the leap
	status_flags |= LEAPING
	visible_message(SPAN_DANGER("\The [src] leaps at \the [A]!"))
	throw_at(get_step(get_turf(A), get_turf(src)), special_attack_max_range+1, 1, src)
	var/leap_sound = 'sound/weapons/spiderlunge.ogg'
	playsound(src, leap_sound, 75, 1)
	sleep(5)

	if (status_flags & LEAPING)
		status_flags &= ~LEAPING

	var/turf/T = get_turf(src)
	. = FALSE

	// Attempt attack on landing
	var/mob/living/carbon/human/victim = null
	for (var/mob/living/carbon/human/L in T)
		if (L == src)
			continue
		if (ishuman(L))
			var/mob/living/carbon/human/H = L
			if (H.check_shields(damage = 0, damage_source = src, attacker = src, def_zone = null, attack_text = "the leap"))
				continue // Shield blocked the leap.

			victim = L
			break

	if (victim)
		. = TRUE
		victim.Weaken(rand(0,2))
		victim.visible_message(SPAN_DANGER("\The [src] pounces on \the [victim]!"))
		to_chat(victim, SPAN_CLASS("critical", "\The [src] pounces on you!"))

		// Infection sequence
		visible_message(SPAN_DANGER("\The [src] hunkers down over \the [victim], tearing into their flesh."))
		playsound(loc, 'sound/effects/bonebreak3.ogg', 20, 1)

		victim.adjustHalLoss(25)
		if (do_after(src, 5 SECONDS, victim, DO_DEFAULT | DO_USER_UNIQUE_ACT, INCAPACITATION_KNOCKOUT))
			admin_attack_log(src, victim, "Consumed their victim.", "Was consumed.", "consumed")

			if (!victim.lying && victim.stat != DEAD)
				return
			if (victim.skill_check(SKILL_COMBAT, SKILL_MASTER))
				visible_message(SPAN_DANGER("\The [victim] knocks the [src] to the ground!"))
				return
			victim.reagents.add_reagent(/datum/reagent/zombie, 35) // Ensure infection
			if (victim.getBruteLoss() > victim.maxhealth * 1.5)
				to_chat(src, SPAN_WARNING("You've scraped \the [victim]'s brain down to the bones already!"))
				if (victim.stat != DEAD)
					victim.zombify()
				else if (!(MUTATION_SKELETON in victim.mutations))
					if (istype(victim, /mob/living/carbon/human/monkey))
						victim.gib()
					else
						for (var/obj/item/clothing/clothing in victim.contents)
							if (!istype(clothing, /obj/item/clothing/under) && !istype(clothing, /obj/item/clothing/suit))
								victim.remove_from_mob(clothing)
						victim.ChangeToSkeleton()
						victim.adjustBruteLoss(500)
					to_chat(src, SPAN_DANGER("You shred and rip apart \the [victim]'s brains!"))
					playsound(loc, 'sound/effects/splat.ogg', 40, 1)
				return

			to_chat(victim, SPAN_DANGER("\The [src] scrapes your brain from your skull!"))
			to_chat(src, SPAN_DANGER("You feed hungrily off \the [victim]'s brains."))
			visible_message(SPAN_DANGER("\The [src] feeds hungrily off \the [victim]'s brains!"))

			if (victim.is_zombie())
				return

			victim.adjustHalLoss(25)
			victim.apply_damage(rand(50, 60), DAMAGE_BRUTE, BP_CHEST)
			victim.adjustBruteLoss(20)
			victim.update_surgery()

			victim.adjust_nutrition(40)
			victim.adjustToxLoss(-20)

			playsound(loc, 'sound/effects/splat.ogg', 20, 1)
			new /obj/decal/cleanable/blood/splatter(get_turf(src), victim.species.blood_color)
			if (victim.getBruteLoss() > victim.maxhealth * 0.75 && prob(50))
				gibs(get_turf(src), victim.dna)
				visible_message(SPAN_DANGER("\The [src] tears out \the [victim]'s brain!"))

			// Die after completing the full feeding sequence
			src.health -= 100
		else
			visible_message(SPAN_WARNING("\The [src] leaves their meal for later."))
			// If the attack is interrupted or abandoned, the creature will not die.

	set_AI_busy(FALSE)


/mob/living/simple_animal/hostile/daemon/headcrab/infestor
	name = "daemonic infestor"
	desc = "A disgusting motherly creature with long tentacles protruding from it's mating hole."
	icon = 'icons/map_project/port/components_large.dmi'
	icon_state = "example"
	icon_living = "example"
	icon_dead = "torso_lying_2"
	see_in_dark = 8
	maxhealth = 155
	health = 155
	movement_cooldown = 3
	move_to_delay = 2
	speed = 3
	dodgey = 10
	blocky = 15
	pass_flags = null
	natural_weapon = /obj/item/natural_weapon/daemon
	natural_armor = list(
		melee = ARMOR_MELEE_FLAK,
		bullet = ARMOR_BALLISTIC_FLAK,
		laser = ARMOR_LASER_FLAK,
		energy = 25,
		bio = 100,
		rad = 100,
		bomb = 15,
		)
/*



/mob/living/simple_animal/hostile/flesh/stalker
	name = "Lurker"
	desc = "A young hunter-killer bioform xenos with a carapace-like armor structure over it's body, it seems to be a broodling."
	icon = 'icons/map_project/port/components_large.dmi'
	speak_chance = 0
	icon_state = "liz1"
	icon_living = "liz1"
	icon_dead = "bodylying"
	health = 315
	maxhealth = 315
	melee_damage_lower = 25
	melee_damage_upper = 40
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speed = 1.5
	faction = "Demon"

/mob/living/simple_animal/hostile/flesh/stalker2
	name = "Lurker"
	desc = "An old hunter-killer bioform xenos with a carapace-like armor structure over it's body."
	icon = 'icons/map_project/port/components_large.dmi'
	speak_chance = 0
	icon_state = "liz2"
	icon_living = "liz2"
	icon_dead = "torso_lying1"
	health = 365
	maxhealth = 365
	melee_damage_lower = 30
	melee_damage_upper = 45
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speed = 1.5
	faction = "Demon"

/mob/living/simple_animal/hostile/flesh/abomination/tzee
	name = "Abomination"
	desc = "A disgusting flesh creature formed out of flesh vines that have occupied a human corpse..."
	icon = 'icons/map_project/port/components_large.dmi'
	speak_chance = 0
	icon_state = "preview"
	icon_living = "preview"
	icon_dead = "torso_lying_2"
	health = 225
	maxhealth = 225
	melee_damage_lower = 19
	melee_damage_upper = 29
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speed = 1.7
	faction = "Chaos"

/mob/living/simple_animal/hostile/flesh/abomination/tzee/Initialize()
	. =..()
	if(prob(40))
		explosion(src.loc, -1, 2, 3, 4)
	else
		return


/mob/living/simple_animal/hostile/flesh/abomination
	name = "Abomination"
	desc = "A disgusting flesh creature formed out of flesh vines that have occupied a human corpse..."
	icon = 'icons/map_project/port/components_large.dmi'
	speak_chance = 0
	icon_state = "preview"
	icon_living = "preview"
	icon_dead = "torso_lying_2"
	health = 315
	maxhealth = 315
	melee_damage_lower = 19
	melee_damage_upper = 29
	attacktext = "bites"
	attack_sound = 'sound/weapons/bite.ogg'
	speed = 1.7
	faction = "Demon"

/mob/living/simple_animal/hostile/flesh/advanced
	name = "Guardian"
	desc = "A disgusting flesh creature formed out of many corpses  sewn together with living flesh vines..."
	icon = 'icons/map_project/port/components_large.dmi'
	icon_state = "brute-d"
	icon_living = "brute-d"
	icon_dead = "brute-d-dead"
	maxhealth = 1201
	health = 1201
	universal_speak = 1
	speak_emote = list("harks")
	emote_hear = list("growls")
	response_help  = "gnashes"
	response_disarm = "shoves"
	response_harm   = "mauls"
	melee_damage_lower = 45 // This only effects if controlled by a player.
	melee_damage_upper = 75
	attacktext = "claws"
	maxbodytemp = 1000
	see_in_dark = 8
	wander = 1
	turns_per_move = 25

	speed = 1.6 // Higher number means slower.

	min_gas = null
	max_gas = null
	minbodytemp = 0
	faction = "Demon"



/mob/living/simple_animal/hostile/smalldemon/plague
	name = "Plague Zombie"
	real_name = "Plague Zombie"
	desc = "This shambling cadaver scatters toward you."
	faction = "Chaos"
	icon = 'icons/mob/Demon.dmi'
	icon_state = "plague"
	icon_living = "plague"
	icon_dead = "plague_dead"
	maxhealth = 500
	health = 500
	speak_emote = list("harks")
	emote_hear = list("growls")
	response_help  = "gnashes"
	response_disarm = "shoves"
	response_harm   = "mauls"
	attacktext = "bites"
	faction = "Chaos"
	see_in_dark = 6

	speed = 1.6

/mob/living/simple_animal/hostile/nurgling
	name = "nurgling"
	desc = "A small, flabby, impish lesser daemon of Nurgle. It stares at you with a wide grin."
	icon = 'icons/mob/animal2.dmi'
	throw_range = 600
	icon_state = "stinky"
	icon_living = "stinky"
	icon_dead = "stinky_dead"
	pass_flags = PASS_FLAG_TABLE
	speak = list("Hihihihihi", "Hreee!", "Teehee!")
	speak_emote = list("giggles", "laughs", "sneers")
	emote_hear = list("giggles", "smirks", "yaps", "squeals")
	emote_see = list("jumps around!", "picks its nose", "claps")
	speak_chance = 75
	turns_per_move = 25
	speed = 5
	maxhealth = 450
	health = 450
	response_help  = "pats"
	response_disarm = "kicks aside"
	response_harm   = "stomps"
	see_in_dark = 5
	possession_candidate = 1
	holder_type = /obj/item/holder
	mob_size = 1
	density = 0

	var/death_msg = "lets out a waning screech, bursting into a mess of entrails."

	harm_intent_damage = 35
	melee_damage_lower = 30
	melee_damage_upper = 40
	attacktext = "slashed"
	attack_sound = 'sound/weapons/bite.ogg'

	faction = "Chaos"

/mob/living/simple_animal/hostile/retaliate/nurgling/FindTarget()
	. = ..()
	if(.)
		visible_emote("hisses angrily at [.]!")

/mob/living/simple_animal/hostile/retaliate/nurgling/AttackingTarget()
	. =..()
	var/mob/living/L = .
	if(istype(L))
		if(prob(1))
			L.Weaken(1)
			L.visible_message("<span class='danger'>\the [src] knocks down \the [L]!</span>")

/mob/living/simple_animal/hostile/shadow
	name = "Warping Shadow"
	desc = "What used to be human once has been turned into some sort of warping abomination, you cannot even tell if it's looking at you or preparing to attack."
	icon = 'icons/map_project/creatures.dmi'
	icon_state = "shadow"
	icon_living = "shadow"
	icon_dead = "shadow_dead"
	speak_chance = 0
	turns_per_move = 25
	response_help = "passes through"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1
	maxhealth = 320
	health = 320
	faction = "Demon"

	harm_intent_damage = 20
	melee_damage_lower = 25
	melee_damage_upper = 45
	attacktext = "slashes"
	attack_sound = 'sound/hallucinations/growl1.ogg'


/mob/living/simple_animal/hostile/shadow/subject_22 // Xeno Research Area
	desc = "Increased use of Obscura alongside other chemicals turned the heretical pilgrim into this, further study required once hostility lowers to an acceptable level."

/mob/living/simple_animal/hostile/undead
	name = "Reanimated Corpse"
	desc = "A reanimated corpse, despite the major injuries it still seems alive and craving for flesh."
	icon = 'icons/map_project/creatures.dmi'
	icon_state = "zombie"
	icon_living = "zombie"
	icon_dead = "zombie_dead"
	speak_chance = 0
	turns_per_move = 25
	response_help = "passes through"
	response_disarm = "shoves"
	response_harm = "hits"
	speed = 1.5
	maxhealth = 285
	health = 285
	faction = "Demon"

	harm_intent_damage = 30
	melee_damage_lower = 35
	melee_damage_upper = 35
	attacktext = "bites"
	attack_sound = 'sound/hallucinations/growl1.ogg'


/mob/living/simple_animal/hostile/undead/subject_11 // Xeno Research Area
	desc = "Subject was brought to Elipharius for further examination, was afflicted with some pathogen which allowed reanimation even though necrotic decay was set, possible work of heretical bio weapon. Test Subject only craves for flesh."

/mob/living/simple_animal/hostile/mold
	name = "Glowing Humanoid"
	desc = "An strange humanoid that seems entirely made out of some plant organism. One thing is for sure, it does not seem friendly."
	icon = 'icons/map_project/creatures.dmi'
	speak_chance = 0
	icon_state = "spookyxenos"
	icon_living = "spookyxenos"
	icon_dead = "spookyxenos"
	health = 350
	maxhealth = 350
	melee_damage_lower = 35
	melee_damage_upper = 45
	attacktext = "chomped"
	attack_sound = 'sound/weapons/bite.ogg'
	speed = 1.7

/mob/living/simple_animal/hostile/mold/subject_08 // Xeno Research Area
	desc = "Subject was found on the lower levels of Elipharius, possibly an human being before it was assimilated by some plant organism and turned into this, the area it was located contained several organism like the subject here."

/mob/living/simple_animal/hostile/broken_servitor
	name = "Malfunctioning Servitor"
	desc = "An once operational servitor for the Mechanicus, whatever happened to it now turned it hostile to anyone.."
	icon = 'icons/map_project/creatures.dmi'
	speak_chance = 0
	icon_state = "tombs3"
	icon_living = "tombs3"
	icon_dead = "tombs3"
	health = 444
	maxhealth = 500
	melee_damage_lower = 35
	melee_damage_upper = 45
	attacktext = "chomped"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	speed = 1.8

/mob/living/simple_animal/hostile/broken_servitor/death()
	..(null, "blows apart!")
	new /obj/effect/decal/cleanable/blood/gibs/robot(src.loc)
	var/datum/effect/effect/system/spark_spread/s = new /datum/effect/effect/system/spark_spread
	s.set_up(3, 1, src)
	s.start()
	qdel(src)
	return

/mob/living/simple_animal/hostile/broken_servitor/subject_03 // Xeno Research Area, also a hint to Archangel
	desc = "Servitor was brought from the now abandoned and derelict Archangel Outpost, it appears his programming has been damaged during the expedition it was last tasked to do, any attempts to recover the information it has stored of the Archangel Outpost has been halted due increased hostilities."

/mob/living/simple_animal/hostile/eldar
	name = "Eldar"
	desc = "An Eldar that has seemingly been trapped here, seems that it wont be leaving any time soon."
	icon = 'icons/map_project/creatures.dmi'
	speak_chance = 0
	icon_state = "dire_avenger"
	icon_living = "dire_avenger"
	icon_dead = "dire_avenger" // Gotta add it dies horribly by gibbing due the lack of dead icon state
	health = 350
	maxhealth = 350
	melee_damage_lower = 25
	melee_damage_upper = 45
	attacktext = "pierces"
	attack_sound = 'sound/weapons/bladeslice.ogg'
	speed = 1.2


*/
