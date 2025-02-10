/obj/item/organ/internal/liver/astartes //Oolitic kidneys do the filtering for astartes, so this is relegated to just blood replenishment and bleed stopping.
	name = "larraman's organ"
	icon_state = "liver"
	w_class = ITEM_SIZE_SMALL
	organ_tag = BP_LIVER
	parent_organ = BP_GROIN
	min_bruised_damage = 25
	min_broken_damage = 45
	max_damage = 70
	relative_size = 60

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
