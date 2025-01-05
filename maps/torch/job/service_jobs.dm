
/datum/job/chaplain_militant
	title = "Chaplain Militant" // alt roles; confessor
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 40
	economic_power = 6
	minimal_player_age = 0
	supervisors = "the God Emperor"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chaplain
	allowed_branches = list(
		/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ)
	skill_points = 20
	min_skill = list(
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_VIGOR = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND)

	access = list(
		access_dauntless, access_restricted, access_medical,
		access_medical_command, access_bridge)

/datum/job/chaplain_militant/get_description_blurb()
	return "The Chaplain Militant, spiritual guide and zealous warrior, leads prayers, upholds the Emperor’s light, and strikes down heresy to keep faith alive amid the void’s perils."

/datum/job/chaplain_militant/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("Chaplain [current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title


/datum/job/chamber_assistant
	title = "Chamber Assistant"
	department = "Service"
	department_flag = SRV // alt roles; Agri-worker. Servant.
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chaplain Militant or Tavern Keeper"
	create_record = FALSE
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/janitor
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 22
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER)
	access = list(
		access_dauntless, access_restricted, access_medical)

/datum/job/chamber_assistant/get_description_blurb()
	return "The Chamber Assistant, one of many shipbound drudges, seeks employment wherever their labor can be tolerated. Whether scrubbing quarters, hauling provisions, or serving the needs of officers and crew, they toil in obscurity, hoping their service earns them a measure of survival aboard the Dauntless."

/datum/job/chamber_assistant/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.verbs += /mob/living/proc/set_ambition

/datum/job/chamber_magister
	title = "Tavern Keeper" // alt_titles; innkeeper. gets shotgun. magister has a las pistol.
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 20)
	supervisors = "the Rogue Trader"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/magister
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER)
	access = list(
		access_dauntless, access_tavern, access_tavernback, access_tavern2, access_tavern3, access_tavern4, access_mechanicus, access_medical)

/datum/job/chamber_magister/get_description_blurb()
	return "The Tavern Keeper, master of the ship’s notorious two-level hab bar and motel, ensures the establishment thrives as a haven for revelry, intrigue, and shady dealings. Responsible for managing the flow of drinks, maintaining order among the unruly patrons, and overseeing the hab quarters, they balance the demands of the crew’s indulgences with a firm grip on the chaos."

/datum/job/chamber_magister/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.verbs += /mob/living/proc/set_ambition

/datum/job/noble_guest
	title = "Noble Heir" // alt titles; noble heir, planetary governor, xenos ambassador(use the tithe to_world stuff for this)
	department = "Supply"
	department_flag = SUP
	create_record = FALSE
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Executive Officer"
	economic_power = 5
	minimal_player_age = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/guest
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/fleet/e6,
		/datum/mil_rank/ec/e7,
		/datum/mil_rank/fleet/e7,
		/datum/mil_rank/fleet/e8
	)
	skill_points = 26
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_VIGOR = SKILL_BASIC,
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/supply,
							 /datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/unexpected_guest
	title = "Gang Boss"
	department = "Supply" // Gang Leader, etc.
	department_flag = SUP
	create_record = FALSE
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Deck Boss"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/crewman
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/contractor)
	economic_power = 7
	skill_points = 20
	min_skill = list(
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_PILOT = SKILL_MASTER)

	access = list(
		access_dauntless, access_mechanicus)

/datum/job/unexpected_guest/get_description_blurb()
	return "An Unexpected Guest, you’re an outsider here on the Dauntless. Whether a stowaway or here on legitamete business, you’re here with your own purpose unknown to the rest of the crew."

/datum/job/unexpected_guest/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE GANG BOSS</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/dufflebag/gangerloot, slot_l_hand)
	H.species.brute_mod = 0.7
	H.species.weaken_mod = 0.7
	H.species.stun_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.toxins_mod = 0.75
	H.species.radiation_mod = 0.65
	H.verbs += /mob/living/proc/set_ambition

/datum/job/deck_scum
	title = "Deck Scum"
	department = "Supply"
	department_flag = SUP
	total_positions = 10
	spawn_positions = 10
	create_record = FALSE
	supervisors = "..."
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/crewman
	alt_titles = list(
		"Penitent",
		"Pathfinder",
		"Miner"

	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	access = list(
		access_dauntless, access_mechanicus)

	skill_points = 18
	min_skill = list(
		SKILL_VIGOR = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_ELECTRICAL = SKILL_TRAINED
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/deck_scum/get_description_blurb()
	return "As Deck Scum, you’re the bottom rung, drifting through whatever job you’re handed next. Your service may be a punishment for a crime, it may be that you were stolen from your world and enslaved, or worse... that you chose this life for yourself. You are a dredge of society now, an outcast, surviving in the underbelly of the Rogue Trader's corvette."

/datum/job/deck_scum/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Penitent" || current_title == "Deck Scum" || current_title == "Pathfinder" || current_title == "Miner")
		if(current_title == "Penitent")
			if(prob(85))
				to_chat(H,"<span class='danger'><b><font size=4>THE PENITENT</font></b></span>")
				to_chat(H, "<span class='notice'><b><font size=2>As the Penitent, you are condemned to suffer for your past crimes, undertaking the most dangerous and brutal tasks, hoping to earn absolution through relentless service to the Imperium.</font></b></span>")
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/penitent, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/penitent, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimcap/pleb, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
				H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
				H.species.weaken_mod = 0.75
				H.species.stun_mod = 0.75
			else
				to_chat(H,"<span class='danger'><b><font size=4>THE OPERATIVE</font></b></span>")
				to_chat(H, "<span class='notice'><b><font size=2>As the operative you are here under false pretense, masquerading as a Crewman. In this role you must further the aims of your secret benefactor by whatever means necessary(make something up)</font></b></span>")
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/metal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/duster, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/stub/talon, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/pistol/small/ap, slot_in_backpack)
		else if(current_title == "Pathfinder")
			to_chat(H,"<span class='danger'><b><font size=4>THE PATHFINDER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Pathfinder, you’re tasked with leading the way on deadly planets and through uncharted terrain, scouring every grim corner for threats and relics.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/trench, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/dufflebag, slot_l_hand)
			if(prob(1))
				H.make_genestealer()
				to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
			else if(prob(1))
				to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
				spawn(30 SECONDS)
				GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
				to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
			if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/ranger2, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/book/manual/chef_recipes(get_turf(src)))
			else if(prob(10))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger/alt, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/ranger3, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/metal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/duster, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
		else if(current_title == "Deck Scum")
			to_chat(H,"<span class='danger'><b><font size=4>DECK SCUM</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As Deck Scum, you’re the bottom rung, drifting through whatever job you’re handed next. Your service may be a punishment for a crime, it may be that you were stolen from your world and enslaved, or worse... that you chose this life for yourself. You are a dredge of society now, an outcast, surviving in the underbelly of the Rogue Trader's corvette.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.species.weaken_mod = 0.75
			H.species.stun_mod = 0.75
			if(prob(1))
				H.make_genestealer()
				to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
			else if(prob(1))
				to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
				spawn(30 SECONDS)
				GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
				to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/smuggler, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/steroid, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/steroid, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/steroid, slot_in_backpack)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/leatherjacket, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/syringe/drugs, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/pill/zoom, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/dropper/peridaxon, slot_in_backpack)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/slumcoat, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatpain, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/antirad, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatstim, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/book/manual/chef_recipes(get_turf(src)))
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/scum, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/mindbreaker, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/detox, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/pain, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/mindbreaker, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/detox, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/pain, slot_in_backpack)
		else if(current_title == "Miner")
			to_chat(H,"<span class='danger'><b><font size=4>THE MINER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a Miner on the Dauntless, you’re thrown into asteroid fields and dead worlds, forced to strip them clean for the Rogue Trader’s gain. Whether by debt, punishment, or desperation, you’re here for a reason, and the work is brutal. Dust, darkness, and the constant risk of collapse or worse—it’s all part of survival aboard this ship.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.species.brute_mod = 0.71
			H.species.weaken_mod = 0.73
			H.species.stun_mod = 0.73
			if(prob(1))
				H.make_genestealer()
				to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
			else if(prob(1))
				to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
				spawn(30 SECONDS)
				GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
				to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/hero, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate/brigandine, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hauberk, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/hauberkheavy, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/breastplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/siege, slot_head)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/cuirass, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/feudal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/book/manual/chef_recipes(get_turf(src)))
	return ..()

/datum/job/qm
	title = "Chief Steward"
	department = "Service"
	department_flag = SRV
	total_positions = 1
	spawn_positions = 1
	minimum_character_age = list(SPECIES_HUMAN = 28)
	ideal_character_age = 35
	economic_power = 6
	minimal_player_age = 7
	supervisors = "the Executive Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/service/chief_steward
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	min_skill = list( // 9 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_COOKING = SKILL_TRAINED, // 2 points
		SKILL_BOTANY = SKILL_BASIC, // 1 point
		SKILL_CHEMISTRY = SKILL_BASIC // 4 points
	)
	access = list(
		access_bridge,
		access_torch_fax,
		access_chief_steward,
		access_solgov_crew,
		access_radio_comm,
		access_radio_serv,
		access_magos,
		access_janitor,
		access_commissary,
		access_hydroponics,
		access_kitchen,
		access_o_mess
	)
