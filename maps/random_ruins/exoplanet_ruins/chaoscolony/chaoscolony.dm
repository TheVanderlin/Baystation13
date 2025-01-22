/datum/map_template/ruin/exoplanet/chaoscolony
	name = "chaos colony"
	id = "chaoscolony"
	description = "a chaos penal world held by a savage warband in service to a powerful chaos magister"
	suffixes = list("chaoscolony/chaoscolony.dmm")
	spawn_cost = 4
	player_cost = 0
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN|RUIN_HABITAT
	apc_test_exempt_areas = list(
		/area/map_template/chaoscolony/mineralprocessing = NO_SCRUBBER|NO_VENT
	)
	spawn_weight = 4

/singleton/submap_archetype/chaoscolony
	descriptor = "chaos colony"
	crew_jobs = list(/datum/job/submap/bloodpactmagir, /datum/job/submap/bloodpactsoldier, /datum/job/submap/prisoner)

/obj/submap_landmark/spawnpoint/chaos_spawn
	name = "Prisoner"

/obj/submap_landmark/spawnpoint/chaos2_spawn
	name = "Bloodpact Magir"

/obj/submap_landmark/spawnpoint/chaos3_spawn
	name = "Bloodpact Soldier"

/obj/submap_landmark/joinable_submap/ccolony
	name = "Chaos Colony"
	archetype = /singleton/submap_archetype/chaoscolony


/datum/job/submap/bloodpactmagir
	title = "Bloodpact Magir"
	supervisors = "the Magister and the Archon"
	info = "As the Magir commanding a captured Imperial colony, you’re a devout enforcer of the Blood Pact’s will. Once a nameless trooper in the Archon’s butcher legions, you’ve slaughtered your way to authority, forging the enslaved populace into a living testament to Khorne’s dominion and your unquenchable thirst for conquest."
	total_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/ccolony/bloodpact/magir
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 9
	min_skill = list(
		SKILL_VIGOR = SKILL_MASTER,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/bloodpactmagir/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("Magir [current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE MAGIR/font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Magir commanding a captured Imperial colony, you’re a devout enforcer of the Blood Pact’s will. Once a nameless trooper in the Archon’s butcher legions, you’ve slaughtered your way to authority, forging the enslaved populace into a living testament to Khorne’s dominion and your unquenchable thirst for conquest.</font></b></span>")
	GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
	to_chat(H, "<span class='notice'><b><font size=2>You are a bloodpact soldier loyal to the Chaos Magister Sek -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.species.brute_mod = 0.6
	H.species.burn_mod = 0.6
	H.species.weaken_mod = 0.61
	H.species.stun_mod = 0.61
	H.species.slowdown = -0.15
	return ..()

/datum/job/submap/bloodpactsoldier
	title = "Bloodpact Soldier"
	supervisors = "the trust of your Magir"
	info = "As a rank-and-file enforcer within the captured colony, you’re the sharpened blade of the Blood Pact’s dominion. Once a nameless marauder plucked from a war-torn backwater, you now revel in unleashed brutality, ever eager to spill blood in the Magister's name."
	total_positions = 4
	outfit_type = /singleton/hierarchy/outfit/job/ccolony/bloodpact
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 8
	min_skill = list(
		SKILL_VIGOR = SKILL_MASTER,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_MASTER
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/bloodpactsoldier/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("Trooper [current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE BLOODPACT SOLDIER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As a rank-and-file enforcer within the captured colony, you’re the sharpened blade of the Blood Pact’s dominion. Once a nameless marauder plucked from a war-torn backwater, you now revel in unleashed brutality, ever eager to spill blood in the Magister's name.</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/bowie, slot_in_backpack)
	GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
	to_chat(H, "<span class='notice'><b><font size=2>You are a bloodpact soldier loyal to the Chaos Magister Sek -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.weaken_mod = 0.71
	H.species.stun_mod = 0.71
	H.species.slowdown = -0.1
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
	return ..()


/datum/job/submap/prisoner
	title = "Prisoner"
	supervisors = "the trust of your fellow Slaves"
	info = "As an Imperial captive bound to the Blood Pact’s tyranny, you live in a world of unrelenting terror. Once a loyal subject of the Throne, you now subsist in chains, clinging to desperate prayer in the hope that the Emperor’s light might one day shatter your cruel captivity."
	total_positions = 3
	outfit_type = /singleton/hierarchy/outfit/job/ccolony
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 9
	min_skill = list(
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER)

/datum/job/submap/prisoner/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE PRISONER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As an Imperial captive bound to the Blood Pact’s tyranny, you live in a world of unrelenting terror. Once a loyal subject of the Throne, you now subsist in chains, clinging to desperate prayer in the hope that the Emperor’s light might one day shatter your cruel captivity.</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/glaive, slot_belt)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
	H.species.weaken_mod = 0.65
	H.species.stun_mod = 0.65
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.7
	if(prob(10))
		H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
		H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
		H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
		H.species.heat_level_1 = 600
		H.species.heat_level_2 = 700
		H.species.heat_level_3 = 2000
		H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
		H.species.hazard_low_pressure = -1
		H.species.brute_mod = 0.8 // This particular tech priest is weaker then most humans.
		H.species.burn_mod = 0.7
		H.species.toxins_mod = 0.8
		H.species.radiation_mod = 0.6
		H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.5
		H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/mask/gas/techpriest, slot_wear_mask)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/shoes/jackboots/skitshoes/techpriest, slot_shoes)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/engineer, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/gloves/thick/swat/techpriest, slot_gloves)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/techpriest, slot_back)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/mechanicus/techpriest, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/survival, slot_in_backpack)
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/wrist_blade, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/iatric_monitor, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/internal_air_system, slot_in_backpack)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/popout_shotgun, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/polytool/engineer, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/implant/translator, slot_in_backpack)
	else
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
		if(prob(20))
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/flakcuirass, slot_wear_suit)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/heavyflak, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/autogun/ap, slot_in_backpack)
		else if(prob(25))
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/bountyhunter, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/bountyhead, slot_head)
		else if(prob(25))
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapacecuirass, slot_wear_suit)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/autogunheavy, slot_in_backpack)
		else if(prob(20))
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace3, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/heavy/ap, slot_in_backpack)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace2, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/clip/stub/ms, slot_in_backpack)
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
				to_chat(H, "<span class='notice'><b><font size=2>You are a bloodpact soldier loyal to the Chaos Magister Sek -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
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

/singleton/hierarchy/outfit/job/ccolony
	name = OUTFIT_JOB_NAME("Chaos Colony")
	id_types = null
	pda_type = null
	l_ear = /obj/item/device/radio/headset/map_preset/playablecolony
	uniform = null
	r_pocket = /obj/item/device/radio/map_preset/playablecolony
	l_pocket = /obj/item/device/flashlight/lantern
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	gloves = /obj/item/clothing/gloves/thick/leather
	belt = null
	back = /obj/item/storage/backpack/satchel/leather
	id_types = null
	pda_type = /obj/item/modular_computer/pda
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/pen/fancy/quill = 1, /obj/item/spacecash/bundle/c500 = 1)

/singleton/hierarchy/outfit/job/ccolony/bloodpact
	name = OUTFIT_JOB_NAME("Chaos Colony")
	id_types = null
	pda_type = null
	uniform = /obj/item/clothing/under/tactical
	suit = /obj/item/clothing/suit/armor/grim/cult/bloodpact
	mask = /obj/item/clothing/mask/gas/security/bloodpact
	head = /obj/item/clothing/head/helmet/flak/chaos/bloodpact
	shoes = /obj/item/clothing/shoes/jackboots/cadian
	gloves = /obj/item/clothing/gloves/thick/swat/combat
	l_hand = /obj/item/gun/energy/lasgun/triplex
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	id_types = null
	pda_type = /obj/item/modular_computer/pda
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/pen/fancy/quill = 1, /obj/item/spacecash/bundle/c500 = 1)

/singleton/hierarchy/outfit/job/ccolony/bloodpact/magir
	name = OUTFIT_JOB_NAME("Chaos Colony")
	l_hand = /obj/item/gun/projectile/automatic/boltrifle/lockebolter/drusian


// Areas //
/area/map_template/chaoscolony
	name = "\improper Colony Hallways"
	icon_state = "halls"
	icon = 'maps/random_ruins/exoplanet_ruins/playablecolony/colony.dmi'
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/map_template/chaoscolony/engineering
	name = "\improper Colony Engineering"
	icon_state = "processing"

/area/map_template/chaoscolony/atmospherics
	name = "\improper Colony Atmospherics"
	icon_state = "shipping"

/area/map_template/chaoscolony/bathroom
	name = "\improper Colony Lavatory"
	icon_state = "shower"

/area/map_template/chaoscolony/commons
	name = "\improper Colony Common Area"
	icon_state = "A"

/area/map_template/chaoscolony/messhall
	name = "\improper Colony Mess Hall"
	icon_state = "B"

/area/map_template/chaoscolony/tcomms
	name = "\improper Colony Secure Storage"
	icon_state = "C"

/area/map_template/chaoscolony/jail
	name = "\improper Colony Jail"
	icon_state = "D"

/area/map_template/chaoscolony/armory
	name = "\improper Colony Armory"
	icon_state = "F"

/area/map_template/chaoscolony/hydroponics
	name = "\improper Colony Hydroponics Bay"
	icon_state = "X"

/area/map_template/chaoscolony/airlock
	name = "\improper Colony Primary External Airlock"
	icon_state = "airlock"

/area/map_template/chaoscolony/medbay
	name = "\improper Colony Hospital"
	icon_state = "D"

/area/map_template/chaoscolony/surgery
	name = "\improper Colony Operating Theatre"
	icon_state = "F"

/area/map_template/chaoscolony/mineralprocessing
	name = "\improper Colony Mining Bay"
	icon_state = "A"

/area/map_template/chaoscolony/command
	name = "\improper Colony Operations Center"
	icon_state = "B"

/area/map_template/chaoscolony/dorms
	name = "\improper Colony Dormitories"
	icon_state = "C"
