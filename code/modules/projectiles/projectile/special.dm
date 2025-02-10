/obj/item/projectile/ion
	name = "ion bolt"
	icon_state = "ion"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 0
	damage_type = DAMAGE_BURN
	damage_flags = 0
	nodamage = TRUE
	var/heavy_effect_range = 1
	var/light_effect_range = 1

/obj/item/projectile/ion/on_impact(atom/A)
	empulse(A, heavy_effect_range, light_effect_range)
	return 1

/obj/item/projectile/ion/small
	name = "ion pulse"
	heavy_effect_range = 0
	light_effect_range = 1

/obj/item/projectile/ion/tiny
	heavy_effect_range = 0
	light_effect_range = 0

/obj/item/projectile/bullet/gyro
	name ="explosive bolt"
	icon_state= "bolter"
	damage = 50
	damage_flags = DAMAGE_FLAG_BULLET | DAMAGE_FLAG_SHARP | DAMAGE_FLAG_EDGE

/obj/item/projectile/bullet/gyro/on_hit(atom/target, blocked = 0)
	explosion(target, 2, EX_ACT_LIGHT)
	return 1

/obj/item/projectile/meteor
	name = "meteor"
	icon = 'icons/obj/meteor.dmi'
	icon_state = "smallf"
	damage = 0
	damage_type = DAMAGE_BRUTE
	nodamage = TRUE

/obj/item/projectile/meteor/Bump(atom/A as mob|obj|turf|area, forced=0)
	if(A == firer)
		forceMove(A.loc)
		return

	sleep(-1) //Might not be important enough for a sleep(-1) but the sleep/spawn itself is necessary thanks to explosions and metoerhits

	if(src)//Do not add to this if() statement, otherwise the meteor won't delete them
		if(A)

			A.ex_act(EX_ACT_HEAVY)
			playsound(src.loc, 'sound/effects/meteorimpact.ogg', 40, 1)

			for(var/mob/M in range(10, src))
				if(!M.stat && !istype(M, /mob/living/silicon/ai))\
					shake_camera(M, 3, 1)
			qdel(src)
			return 1
	else
		return 0

/obj/item/projectile/energy/floramut
	name = "alpha somatoray"
	icon_state = "energy"
	fire_sound = 'sound/effects/stealthoff.ogg'
	damage = 0
	damage_type = DAMAGE_TOXIN
	nodamage = TRUE

/obj/item/projectile/energy/floramut/on_hit(atom/target, blocked = 0)
	var/mob/living/M = target
	if(ishuman(target))
		var/mob/living/carbon/human/H = M
		var/datum/pronouns/pronouns = M.choose_from_pronouns()
		if((H.species.species_flags & SPECIES_FLAG_IS_PLANT) && (H.nutrition < 500))
			if(prob(15))
				H.apply_damage((rand(30,80)), DAMAGE_RADIATION, damage_flags = DAMAGE_FLAG_DISPERSED)
				H.Weaken(5)
				for (var/mob/V in viewers(src))
					V.show_message(SPAN_WARNING("\The [M] writhes in pain as [pronouns.his] vacuoles boil."), 3, SPAN_WARNING("You hear the crunching of leaves."), 2)
			if(prob(35))
				if(prob(80))
					randmutb(M)
					domutcheck(M,null)
				else
					randmutg(M)
					domutcheck(M,null)
			else
				M.adjustFireLoss(rand(5,15))
				M.show_message(SPAN_DANGER("The radiation beam singes you!"))
	else if(istype(target, /mob/living/carbon))
		M.show_message(SPAN_NOTICE("The radiation beam dissipates harmlessly through your body."))
	else
		return 1

/obj/item/projectile/energy/floramut/gene
	name = "gamma somatoray"
	icon_state = "energy2"
	fire_sound = 'sound/effects/stealthoff.ogg'
	damage = 0
	damage_type = DAMAGE_TOXIN
	nodamage = TRUE
	var/singleton/plantgene/gene = null

/obj/item/projectile/energy/florayield
	name = "beta somatoray"
	icon_state = "energy2"
	fire_sound = 'sound/effects/stealthoff.ogg'
	damage = 0
	damage_type = DAMAGE_TOXIN
	nodamage = TRUE

/obj/item/projectile/energy/florayield/on_hit(atom/target, blocked = 0)
	var/mob/M = target
	if(ishuman(target)) //These rays make plantmen fat.
		var/mob/living/carbon/human/H = M
		if((H.species.species_flags & SPECIES_FLAG_IS_PLANT) && (H.nutrition < 500))
			H.adjust_nutrition(30)
	else if (istype(target, /mob/living/carbon))
		M.show_message(SPAN_NOTICE("The radiation beam dissipates harmlessly through your body."))
	else
		return 1


/obj/item/projectile/beam/mindflayer
	name = "flayer ray"

/obj/item/projectile/beam/mindflayer/on_hit(atom/target, blocked = 0)
	if(ishuman(target))
		var/mob/living/carbon/human/M = target
		M.mod_confused(rand(5, 8))

/obj/item/projectile/chameleon
	name = "bullet"
	icon_state = "bullet"
	damage = 1 // stop trying to murderbone with a fake gun dumbass!!!
	embed = FALSE // nope
	nodamage = TRUE
	damage_type = DAMAGE_PAIN
	damage_flags = 0
	muzzle_type = /obj/projectile/bullet

/obj/item/projectile/bola
	name = "bola"
	icon_state = "bola"
	damage = 5
	embed = FALSE
	damage_type = DAMAGE_STUN
	muzzle_type = null

/obj/item/projectile/bola/on_hit(atom/target, blocked = 0)
	if (isliving(target))
		var/mob/living/M = target
		M.Weaken(3)
		M.visible_message(
			SPAN_WARNING("\The [M] is hit with a glob of webbing!"),
			SPAN_DANGER("You are hit with a glob of webbing, causing you to trip!"),
			SPAN_DANGER("Some sort of sticky substance hits you and causes you to fall over!")
		)
	..()

/obj/item/projectile/webball
	name = "ball of web"
	icon_state = "bola"
	damage = 1
	embed = FALSE
	damage_type = DAMAGE_BRUTE
	muzzle_type = null

/obj/item/projectile/webball/on_hit(atom/target, blocked = 0)
	if (isturf(target.loc))
		var/obj/spider/stickyweb/W = locate() in get_turf(target)
		if (!W && prob(75))
			visible_message(SPAN_DANGER("\The [src] splatters a layer of web on \the [target]!"))
			new /obj/spider/stickyweb(target.loc)

			if (isliving(target))
				var/mob/living/M = target
				var/has_webs = FALSE
				for (var/obj/aura/A in M.auras)
					if (istype(A, /obj/aura/web))
						has_webs = TRUE
						break
				if (!has_webs)
					M.add_aura(new /obj/aura/web(M))
	..()

/obj/item/projectile/venom
	name = "venom bolt"
	icon_state = "venom"
	damage = 5 //most damage is in the reagent
	damage_type = DAMAGE_TOXIN
	damage_flags = 0

/obj/item/projectile/venom/on_hit(atom/target, blocked, def_zone)
	. = ..()
	var/mob/living/L = target
	if(L.reagents)
		L.reagents.add_reagent(/datum/reagent/toxin/venom, 5)

/obj/item/missile
	icon = 'icons/obj/weapons/grenade.dmi'
	icon_state = "missile"
	var/primed = null
	throwforce = 15

/obj/item/missile/throw_impact(atom/hit_atom)
	if(primed)
		explosion(hit_atom, 2, EX_ACT_HEAVY)
		qdel(src)
	else
		..()
	return

/obj/item/projectile/hotgas
	name = "gas vent"
	icon_state = null
	damage_type = DAMAGE_BURN
	damage_flags = 0
	life_span = 3
	silenced = TRUE

/obj/item/projectile/hotgas/on_hit(atom/target, blocked, def_zone)
	. = ..()
	if(isliving(target))
		var/mob/living/L = target
		to_chat(target, SPAN_WARNING("You feel a wave of heat wash over you!"))
		L.adjust_fire_stacks(rand(5,8))
		L.IgniteMob()

/obj/item/projectile/archeotech //Categorisation object.
	name = "Archeotech Shot"
	icon_state = "ion"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 0
	damage_type = DAMAGE_BURN
	nodamage = 1

/obj/item/projectile/archeotech/explosion
	name = "Explosive Archeotech Shot"
	icon_state = "ion"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 5
	armor_penetration = 60
	damage_type = DAMAGE_BURN

/obj/item/projectile/archeotech/explosion/on_hit(var/atom/target, var/blocked = 0)
	explosion(target, 1, 2, 3)
	..()

/obj/item/projectile/archeotech/anticausality
	name = "Anticausal Archeotech Shot"
	icon_state = "bluespace"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 5
	armor_penetration = 60
	damage_type = DAMAGE_BURN


/obj/item/projectile/archeotech/anticausality/on_hit(var/atom/target, var/blocked = 0)
	if(ismob(target))
		var/mobloc = get_turf(target.loc)
		var/atom/movable/fake_overlay/animation
		animation = new/atom/movable/fake_overlay(mobloc)
		animation.SetName("residue")
		animation.set_density(FALSE)
		animation.anchored = TRUE
		animation.icon = 'icons/mob/mob.dmi'
		animation.layer = FLY_LAYER
		visible_message("<span class='danger'>[target] vanishes in a flow of anticausal particles!</span>")
		animation.icon_state = "liquify"
		flick("liquify",animation)
		qdel(target)
	if(istype(target, /turf/simulated/wall))
		var/turf/simulated/wall/W = target
		explosion(W, 1, 1, 1)
		qdel(W)
	if(istype(target, /atom/movable/lighting_overlay))
		var/atom/movable/lighting_overlay/L = target
		explosion(L, 1, 1, 1)
	if(istype(target, /mob/living/simple_animal))
		var/mob/living/simple_animal/S = target
		qdel(S)
	else
		if(!isturf(target))
			qdel(target)
			visible_message("<span class='danger'>[target] vanishes in a flow of anticausal particles!</span>")
		return
	..()

/obj/item/projectile/archeotech/capture
	name = "Capture Archeotech Shot"
	icon_state = "electricity2"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 0
	armor_penetration = 60
	damage_type = DAMAGE_BURN

/obj/item/projectile/archeotech/capture/on_hit(var/atom/target, var/blocked = 0)
	if(istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = target
		var/obj/item/handcuffs/archeotech/cuffs = new()
		cuffs.forceMove(H)
		H.handcuffed = cuffs
		H.update_inv_handcuffed()
		H.visible_message("Beams of light form around \the [H]'s hands!")
		H.Weaken(5)
	if(istype(target, /mob/living/simple_animal))
		var/mob/living/simple_animal/S = target
		S.in_stasis = 1
	..()

/obj/item/handcuffs/archeotech
	name = "Energy Cuffs"
	desc = "Strange beams of energy which restrain your hands."
	breakout_time = 300 //30 seconds

/obj/item/handcuffs/archeotech/dropped(var/mob/user)
	..()
	qdel(src)

/obj/item/projectile/archeotech/stun
	name = "Stun Archeotech Shot"
	icon_state = "spark"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 0
	armor_penetration = 60
	damage_type = DAMAGE_BURN

/obj/item/projectile/archeotech/stun/on_hit(var/atom/target, var/blocked = 0)
	if(istype(target, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = target
		H.Weaken(15)
		H.Stun(15)
	..()

/obj/item/projectile/archeotech/kill
	name = "Lethal Archeotech Shot"
	icon_state = "heavylaser"
	fire_sound = 'sound/weapons/Laser.ogg'
	damage = 750 //Enough to instakill simplemobs.
	armor_penetration = 80
	damage_type = DAMAGE_BURN
	sharp = 1
