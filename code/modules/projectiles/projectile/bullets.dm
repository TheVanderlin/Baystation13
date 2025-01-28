/obj/item/projectile/bullet
	name = "bullet"
	icon_state = "bullet"
	fire_sound = null
	damage = 30
	armor_penetration = 21
	damage_type = DAMAGE_BRUTE
	damage_flags = DAMAGE_FLAG_BULLET | DAMAGE_FLAG_SHARP
	embed = TRUE
	rupture_artery = 0.4
	space_knockback = 1
	var/mob_passthrough_check = 0
	var/is_pellet = FALSE

	muzzle_type = /obj/projectile/bullet
	miss_sounds = list('sound/weapons/guns/miss1.ogg','sound/weapons/guns/miss2.ogg','sound/weapons/guns/miss3.ogg','sound/weapons/guns/miss4.ogg')
	ricochet_sounds = list('sound/weapons/guns/ricochet1.ogg', 'sound/weapons/guns/ricochet2.ogg',
							'sound/weapons/guns/ricochet3.ogg', 'sound/weapons/guns/ricochet4.ogg')
	impact_sounds = list(BULLET_IMPACT_MEAT = SOUNDS_BULLET_MEAT, BULLET_IMPACT_METAL = SOUNDS_BULLET_METAL)

/obj/item/projectile/bullet/on_hit(atom/target, blocked = 0)
	if (..(target, blocked))
		var/mob/living/L = target
		shake_camera(L, 3, 2)

/obj/item/projectile/bullet/attack_mob(mob/living/target_mob, distance, miss_modifier)
	if(penetrating > 0 && damage > 20 && prob(damage))
		mob_passthrough_check = 1
	else
		mob_passthrough_check = 0
	. = ..()

	if(. == 1 && iscarbon(target_mob) && !is_pellet)
		damage *= 0.7 //squishy mobs absorb KE

/obj/item/projectile/bullet/can_embed()
	//prevent embedding if the projectile is passing through the mob
	if(mob_passthrough_check)
		return 0
	return ..()

/obj/item/projectile/bullet/check_penetrate(atom/A)
	if(QDELETED(A) || !A.density) return 1 //if whatever it was got destroyed when we hit it, then I guess we can just keep going

	if(ismob(A))
		if(!mob_passthrough_check)
			return 0
		return 1

	var/chance = damage
	if(has_extension(A, /datum/extension/penetration))
		var/datum/extension/penetration/P = get_extension(A, /datum/extension/penetration)
		chance = P.PenetrationProbability(chance, damage, damage_type)

	if(prob(chance))
		if(A.opacity)
			//display a message so that people on the other side aren't so confused
			A.visible_message(SPAN_WARNING("\The [src] pierces through \the [A]!"))
		return 1

	return 0

//For projectiles that actually represent clouds of projectiles
/obj/item/projectile/bullet/pellet
	name = "shrapnel" //'shrapnel' sounds more dangerous (i.e. cooler) than 'pellet'
	damage = 37.5
	//icon_state = "bullet" //TODO: would be nice to have it's own icon state
	var/pellets = 4			//number of pellets
	var/range_step = 2		//projectile will lose a fragment each time it travels this distance. Can be a non-integer.
	var/base_spread = 90	//lower means the pellets spread more across body parts. If zero then this is considered a shrapnel explosion instead of a shrapnel cone
	var/spread_step = 10	//higher means the pellets spread more across body parts with distance
	is_pellet = TRUE

/obj/item/projectile/bullet/pellet/Bumped()
	. = ..()
	bumped = 0 //can hit all mobs in a tile. pellets is decremented inside attack_mob so this should be fine.

/obj/item/projectile/bullet/pellet/proc/get_pellets(distance)
	/// pellets lost due to distance
	var/pellet_loss = round(max(distance - 1, 0)/range_step)
	return max(pellets - pellet_loss, 1)

/obj/item/projectile/bullet/pellet/attack_mob(mob/living/target_mob, distance, miss_modifier)
	if (pellets < 0) return 1

	var/total_pellets = get_pellets(distance)
	var/spread = max(base_spread - (spread_step*distance), 0)

	//shrapnel explosions miss prone mobs with a chance that increases with distance
	var/prone_chance = 0
	if(!base_spread)
		prone_chance = max(spread_step*(distance - 2), 0)

	var/hits = 0
	for (var/i in 1 to total_pellets)
		if(target_mob.lying && target_mob != original && prob(prone_chance))
			continue

		//pellet hits spread out across different zones, but 'aim at' the targeted zone with higher probability
		//whether the pellet actually hits the def_zone or a different zone should still be determined by the parent using get_zone_with_miss_chance().
		var/old_zone = def_zone
		def_zone = ran_zone(def_zone, spread)
		if (..())
			hits++
		def_zone = old_zone //restore the original zone the projectile was aimed at

	pellets -= hits //each hit reduces the number of pellets left
	if (hits >= total_pellets || pellets <= 0)
		return 1
	return 0

/obj/item/projectile/bullet/pellet/get_structure_damage()
	var/distance = get_dist(loc, starting)
	return ..() * get_pellets(distance)

/obj/item/projectile/bullet/pellet/Move()
	. = ..()

	//If this is a shrapnel explosion, allow mobs that are prone to get hit, too
	if(. && !base_spread && isturf(loc))
		for(var/mob/living/M in loc)
			if(M.lying || !M.CanPass(src, loc, 0.5, 0)) //Bump if lying or if we would normally Bump.
				if(Bump(M)) //Bump will make sure we don't hit a mob multiple times
					return

/* short-casing projectiles, like the kind used in pistols or SMGs */

/obj/item/projectile/bullet/pistol
	damage = 35
	armor_penetration = 21
	distance_falloff = 3

/obj/item/projectile/bullet/pistol/ap
	armor_penetration = 23 // +2

/obj/item/projectile/bullet/pistol/kp
	damage = 38 // +3 damage.
	armor_penetration = 25 // +2 added with AP. So +4 total from standard.

/obj/item/projectile/bullet/pistol/ms
	damage = 43 // MS rounds are +5 damage -2 AP to all rounds
	armor_penetration = 19

/obj/item/projectile/bullet/pistol/holdout // Higher quality penetrative slugs
	damage = 32
	armor_penetration = 22
	rupture_artery = 0.5
	distance_falloff = 4

/obj/item/projectile/bullet/pistol/holdout/ap
	armor_penetration = 24

/obj/item/projectile/bullet/pistol/holdout/kp
	damage = 35
	armor_penetration = 26

/obj/item/projectile/bullet/pistol/holdout/ms
	damage = 40
	armor_penetration = 20

/obj/item/projectile/bullet/magnum
	damage = 38
	rupture_artery = 0.5
	distance_falloff = 2 // Heavy slug.
	armor_penetration = 24

/obj/item/projectile/bullet/magnum/ap
	armor_penetration = 26

/obj/item/projectile/bullet/magnum/kp
	damage = 41
	armor_penetration = 28

/obj/item/projectile/bullet/magnum/ms
	damage = 46
	armor_penetration = 22

/obj/item/projectile/bullet/pistol/rubber //"rubber" bullets
	name = "rubber bullet"
	damage_flags = 0
	damage = 15
	agony = 25
	embed = FALSE

/obj/item/projectile/bullet/pistol/rubber/holdout
	agony = 30
	damage = 10

/obj/item/projectile/bullet/pistol/rubber/neuro // neurtox bullets. potentially lethal because grimdark
	agony = 40
	damage = 20
	damage_type = DAMAGE_TOXIN

//4mm. Tiny, very low damage, does not embed, but has very high penetration. Only to be used for the experimental SMG.
/obj/item/projectile/bullet/flechette
	damage = 35
	penetrating = 1
	armor_penetration = 25
	embed = FALSE
	distance_falloff = 2

/* shotgun projectiles */

/obj/item/projectile/bullet/shotgun
	name = "slug"
	damage = 65
	armor_penetration = 24
	distance_falloff = 4

/obj/item/projectile/bullet/shotgun/ap
	armor_penetration = 27

/obj/item/projectile/bullet/shotgun/kp
	damage = 68
	armor_penetration = 29 // special rounds scale better on big slugs.

/obj/item/projectile/bullet/shotgun/ms
	damage = 70
	armor_penetration = 24

/obj/item/projectile/bullet/shotgun/beanbag
	name = "beanbag"
	damage = 25
	damage_flags = 0
	agony = 35
	embed = FALSE
	armor_penetration = 19
	distance_falloff = 4.5

//Should do about 180 damage at 1 tile distance (adjacent), and 120 damage at 3 tiles distance.
//Overall less damage than slugs in exchange for more damage at very close range and more embedding
/obj/item/projectile/bullet/pellet/shotgun
	name = "shrapnel"
	icon_state = "pellet"
	damage = 23
	armor_penetration = 18
	pellets = 6
	range_step = 2
	spread_step = 25
	distance_falloff = 5

/obj/item/projectile/bullet/pellet/shotgun/flechette
	name = "flechette"
	icon_state = "flechette"
	damage = 18 // Tigher spread and higher AP. On paper this thing blows regular pellets out of the water when dealing with flak.
	armor_penetration = 23
	pellets = 6
	range_step = 3
	base_spread = 99
	spread_step = 15
	rupture_artery = 0.4

/* "Rifle" rounds */

/obj/item/projectile/bullet/rifle // 8mm slug round. Ideal for soft targets and light armour.
	damage = 38
	armor_penetration = 25
	distance_falloff = 1

/obj/item/projectile/bullet/rifle/ap
	armor_penetration = 27

/obj/item/projectile/bullet/rifle/kp
	damage = 41
	armor_penetration = 29

/obj/item/projectile/bullet/rifle/ms
	damage = 43
	armor_penetration = 23

/obj/item/projectile/bullet/rifle/heavy // 10mm heavy rifle slug. Big recoil.
	damage = 43
	armor_penetration = 26

/obj/item/projectile/bullet/rifle/heavy/ap
	armor_penetration = 28

/obj/item/projectile/bullet/rifle/heavy/kp
	damage = 46
	armor_penetration = 30

/obj/item/projectile/bullet/rifle/heavy/ms
	damage = 51
	armor_penetration = 26

/obj/item/projectile/bullet/rifle/militarum // 6.8 Militarum. Higher AP.
	damage = 38
	armor_penetration = 26

/obj/item/projectile/bullet/rifle/militarum/ap
	armor_penetration = 28

/obj/item/projectile/bullet/rifle/militarum/kp
	damage = 41
	armor_penetration = 30

/obj/item/projectile/bullet/rifle/militarum/ms
	damage = 43
	armor_penetration = 24

/obj/item/projectile/bullet/rifle/sniper // 12.7mm Battle Round
	damage = 61
	armor_penetration = 33

/obj/item/projectile/bullet/rifle/sniper/ap
	armor_penetration = 35

/obj/item/projectile/bullet/rifle/sniper/kp
	damage = 63
	armor_penetration = 37

/obj/item/projectile/bullet/rifle/sniper/ms
	damage = 68
	armor_penetration = 31

/obj/item/projectile/bullet/rifle/shell // 12.7mm Tech Round
	damage = 95
	stun = 1
	weaken = 2
	penetrating = 3
	armor_penetration = 34
	rupture_artery = 1
	distance_falloff = 0.5

/obj/item/projectile/bullet/rifle/shell/apds
	armor_penetration = 36

/obj/item/projectile/bullet/rifle/shell/apds/rail
	damage = 110
	armor_penetration = 33 // Not a penetrative slug -- just hot metal being fired by a xenos magnetic rail device.

/obj/item/projectile/bullet/rifle/shell/rend // Special tech shredder round. Loses wall_pen ability for huge damage.
	damage = 100
	penetrating = 0
	armor_penetration = 33

/obj/item/projectile/bullet/rifle/shell/knockout // Round for putting space marines and xenos to sleep for capture or killing.
	damage = 40
	penetrating = 0
	armor_penetration = 33
	paralyze = 3
	drowsy = 20
	stun = 3
	weaken = 3

/obj/item/projectile/bullet/meltagun
	name = "Meltagun beam"
	icon_state = "melta"
	damage = 155
	agony = 25
	weaken = 2
	eyeblur = 4
	stun = 3
	armor_penetration = 38 // 2 points below astartes power armor. The maximum AP we should give to ANY weapon as it only reduces dam by 8-10 percent at this AP.
	fire_sound = list('sound/warhammer/ds/flmthrowr_01.ogg')
	damage_falloff_list = list(
		list(2, 0.90),
		list(3, 0.80),
		list(5, 0.50),
		list(7, 0.10),
	)

/obj/item/projectile/bullet/meltagun/on_hit(atom/target, blocked = 0)
	src.visible_message("<span class='warning'>\The [src] explodes in a bright flash!</span>")

	/* var/datum/effect/effect/system/spark_spread/sparks = new /datum/effect/effect/system/spark_spread()
	sparks.set_up(2, 1, T)
	sparks.start() */

/obj/item/projectile/bullet/rifle/shuriken/catapult
	fire_sound = 'sound/warhammer/gunshot/needler.ogg'
	icon_state = "ion"
	damage = 23
	armor_penetration = 34
	penetrating = 3

/obj/item/projectile/bullet/rifle/shuriken/pistol
	fire_sound = 'sound/warhammer/gunshot/needler.ogg'
	icon_state = "ion"
	damage = 21
	armor_penetration = 34
	penetrating = 3

// MECHANICUS
/obj/item/projectile/bullet/rifle/radcarbine
	fire_sound = 'sound/warhammer/guns/misc/laser_searwall.ogg'
	icon_state = "shot"
	damage = 35 // Do not increase damage more then 40 if u are reading this.
	damage_type = DAMAGE_BRUTE
	armor_penetration = 34
	weaken = 1
	irradiate = 15
	eyeblur = 2
	drowsy = 10
	agony = 10

/obj/item/projectile/bullet/rifle/radcarbine/radpistol
	fire_sound = 'sound/warhammer/guns/misc/laser_searwall.ogg'
	icon_state = "shot"
	damage = 35
	damage_type = DAMAGE_BRUTE
	armor_penetration = 32
	weaken = 1
	irradiate = 10
	eyeblur = 1
	drowsy = 5
	agony = 5



// ASTARTES AND ORKS

/obj/item/projectile/bullet/bpistol
	name =".50 bolt" //.50, human sized bolt pistols.
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	icon_state= "bolter"
	damage = 55 // Slightly weaker then a stub sniper round.
	armor_penetration = 30

/obj/item/projectile/bullet/bpistol/kp
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	damage = 60
	armor_penetration = 36

/obj/item/projectile/bullet/bpistol/ms
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	damage = 63 // Bolt tech rounds are just better in every way. They have almost no downsides.
	armor_penetration = 32

/obj/item/projectile/bullet/bolt
	name =".75 bolt" //.75,  locke pattern
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	icon_state= "bolter"
	damage = 58
	armor_penetration = 31

/obj/item/projectile/bullet/bolt/kp
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	damage = 63
	armor_penetration = 36

/obj/item/projectile/bullet/bolt/ms
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	damage = 66
	armor_penetration = 33

/obj/item/projectile/bullet/bolt/astartes
	name =".95 bolt"  // Astartes
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	icon_state= "bolter"
	damage = 68
	armor_penetration = 36

/obj/item/projectile/bullet/ork
	name = "scrap"
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	damage = 45
	armor_penetration = 31

// XENOS
/obj/item/projectile/bullet/rifle/pmag // Xenos Super Penetrative Round. The rifle is an automatic railgun that fires small tiny projectiles.
	fire_sound = 'sound/warhammer/gunshot/needler.ogg'
	icon_state = "pulse"
	damage = 55
	armor_penetration = 34
	penetrating = 3

//MECHANICUS
/obj/item/projectile/bullet/rifle/galvanic
	fire_sound = 'sound/warhammer/guns/misc/laser_searwall.ogg'
	icon_state = "ion"
	damage = 62
	armor_penetration = 32

/obj/item/projectile/bullet/rifle/galvanic/fire // Armor Piercing Incendiary
	fire_sound = 'sound/warhammer/guns/misc/laser_searwall.ogg'
	icon_state = "ion"
	damage = 52
	armor_penetration = 34

/obj/item/projectile/bullet/rifle/galvanic/fire/on_hit(atom/target, blocked = 0)
	..()
	if(isliving(target))
		var/mob/living/L = target
		L.adjust_fire_stacks(rand(2,4))
		if(L.fire_stacks >= 3)
			L.IgniteMob()

/obj/item/projectile/bullet/rifle/galvanic/emp // Armor Piercing Tech Bullet. Should be rarer then Tzeentch's diary. NOT map spawned.
	fire_sound = 'sound/warhammer/guns/misc/laser_searwall.ogg'
	icon_state = "ion"
	damage = 52
	armor_penetration = 42

/obj/item/projectile/bullet/rifle/galvanic/emp/on_impact(atom/A)
	empulse(A, 1, 2)
	return 1

/*
/obj/item/projectile/bullet/rifle/galvanic/airburst
	fire_sound = 'sound/warhammer/guns/misc/laser_searwall.ogg'
	icon_state = "ion"
	damage = 40
	armor_penetration = 36

/obj/item/projectile/bullet/rifle/galvanic/airburst/on_hit(var/atom/target)
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		var/obj/item/organ/external/affecting = H.get_organ(pick("l_leg","l_arm","r_leg","r_arm", "head", "l_hand", "r_hand", "l_foot", "r_foot"))
		affecting.droplimb(0, DROPLIMB_BLUNT)
		if(prob(25))
			affecting = H.get_organ(pick("l_leg","l_arm","r_leg","r_arm", "head", "l_hand", "r_hand", "l_foot", "r_foot"))
			affecting.droplimb(0, DROPLIMB_BLUNT)
			if(prob(25))
				affecting = H.get_organ(pick("l_leg","l_arm","r_leg","r_arm", "head", "l_hand", "r_hand", "l_foot", "r_foot"))
				affecting.droplimb(0, DROPLIMB_BLUNT)
				return
			else
				return
		else
			return
*/ // Need to fix this -- it's from Rebase.



/* Miscellaneous */
/obj/item/projectile/bullet/gyro
	name = "minirocket"
	fire_sound = 'sound/effects/Explosion1.ogg'
	var/explosion_radius = 2
	var/explosion_max_power = EX_ACT_LIGHT

/obj/item/projectile/bullet/gyro/on_hit(atom/target, blocked = 0)
	if(isturf(target))
		explosion(target, explosion_radius, explosion_max_power)
	..()

/obj/item/projectile/bullet/blank
	invisibility = INVISIBILITY_ABSTRACT
	damage = 1
	embed = FALSE

/* Practice */

/obj/item/projectile/bullet/pistol/practice
	damage = 5

/obj/item/projectile/bullet/rifle/practice
	damage = 5

/obj/item/projectile/bullet/rifle/militarum/practice
	damage = 5

/obj/item/projectile/bullet/shotgun/practice
	name = "practice"
	damage = 5

/obj/item/projectile/bullet/pistol/cap
	name = "cap"
	invisibility = INVISIBILITY_ABSTRACT
	fire_sound = null
	damage_type = DAMAGE_PAIN
	damage_flags = 0
	damage = 0
	nodamage = TRUE
	embed = FALSE

/obj/item/projectile/bullet/pistol/cap/Process()
	qdel(src)
	return PROCESS_KILL

/obj/item/projectile/bullet/rock //spess dust
	name = "micrometeor"
	icon_state = "rock"
	damage = 40
	armor_penetration = 25
	life_span = 255
	distance_falloff = 0

/obj/item/projectile/bullet/rock/New()
	icon_state = "rock[rand(1,3)]"
	pixel_x = rand(-10,10)
	pixel_y = rand(-10,10)
	..()
