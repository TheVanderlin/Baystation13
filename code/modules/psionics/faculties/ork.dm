/singleton/psionic_faculty/ork
	id = PSI_ORK
	name = "ork"
	associated_intent = I_HARM
	armour_types = list(DAMAGE_PSIONIC)

singleton/psionic_power/ork/zzap
	name =             "Zzap"
	cost =             20
	cooldown =         20
	use_ranged =       TRUE
	min_rank =         PSI_RANK_ZETA
	use_description = "Use this ranged laser attack while on harm intent. Your mastery of Energistics will determine how powerful the laser is. Be wary of overuse, and try not to fry your own brain."

/singleton/psionic_power/pyromancy/zorch/invoke(mob/living/user, mob/living/target)
	. = ..()
	if(.)
		user.visible_message(SPAN_DANGER("\The [user] belches forth a cloud of energy!"))

		var/user_rank = user.psi.get_rank(faculty)
		var/obj/item/projectile/pew
		var/pew_sound

		switch(user_rank)
			if(PSI_RANK_ALPHA)
				pew = new /obj/item/projectile/beam/incendiary_laser/heavy(get_turf(user))
				pew.name = "DEFF LIGHTNIN'"
				pew_sound = 'sound/weapons/lasercannonfire.ogg'
			if(PSI_RANK_BETA)
				pew = new /obj/item/projectile/beam/heavylaser(get_turf(user))
				pew.name = "enormous lightning bolt"
				pew_sound = 'sound/weapons/lasercannonfire.ogg'
			if(PSI_RANK_GAMMA)
				pew = new /obj/item/projectile/beam/midlaser(get_turf(user))
				pew.name = "lightning bolt"
				pew_sound = 'sound/weapons/Laser.ogg'
			if(PSI_RANK_DELTA)
				pew = new /obj/item/projectile/beam/smalllaser(get_turf(user))
				pew.name = "electrical zap"
				pew_sound = 'sound/weapons/Laser.ogg'
			if(PSI_RANK_ZETA)
				pew = new /obj/item/projectile/beam/stun(get_turf(user))
				pew.name = "electrical jolt"
				pew_sound = 'sound/weapons/Taser.ogg'

		if(istype(pew))
			playsound(pew.loc, pew_sound, 25, 1)
			pew.original = target
			pew.current = target
			pew.starting = get_turf(user)
			pew.shot_from = user
			pew.launch(target, user.zone_sel.selecting, (target.x-user.x), (target.y-user.y))
			return TRUE
