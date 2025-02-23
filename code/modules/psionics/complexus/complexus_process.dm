/datum/psi_complexus/proc/update(force)

	set waitfor = FALSE

	var/last_rating = rating
	var/highest_faculty
	var/highest_rank = 0
	var/combined_rank = 0
	for(var/faculty in ranks)
		var/check_rank = get_rank(faculty)
		if(check_rank == 1)
			LAZYADD(latencies, faculty)
		else
			if(check_rank <= 0)
				ranks -= faculty
			LAZYREMOVE(latencies, faculty)
		combined_rank += check_rank
		if(!highest_faculty || highest_rank < check_rank)
			highest_faculty = faculty
			highest_rank = check_rank

	UNSETEMPTY(latencies)
	var/rank_count = max(1, LAZYLEN(ranks))
	if(force || last_rating != ceil(combined_rank/rank_count))
		if(highest_rank <= 1)
			if(highest_rank == 0)
				qdel(src)
			return
		else
			rebuild_power_cache = TRUE
			max_stamina = ((highest_rank - 1) * 50)
			sound_to(owner, 'sound/effects/psi/power_unlock.ogg')
			rating = ceil(combined_rank/rank_count)
			cost_modifier = 1
			if(rating > 1)
				cost_modifier -= min(1, max(0.1, (rating-1) / 10))
			if(!ui)
				ui = new(owner)
				if(owner.client)
					owner.client.screen += ui.components
					owner.client.screen += ui
			else
				if(owner.client)
					owner.client.screen |= ui.components
					owner.client.screen |= ui
			if(!suppressed && owner.client)
				for(var/thing in SSpsi.all_aura_images)
					owner.client.images |= thing

			var/image/aura_image = get_aura_image()
			if(rating >= PSI_RANK_GAMMA) // spooky boosters
				aura_color = "#aaffaa"
				aura_image.blend_mode = BLEND_SUBTRACT
			else
				aura_image.blend_mode = BLEND_ADD
				if(highest_faculty == PSI_TELEPATHY)
					aura_color = "#cc3333"
				else if(highest_faculty == PSI_TELEKINESIS)
					aura_color = "#3333cc"
				else if(highest_faculty == PSI_BIOMANCY)
					aura_color = "#33cc33"
				else if(highest_faculty == PSI_PYROMANCY)
					aura_color = "#cccc33"
			aura_image.pixel_x = -64 - owner.default_pixel_x
			aura_image.pixel_y = -64 - owner.default_pixel_y

	if(!announced && owner && owner.client && !QDELETED(src))
		announced = TRUE
		to_chat(owner, "<hr>")
		to_chat(owner, SPAN_NOTICE(FONT_LARGE("You are a <b>Psyker</b>, with a direct portal to hell within your head. Try not to lose control.")))
		to_chat(owner, SPAN_NOTICE("<b>Shift-left-click your Psi icon</b> on the bottom right to <b>view a summary of how to use them</b>, or <b>left click</b> it to <b>suppress or unsuppress</b> your psionics. Beware: overusing your gifts can have <b>deadly consequences</b>."))
		to_chat(owner, "<hr>")

/datum/psi_complexus/Process()
	var/update_hud
	if(armor_cost)
		var/value = max(1, ceil(armor_cost * cost_modifier))
		if(value <= stamina)
			stamina -= value
		else
			backblast(abs(stamina - value))
			stamina = 0
		update_hud = TRUE
		armor_cost = 0

	if(stun)
		stun--
		if(stun)
			if(!suppressed)
				suppressed = TRUE
				update_hud = TRUE
		else
			to_chat(owner, SPAN_NOTICE("You have recovered your mental composure."))
			update_hud = TRUE
	else
		var/psi_leech = owner.do_psionics_check()
		if(psi_leech)
			if(stamina > 10)
				stamina = max(0, stamina - rand(15,20))
				to_chat(owner, SPAN_DANGER("You feel your psi-power leeched away by \the [psi_leech]..."))
			else
				stamina++
		else if(stamina < max_stamina)
			if(owner.stat == CONSCIOUS)
				stamina = min(max_stamina, stamina + rand(3,5))
			else if(owner.stat == UNCONSCIOUS)
				stamina = min(max_stamina, stamina + rand(5,8))

		if(!owner.nervous_system_failure() && owner.stat == CONSCIOUS && stamina && !suppressed && get_rank(PSI_BIOMANCY) >= PSI_RANK_IOTA)
			attempt_regeneration()

	var/next_aura_size = max(0.1,((stamina/max_stamina)*min(3,rating))/5)
	var/next_aura_alpha = round(((suppressed ? max(0,rating - 2) : rating)/5)*255)

	if(next_aura_alpha != last_aura_alpha || next_aura_size != last_aura_size || aura_color != last_aura_color)
		last_aura_size =  next_aura_size
		last_aura_alpha = next_aura_alpha
		last_aura_color = aura_color
		animate(
			get_aura_image(),
			alpha = next_aura_alpha,
			transform = matrix().Update(scale_x = next_aura_size, scale_y = next_aura_size),
			color = aura_color,
			time = 3
		)

	if(update_hud)
		ui.update_icon()

/datum/psi_complexus/proc/attempt_regeneration()

	var/heal_general =  FALSE
	var/heal_poison =   FALSE
	var/heal_internal = FALSE
	var/heal_deform   = FALSE
	var/heal_external = FALSE
	var/heal_bleeding = FALSE
	var/heal_rate =     0
	var/mend_prob =     0

	var/use_rank = get_rank(PSI_BIOMANCY)
	if(use_rank >= PSI_RANK_ALPHA)
		heal_general = TRUE
		heal_poison = TRUE
		heal_internal = TRUE
		heal_bleeding = TRUE
		heal_deform   = TRUE
		heal_external = TRUE
		mend_prob = 95
		heal_rate = 25
	else if(use_rank >= PSI_RANK_BETA)
		heal_general = TRUE
		heal_poison = TRUE
		heal_internal = TRUE
		heal_bleeding = TRUE
		heal_deform   = TRUE
		heal_external = TRUE
		mend_prob = 75
		heal_rate = 12
	else if(use_rank >= PSI_RANK_GAMMA)
		heal_general = TRUE
		heal_poison = TRUE
		heal_internal = TRUE
		heal_bleeding = TRUE
		heal_deform   = TRUE
		heal_external = TRUE
		mend_prob = 50
		heal_rate = 7
	else if(use_rank == PSI_RANK_DELTA)
		heal_poison = TRUE
		heal_internal = TRUE
		heal_bleeding = TRUE
		heal_deform   = TRUE
		mend_prob = 20
		heal_rate = 5
	else if(use_rank == PSI_RANK_ZETA)
		heal_internal = TRUE
		heal_bleeding = TRUE
		mend_prob = 10
		heal_rate = 3
	else if(use_rank == PSI_RANK_IOTA)
		heal_bleeding = TRUE
		mend_prob = 5
		heal_rate = 1
	else
		return

	if(!heal_rate || stamina < heal_rate)
		return // Don't backblast from trying to heal ourselves thanks.

	if(ishuman(owner))

		var/mob/living/carbon/human/H = owner

		// Fix some pain.
		if(heal_rate > 0)
			H.shock_stage = max(0, H.shock_stage - max(1, round(heal_rate/2)))

		// Mend internal damage.
		if(prob(mend_prob))

			// Fix our heart if we're paramount.
			if(heal_general && H.is_asystole() && H.should_have_organ(BP_HEART) && spend_power(heal_rate))
				H.resuscitate()

			// Heal organ damage.
			if(heal_internal)
				for(var/obj/item/organ/I in H.internal_organs)

					if(BP_IS_ROBOTIC(I) || BP_IS_CRYSTAL(I))
						continue

					if(I.damage > 0 && spend_power(heal_rate))
						I.damage = max(I.damage - heal_rate, 0)
						if(prob(50))
							to_chat(H, SPAN_NOTICE("Your innards itch as your biomantic abilities mend your [I.name]."))
						return

			if(heal_deform)
				var/obj/item/organ/external/head/D = H.organs_by_name["head"]
				if (D.status & ORGAN_DISFIGURED)
					to_chat(H, SPAN_NOTICE("Your face itches as your biomantic abilities mend your disfigurement."))
					D.status &= ~ORGAN_DISFIGURED
				return

			if(heal_external)
				for(var/limb_type in H.species.has_limbs)
					var/obj/item/organ/external/E = H.organs_by_name[limb_type]
					if(E && E.organ_tag != BP_HEAD && !E.vital && (E.is_stump() || E.status & ORGAN_DEAD))	//Skips heads and vital bits...
						E.removed()			//...because no one wants their head to explode to make way for a new one.
						qdel(E)
						E= null
					if(!E)
						var/list/organ_data = H.species.has_limbs[limb_type]
						var/limb_path = organ_data["path"]
						var/obj/item/organ/external/O = new limb_path(H)
						to_chat(H, SPAN_DANGER("Through sheer force of will and power, your Biomantic powers regenerate your missing limb in a shower of blood!."))
						H.visible_message(SPAN_DANGER("With a shower of fresh blood, a length of biomass shoots from [H]'s [O.amputation_point], forming a new [O.name]!"))
						var/datum/reagent/blood/B = locate(/datum/reagent/blood) in H.vessel.reagent_list
						blood_splatter(H,B,1)
						organ_data["descriptor"] = O.name
						H.update_body()
						return
					else
						for(var/datum/wound/W in E.wounds)
							if(W.wound_damage() == 0 && prob(50))
								qdel(W)
						return



			// Heal broken bones.
			if(length(H.bad_external_organs))
				for(var/obj/item/organ/external/E in H.bad_external_organs)

					if(BP_IS_ROBOTIC(E))
						continue

					if(heal_internal && (E.status & ORGAN_BROKEN) && E.damage < (E.min_broken_damage * config.organ_health_multiplier)) // So we don't mend and autobreak.
						if(spend_power(heal_rate))
							if(E.mend_fracture())
								to_chat(H, SPAN_NOTICE("Your biomantic abilities coaxe together the shattered bones in your [E.name]."))
								return

					if(heal_bleeding)

						if((E.status & ORGAN_ARTERY_CUT) && spend_power(heal_rate))
							to_chat(H, SPAN_NOTICE("Your biomantic abilities mend the torn artery in your [E.name], stemming the worst of the bleeding."))
							E.status &= ~ORGAN_ARTERY_CUT
							return

						if(E.status & ORGAN_TENDON_CUT)
							to_chat(H, SPAN_NOTICE("Your biomantic abilities repair the severed tendon in your [E.name]."))
							E.status &= ~ORGAN_TENDON_CUT
							return TRUE

						for(var/datum/wound/W in E.wounds)

							if(W.bleeding() && spend_power(heal_rate))
								to_chat(H, SPAN_NOTICE("Your biomantic abilities knit together severed veins, stemming the bleeding from \a [W.desc] on your [E.name]."))
								W.bleed_timer = 0
								W.clamped = TRUE
								E.status &= ~ORGAN_BLEEDING
								return

	// Heal radiation, cloneloss and poisoning.
	if(heal_poison)

		if(owner.radiation && spend_power(heal_rate))
			if(prob(50))
				to_chat(owner, SPAN_NOTICE("Your biomantic abilities repair some of the radiation damage to your body."))
			owner.radiation = max(0, owner.radiation - heal_rate)
			return

		if(owner.getCloneLoss() && spend_power(heal_rate))
			if(prob(50))
				to_chat(owner, SPAN_NOTICE("Your biomantic abilities stitch together some of your mangled DNA."))
			owner.adjustCloneLoss(-heal_rate)
			return

	// Heal everything left.
	if(heal_general && prob(mend_prob) && (owner.getBruteLoss() || owner.getFireLoss() || owner.getOxyLoss()) && spend_power(heal_rate))
		owner.adjustBruteLoss(-(heal_rate))
		owner.adjustFireLoss(-(heal_rate))
		owner.adjustOxyLoss(-(heal_rate))
		if(prob(50))
			to_chat(owner, SPAN_NOTICE("Your skin crawls as your biomantic abilities heal your body."))
