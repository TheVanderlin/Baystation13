#include "playablecolony_radio.dm"

/datum/map_template/ruin/exoplanet/playablecolony
	name = "established colony"
	id = "playablecolony"
	description = "a fully functional colony on the frontier of settled space"
	suffixes = list("playablecolony/colony.dmm")
	spawn_cost = 4
	player_cost = 0
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN|RUIN_HABITAT
	ban_ruins = list(/datum/map_template/ruin/exoplanet/playablecolony2) // add /datum/map_template/ruin/away_site/demeter_wreck also search; /datum/map_template/ruin/exoplanet and add loads of ruins
	apc_test_exempt_areas = list(
		/area/map_template/colony/mineralprocessing = NO_SCRUBBER|NO_VENT
	)
	spawn_weight = 3

/singleton/submap_archetype/playablecolony
	descriptor = "established colony"
	crew_jobs = list(/datum/job/submap/colonistsisterw, /datum/job/submap/colonistpathfinder, /datum/job/submap/colonist, /datum/job/submap/colonist_noble)

/obj/submap_landmark/spawnpoint/colonist_spawn
	name = "Landed Tribal"

/obj/submap_landmark/spawnpoint/colonist_spawn_noble
	name = "Paladin"

/obj/submap_landmark/spawnpoint/colonist_spawn_pathfinder
	name = "Pathfinder"

/obj/submap_landmark/spawnpoint/colonist_spawn_sister
	name = "Sister Seraphim"

/obj/submap_landmark/joinable_submap/colony
	name = "Established Colony"
	archetype = /singleton/submap_archetype/playablecolony

/datum/job/submap/colonistsisterw
	title = "Sister Seraphim"
	info = "You are part of an established colony on the edge of the Ghoul Stars, far from the Imperium's reach. The outpost stands as a solitary bastion amidst the unknown, its purpose and survival intertwined with the mysteries of this distant frontier."
	outfit_type = /singleton/hierarchy/outfit/job/survivor/sister
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	total_positions = 0
	skill_points = 10
	min_skill = list(
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER,
		SKILL_VIGOR = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_PRIMARIS,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/colonistsisterw/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE SISTER OF BATTLE</font></b></span>") // add order variants
	to_chat(H, "<span class='notice'><b><font size=2>As a Sister of the Sacred Rose, your devotion to the God-Emperor shines with unshakable discipline. Known for composure under fire, you advance with the certainty of one held in faith’s embrace. You carry His light into the blackest of battles, bringing swift retribution in service to humanity’s salvation. You are the shield against the dark.</font></b></span>")
	if(prob(1))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(1))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.fully_replace_character_name("Seraphim [current_name]")
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.weaken_mod = 0.61
	H.species.stun_mod = 0.61
	H.species.slowdown = -0.2
	return ..()

/datum/job/submap/colonist_noble
	title = "Landed Paladin"
	supervisors = "the trust of your fellow Colonists"
	info = "You are part of an established colony on the edge of the Ghoul Stars, far from the Imperium's reach. The outpost stands as a solitary bastion amidst the unknown, its purpose and survival intertwined with the mysteries of this distant frontier."
	total_positions = 2
	outfit_type = /singleton/hierarchy/outfit/job/colonist
	skill_points = 27 // 3 more points then deck scum
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 8
	min_skill = list(
		SKILL_VIGOR = SKILL_MASTER,
		SKILL_COMBAT = SKILL_MASTER,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/colonist_noble/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE PALADIN</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Paladin living within a colony, you’re a disgraced zealot of the Ecclesiarchy turned sellsword. Once a staunch defender of faith, you now roam the stars seeking redemption and purpose, willing to take on any job that aligns with your warped sense of righteousness.</font></b></span>")
	if(prob(2))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(2))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.weaken_mod = 0.71
	H.species.stun_mod = 0.71
	H.species.slowdown = -0.1
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/shield/riot/metal, slot_r_hand)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/shield/buckler, slot_r_hand)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/broadsword/adamantine, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/hero, slot_head)
	else if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate/brigandine, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/cutro/adamantine, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hauberk, slot_head)
	else if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/hauberkheavy, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/bardiche/adamantine, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm, slot_head)
	else if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/breastplate, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/spear/fuscina/adamantine, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/siege, slot_head)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/cuirass, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/saintie/adamantine, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/feudal, slot_head)
	return ..()

/datum/job/submap/colonistpathfinder
	title = "Pathfinder"
	supervisors = "the trust of your fellow Colonists"
	info = "You are part of an established colony on the edge of the Ghoul Stars, far from the Imperium's reach. The outpost stands as a solitary bastion amidst the unknown, its purpose and survival intertwined with the mysteries of this distant frontier."
	total_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/colonist
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 10
	min_skill = list(,
		SKILL_VIGOR = SKILL_MASTER,
		SKILL_GUNS = SKILL_EXPERIENCED,
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

/datum/job/submap/colonistpathfinder/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE PATHFINDER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Pathfinder, you’re tasked with leading the way on deadly planets and through uncharted terrain, scouring every grim corner for threats and relics.</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/bowie, slot_in_backpack)
	if(prob(5))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(5))
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
	return ..()


/datum/job/submap/colonist
	title = "Landed Tribal"
	supervisors = "the trust of your fellow Colonists"
	info = "You are part of an established colony on the edge of the Ghoul Stars, far from the Imperium's reach. The outpost stands as a solitary bastion amidst the unknown, its purpose and survival intertwined with the mysteries of this distant frontier."
	total_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/colonist
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 10
	min_skill = list(
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED,
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

/datum/job/submap/colonist/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE TRIBAL</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Tribal, you’re a hardy settler, navigating harsh environments and ensuring the survival of your people on the frontier.</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/abaya, slot_w_uniform)
	if(prob(4))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(4))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	if(prob(40))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/reconhood, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/tribal, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/spear/adamantine, slot_belt)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/bone, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/tribal/plate, slot_wear_suit)
		if(prob(30))
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe/saintie/adamantine, slot_belt)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/chopper/heavy/adamantine, slot_belt)
	return ..()

/*
		else if(current_title == "Miner")
			to_chat(H,"<span class='danger'><b><font size=4>THE MINER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a Miner in the Ghoul Stars, you’re among the first to dig into hostile ground, pulling out the resources to keep the settlement going. It’s unforgiving work, where survival means knowing your tools and keeping your wits about you.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.species.brute_mod = 0.71
			H.species.weaken_mod = 0.73
			H.species.stun_mod = 0.73
			if(prob(4))
				H.make_genestealer()
				to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
			else if(prob(4))
				to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
				spawn(30 SECONDS)
				GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
				to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand/diamond, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/hero, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/blred, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/holyplate/brigandine, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand/diamond, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hauberk, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/grey, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/hauberkheavy, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand/diamond, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm, slot_head)
			else if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/breastplate, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand/diamond, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/siege, slot_head)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/cuirass, slot_wear_suit)
				H.equip_to_slot_or_store_or_drop(new /obj/item/pickaxe/hand/diamond, slot_l_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/hevhelm/feudal, slot_head)
				H.equip_to_slot_or_store_or_drop(new /obj/item/book/manual/chef_recipes(get_turf(src)))
				*/

/singleton/hierarchy/outfit/job/colonist
	name = OUTFIT_JOB_NAME("Landed Tribal")
	id_types = null
	pda_type = null
	l_ear = /obj/item/device/radio/headset/map_preset/playablecolony
	uniform = null
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/device/flashlight/lantern
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	gloves = /obj/item/clothing/gloves/thick/leather
	belt = null
	back = /obj/item/storage/backpack/satchel/leather
	id_types = null
	pda_type = /obj/item/modular_computer/pda
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/spacecash/bundle/c500 = 1)

// Areas //
/area/map_template/colony
	name = "\improper Colony Hallways"
	icon_state = "halls"
	icon = 'maps/random_ruins/exoplanet_ruins/playablecolony/colony.dmi'
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/map_template/colony/engineering
	name = "\improper Colony Engineering"
	icon_state = "processing"

/area/map_template/colony/atmospherics
	name = "\improper Colony Atmospherics"
	icon_state = "shipping"

/area/map_template/colony/bathroom
	name = "\improper Colony Lavatory"
	icon_state = "shower"

/area/map_template/colony/commons
	name = "\improper Colony Common Area"
	icon_state = "A"

/area/map_template/colony/messhall
	name = "\improper Colony Mess Hall"
	icon_state = "B"

/area/map_template/colony/tcomms
	name = "\improper Colony Secure Storage"
	icon_state = "C"

/area/map_template/colony/jail
	name = "\improper Colony Jail"
	icon_state = "D"

/area/map_template/colony/armory
	name = "\improper Colony Armory"
	icon_state = "F"

/area/map_template/colony/hydroponics
	name = "\improper Colony Hydroponics Bay"
	icon_state = "X"

/area/map_template/colony/airlock
	name = "\improper Colony Primary External Airlock"
	icon_state = "airlock"

/area/map_template/colony/medbay
	name = "\improper Colony Hospital"
	icon_state = "D"

/area/map_template/colony/surgery
	name = "\improper Colony Operating Theatre"
	icon_state = "F"

/area/map_template/colony/mineralprocessing
	name = "\improper Colony Mining Bay"
	icon_state = "A"

/area/map_template/colony/command
	name = "\improper Colony Operations Center"
	icon_state = "B"

/area/map_template/colony/dorms
	name = "\improper Colony Dormitories"
	icon_state = "C"
