GLOBAL_DATUM_INIT(paramounts, /datum/antagonist/paramount, new)

/datum/antagonist/paramount
	id = MODE_PARAMOUNT
	role_text = "Rogue Psyker"
	role_text_plural = "Rogue Psykers"
	landmark_id = "ninjastart"
	welcome_text = "<span class='info'>Blessed, or perhaps cursed with powerful abilities as a Psyker, and missed by the dreaded Black-Ships, you were never sanctified, and have been driven insane by the howling voices of the Warp. Enhance the causes of the Dark Gods, or seek only your own survival.</span>"
	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_RANDSPAWN | ANTAG_SET_APPEARANCE
	antaghud_indicator = "hudwizard"
	initial_spawn_req = 1
	initial_spawn_target = 1
	hard_cap = 1
	hard_cap_round = 3
	min_player_age = 18
	id_type = /obj/item/card/id/syndicate
	faction = "paramount"

/datum/antagonist/paramount/equip(mob/living/carbon/human/player)

	if(!..())
		return 0

	player.set_psi_rank(PSI_BIOMANCY, 4,     defer_update = TRUE)
	player.set_psi_rank(PSI_TELEPATHY, 4,      defer_update = TRUE)
	player.set_psi_rank(PSI_TELEKINESIS, 4, defer_update = TRUE)
	player.set_psi_rank(PSI_PYROKINESIS, 4,   defer_update = TRUE)
	player.psi.update(TRUE)

	player.equip_to_slot_or_del(new /obj/item/clothing/under/psysuit(player), slot_w_uniform)
	player.equip_to_slot_or_del(new /obj/item/clothing/suit/wizrobe/psypurple(player), slot_wear_suit)
	player.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(player), slot_shoes)
	player.equip_to_slot_or_del(new /obj/item/storage/backpack/satchel(player), slot_back)
	var/obj/item/clothing/gloves/color/gloves = new()
	gloves.color = COLOR_GRAY80
	player.equip_to_slot_or_del(gloves, slot_gloves)
	//player.internal_organs_by_name["frontal lobe"] = new /obj/item/organ/internal/corona_pollentia(player) //TODO //Oh, cool, Worm reference. 
	return 1

/datum/antagonist/paramount/create_objectives(datum/mind/player)

	if(!..())
		return
	// Copied from ninja for now.
	var/objective_list = list(1,2,3)
	for(var/i=rand(2,3),i>0,i--)
		switch(pick(objective_list))
			if(1)//Kill
				var/datum/objective/assassinate/objective = new
				objective.owner = player
				objective.target = objective.find_target()
				if(objective.target != "Free Objective")
					player.objectives += objective
				else
					i++
				objective_list -= 1 // No more than one kill objective
			if(2)//Protect
				var/datum/objective/protect/objective = new
				objective.owner = player
				objective.target = objective.find_target()
				if(objective.target != "Free Objective")
					player.objectives += objective
				else
					i++
					objective_list -= 3
			if(3)//Harm
				var/datum/objective/harm/objective = new
				objective.owner = player
				objective.target = objective.find_target()
				if(objective.target != "Free Objective")
					player.objectives += objective
				else
					i++
					objective_list -= 4

	var/datum/objective/survive/objective = new
	objective.owner = player
	player.objectives += objective
