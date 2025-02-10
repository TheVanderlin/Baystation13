/obj/item/organ/internal/liver/astartes //Oolitic kidneys do the filtering for astartes, so this is relegated to just blood replenishment and bleed stopping.
	name = "larraman's organ"
	icon_state = "liver"
	w_class = ITEM_SIZE_SMALL
	organ_tag = BP_LIVER
	parent_organ = BP_GROIN
	min_bruised_damage = 50
	min_broken_damage = 90
	max_damage = 140
	relative_size = 35

/obj/item/organ/internal/liver/astartes/Process()

	..()
	if(!owner)
		return

	// Heal a bit if needed and we're not busy. This allows recovery from low amounts of toxloss.
	if(!owner.chem_effects[CE_ALCOHOL] && !owner.chem_effects[CE_TOXIN] && !owner.radiation && damage > 0)
		if(damage < min_broken_damage)
			heal_damage(0.2)
		if(damage < min_bruised_damage)
			heal_damage(0.3)

	//Blood regeneration if there is some space
	owner.regenerate_blood(0.5 + owner.chem_effects[CE_BLOODRESTORE])

	// Blood loss or liver damage make you lose nutriments
	var/blood_volume = owner.get_blood_volume()
	if(blood_volume < BLOOD_VOLUME_SAFE || is_bruised())
    		for(var/obj/item/organ/external/E in owner.organs)
			if(E.status & ORGAN_ARTERY_CUT && prob(25))
				E.status &= ~ORGAN_ARTERY_CUT
			for(var/datum/wound/W in E.wounds)
				if(W.bleeding() && prob(40))
					W.bleed_timer = 0
					W.clamped = TRUE
					E.status &= ~ORGAN_BLEEDING
		if(owner.nutrition >= 300)
			owner.adjust_nutrition(-3)
		else if(owner.nutrition >= 200)
			owner.adjust_nutrition(-1)

/obj/item/organ/internal/kidneys/astartes
	name = "oolitic kidneys"
	icon_state = "kidneys"
	gender = PLURAL
	organ_tag = BP_KIDNEYS
	parent_organ = BP_GROIN
	min_bruised_damage = 50
	min_broken_damage = 90
	max_damage = 140
	relative_size = 35

/obj/item/organ/internal/kidneys/astartes/Process()
	..()

	if(!owner)
		return

	owner.immunity = max(owner.immunity - 0.3, 0)
	owner.add_chemical_effect(CE_ANTIBIOTIC, 1)
	owner.add_chemical_effect(CE_ANTIVIRAL, VIRUS_ENGINEERED)
	owner.add_up_to_chemical_effect(CE_ANTITOX, 1)

	//Detox can heal small amounts of damage
	if (damage < max_damage && !owner.chem_effects[CE_TOXIN])
		heal_damage(0.2 * owner.chem_effects[CE_ANTITOX])

	// Heal a bit if needed and we're not busy. This allows recovery from low amounts of toxloss.
	if(!owner.chem_effects[CE_ALCOHOL] && !owner.chem_effects[CE_TOXIN] && !owner.radiation && damage > 0)
		if(damage < min_broken_damage)
			heal_damage(0.2)
		if(damage < min_bruised_damage)
			heal_damage(0.3)


/obj/item/organ/internal/eyes/astartes
	name = "occulobes"
	icon_state = "eyes"
	gender = PLURAL
	organ_tag = BP_EYES
	parent_organ = BP_HEAD
	surface_accessible = TRUE
	relative_size = 5
	phoron_guard = 1
	innate_flash_protection = FLASH_PROTECTION_MAJOR
	max_damage = 90

/obj/item/organ/internal/lungs/astartes
	name = "multilungs
	icon_state = "lungs"
	gender = PLURAL
	organ_tag = BP_LUNGS
	parent_organ = BP_CHEST
	w_class = ITEM_SIZE_NORMAL
	min_bruised_damage = 50
	min_broken_damage = 90
	max_damage = 140
	relative_size = 60

/obj/item/organ/internal/brain/astartes
	name = "membranous brain
	desc = "A brain. It apoears to be covered in an odd membrane."
	relative_size = 85
	damage_reduction = 0.5
	oxygen_reserve = 60

//Got to redo large amounts of heart and bleed code
/obj/item/organ/internal/heart/astartes
	name = "twin hearts"
	icon_state = "heart-on"
	organ_tag = "heart"
	parent_organ = BP_CHEST
	dead_icon = "heart-off"
	var/pulse = PULSE_NORM
	var/heartbeat = 0
	var/beat_sound = 'sound/effects/singlebeat.ogg'
	var/next_blood_squirt = 0
	damage_reduction = 0.5
	relative_size = 5
	max_damage = 150
	var/open
	var/list/external_pump

/obj/item/organ/internal/heart/astartes/open
	open = 1

/obj/item/organ/internal/heart/astartes/die()
	if(dead_icon)
		icon_state = dead_icon
	..()


/obj/item/organ/internal/heart/astartes/Process()
	if(owner)
		handle_pulse()
		if(pulse)
			handle_heartbeat()
			if(pulse == PULSE_2FAST && prob(1))
				take_internal_damage(0.1)
			if(pulse == PULSE_THREADY && prob(5))
				take_internal_damage(0.1)
		handle_blood()
	..()

/obj/item/organ/internal/heart/astartes/proc/handle_pulse()

	// pulse mod starts out as just the chemical effect amount
	var/pulse_mod = owner.chem_effects[CE_PULSE]
	var/is_stable = owner.chem_effects[CE_STABLE]

	// If you have enough heart chemicals to be over 2, you're likely to take extra damage.
	if(pulse_mod > 2 && !is_stable)
		var/damage_chance = (pulse_mod - 2) ** 2
		if(prob(damage_chance))
			take_internal_damage(0.1)

	// Now pulse mod is impacted by shock stage and other things too
	if(owner.shock_stage > 30)
		pulse_mod++
	if(owner.shock_stage > 80)
		pulse_mod++

	var/oxy = owner.get_blood_oxygenation()
	if(oxy < BLOOD_VOLUME_OKAY) //brain wants us to get MOAR OXY
		pulse_mod++
	if(oxy < BLOOD_VOLUME_BAD) //MOAR
		pulse_mod++

	if(owner.status_flags & FAKEDEATH || owner.chem_effects[CE_NOPULSE])
		pulse = PULSE_NONE
		return

	//If heart is stopped, it isn't going to restart itself randomly. //Unless you have a second heart, of course.
	if(pulse == PULSE_NONE)
		if(prob(25) owner.resuscitate()
			to_chat(owner, SPAN_DANGER("You feel your secondary heart kick-start your circulation"))
			regenerate_blood(100)
		else	
			return
	else //and if it's beating, let's see if it should
		var/should_stop = prob(80) && owner.get_blood_circulation() < BLOOD_VOLUME_SURVIVE //cardiovascular shock, not enough liquid to pump
		if(should_stop) // The heart has stopped due to going into traumatic or cardiovascular shock.
			to_chat(owner, SPAN_DANGER("Your primary heart has stopped!"))
			pulse = PULSE_NONE
			return

	// Pulse normally shouldn't go above PULSE_2FAST, unless extreme amounts of bad stuff in blood
	if (pulse_mod < 6)
		pulse = clamp(PULSE_NORM + pulse_mod, PULSE_SLOW, PULSE_2FAST)
	else
		pulse = clamp(PULSE_NORM + pulse_mod, PULSE_SLOW, PULSE_THREADY)

	// If fibrillation, then it can be PULSE_THREADY
	var/fibrillation = oxy <= BLOOD_VOLUME_SURVIVE || (prob(30) && owner.shock_stage > 120)
	if(pulse && fibrillation)	//I SAID MOAR OXYGEN
		pulse = PULSE_THREADY

	// Stablising chemicals pull the heartbeat towards the center
	if(pulse != PULSE_NORM && is_stable)
		if(pulse > PULSE_NORM)
			pulse--
		else
			pulse++

/obj/item/organ/internal/heart/astartes/proc/handle_heartbeat()
	if(pulse >= PULSE_2FAST || owner.shock_stage >= 10 || is_below_sound_pressure(get_turf(owner)))
		//PULSE_THREADY - maximum value for pulse, currently it 5.
		//High pulse value corresponds to a fast rate of heartbeat.
		//Divided by 2, otherwise it is too slow.
		var/rate = (PULSE_THREADY - pulse)/2
		if(owner.chem_effects[CE_PULSE] > 2)
			heartbeat++

		if(heartbeat >= rate)
			heartbeat = 0
			sound_to(owner, sound(beat_sound,0,0,0,50))
		else
			heartbeat++

/obj/item/organ/internal/heart/astartes/proc/handle_blood()

	if(!owner)
		return

	//Dead or cryosleep people do not pump the blood.
	if(!owner || owner.InStasis() || owner.stat == DEAD || owner.bodytemperature < 170)
		return

	if(pulse != PULSE_NONE || BP_IS_ROBOTIC(src))
		//Bleeding out
		var/blood_max = 0
		var/list/do_spray = list()
		for(var/obj/item/organ/external/temp in owner.organs)

			if(BP_IS_ROBOTIC(temp))
				continue

			var/open_wound
			if(temp.status & ORGAN_BLEEDING)

				for(var/datum/wound/W in temp.wounds)

					if (!open_wound && (W.damage_type == INJURY_TYPE_CUT || W.damage_type == INJURY_TYPE_PIERCE) && W.damage && !W.is_treated())
						open_wound = TRUE

					if(W.bleeding())
						if(temp.applied_pressure)
							if(ishuman(temp.applied_pressure))
								var/mob/living/carbon/human/H = temp.applied_pressure
								H.bloody_hands(src, 0)
							//somehow you can apply pressure to every wound on the organ at the same time
							//you're basically forced to do nothing at all, so let's make it pretty effective
							var/min_eff_damage = max(0, W.damage - 10) / 6 //still want a little bit to drip out, for effect
							blood_max += max(min_eff_damage, W.damage - 30) / 40
						else
							blood_max += W.damage / 40

			if(temp.status & ORGAN_ARTERY_CUT)
				var/bleed_amount = floor((owner.vessel.total_volume / (temp.applied_pressure || !open_wound ? 400 : 250))*temp.arterial_bleed_severity)
				if(bleed_amount)
					if(open_wound)
						blood_max += bleed_amount
						do_spray += "[temp.name]"
					else
						owner.vessel.remove_reagent(/datum/reagent/blood, bleed_amount)

		switch(pulse)
			if(PULSE_SLOW)
				blood_max *= 0.2
			if(PULSE_FAST)
				blood_max *= 0.6
			if(PULSE_2FAST, PULSE_THREADY)
				blood_max *= 0.8

		if(CE_STABLE in owner.chem_effects) // inaprovaline
			blood_max *= 0.2

		if(world.time >= next_blood_squirt && istype(owner.loc, /turf) && length(do_spray))
			var/spray_organ = pick(do_spray)
			owner.visible_message(
				SPAN_DANGER("Blood sprays out from \the [owner]'s [spray_organ]!"),
				FONT_HUGE(SPAN_DANGER("Blood sprays out from your [spray_organ]!"))
			)

			//AB occurs every heartbeat, this only throttles the visible effect
			next_blood_squirt = world.time + 80
			var/turf/sprayloc = get_turf(owner)
			blood_max -= owner.drip(ceil(blood_max/3), sprayloc)
			if(blood_max > 0)
				blood_max -= owner.blood_squirt(blood_max, sprayloc)
				if(blood_max > 0)
					owner.drip(blood_max, get_turf(owner))
		else
			owner.drip(blood_max)

/obj/item/organ/internal/heart/astartes/proc/is_working()
	if(!is_usable())
		return FALSE

	return pulse > PULSE_NONE || BP_IS_ROBOTIC(src) || (owner.status_flags & FAKEDEATH)

/obj/item/organ/internal/heart/astartes/listen()
	if(!pulse || (owner.status_flags & FAKEDEATH))
		return "no pulse"

	var/pulsesound = "twin heartbeats"
	if(is_bruised())
		pulsesound = "irregular"

	switch(pulse)
		if(PULSE_SLOW)
			pulsesound = "slow"
		if(PULSE_FAST)
			pulsesound = "fast"
		if(PULSE_2FAST)
			pulsesound = "very fast"
		if(PULSE_THREADY)
			pulsesound = "extremely fast and faint"

	. = "[pulsesound] pulse"
