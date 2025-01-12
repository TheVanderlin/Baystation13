#include "playablecolony2_radio.dm"

/datum/map_template/ruin/exoplanet/playablecolony2
	name = "Landed Colony Ship"
	id = "playablecolony2" // later add the sister hospitaller.
	description = "a recently landed colony ship"
	suffixes = list("playablecolony2/colony2.dmm")
	spawn_cost = 3.5
	player_cost = 0
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_NO_RADS
	ruin_tags = RUIN_HUMAN|RUIN_HABITAT
	ban_ruins = list(/datum/map_template/ruin/exoplanet/playablecolony) // add /datum/map_template/ruin/away_site/demeter_wreck also search; /datum/map_template/ruin/exoplanet and add loads of ruins
	apc_test_exempt_areas = list(
		/area/map_template/colony2/external = NO_SCRUBBER|NO_VENT
	)
	spawn_weight = 0

/singleton/submap_archetype/playablecolony2
	descriptor = "landed colony ship"
	crew_jobs = list(/datum/job/submap/colonist2repentia, /datum/job/submap/colonist2_pdf, /datum/job/submap/colonist2)

/obj/submap_landmark/spawnpoint/colonist_spawn2
	name = "Ship Colonist"

/obj/submap_landmark/spawnpoint/colonist_spawn2_noble
	name = "Deserter"

/obj/submap_landmark/spawnpoint/colonist_spawn2_heretek
	name = "Ship Heretek"

/obj/submap_landmark/spawnpoint/colonist_spawn2_repentia
	name = "Sister Repentia"

/obj/submap_landmark/joinable_submap/colony2
	name = "Landed Colony Ship"
	archetype = /singleton/submap_archetype/playablecolony2

/datum/job/submap/colonist2repentia
	title = "Sister Repentia"
	info = "Once bound for a new world, your colony ship was torn from the warp and crashed on an uncharted planet. Now stranded in the Ghoul Stars, you face an unforgiving wilderness and the unknown horrors that await."
	outfit_type = /singleton/hierarchy/outfit/job/survivor/sister/repentia
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	total_positions = 0
	skill_points = 15
	min_skill = list(
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER,
		SKILL_VIGOR = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_PRIMARIS,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/colonist2repentia/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE SISTER OF BATTLE</font></b></span>") // add order variants
	to_chat(H, "<span class='notice'><b><font size=2>Fallen from grace, you walk the path of the Repentia, seeking redemption through suffering and unyielding faith. Cast out from the rank of your sisters, you’ve taken a sacred vow, bearing pain as penance and fighting without armor, relying on zeal alone to carry you through. Only in death might you be absolved, driven by the Emperor’s will to purge heresy and earn redemption through sacrifice.</font></b></span>")
	if(prob(8))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.fully_replace_character_name("Sister [current_name]")
	H.species.brute_mod = 0.6
	H.species.burn_mod = 0.6
	H.species.weaken_mod = 0.51
	H.species.stun_mod = 0.51 // Warp touched. Supernaturally resistant to all damage.
	H.species.slowdown = -0.2
	H.species.toxins_mod = 0.6
	H.species.radiation_mod = 0.55
	return ..()

/datum/job/submap/colonist2_pdf
	title = "Deserter"
	supervisors = "the trust of your fellow Colonists"
	info = "Once bound for a new world, your colony ship was torn from the warp and crashed on an uncharted planet. Now stranded in the Ghoul Stars, you face an unforgiving wilderness and the unknown horrors that await."
	total_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/colonist2
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 17 // PDF do a lot of drills so physically fit but not much practical combat experience.
	min_skill = list(
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_TRAINED,
		SKILL_COMBAT = SKILL_TRAINED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/colonist2_pdf/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE DESERTER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Deserter, you've abandoned the PDF in search of fortune as a mercenary. Your knowledge of Militarum codes and procedures now serves you as you navigate the dangerous life of a hired gun.</font></b></span>")
	if(prob(3))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(3))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.fully_replace_character_name("[current_name]")
	H.species.brute_mod = 0.7
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/guard/uniform, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/heavy, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/deserter, slot_l_hand) // has gloves, mask, shoes and detpack
	if(prob(15))
		H.equip_to_slot_or_store_or_drop(new /obj/item/card/emag, slot_in_backpack)
	else if(prob(30))
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/radio_jammer, slot_in_backpack)
	if(prob(10))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/pdf, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/kantrael, slot_belt)
	else if(prob(25))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/medic, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/medic, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/assault_rifle, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/firstaid/adv, slot_in_backpack)
	else if(prob(15))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/heavy, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/heavy, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/stubber, slot_belt)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/capt, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/captain, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/hellpistol, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/lucius, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/cell/device/high/laspack, slot_in_backpack)
	return ..()


/datum/job/submap/colonistheretek2
	title = "Ship Heretek" // Plan make the crashed ship technical roles. Landed colony tribals.
	supervisors = "the trust of your fellow Colonists"
	info = "Once bound for a new world, your colony ship was torn from the warp and crashed on an uncharted planet. Now stranded in the Ghoul Stars, you face an unforgiving wilderness and the unknown horrors that await."
	total_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/colonist2
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 21
	min_skill = list(
		SKILL_GUNS = SKILL_BASIC,
		SKILL_SCIENCE = SKILL_BASIC,
		SKILL_DEVICES = SKILL_TRAINED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_COMPUTER = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_ELECTRICAL = SKILL_TRAINED,
		SKILL_ATMOS = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ENGINES = SKILL_TRAINED
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER)

/datum/job/submap/colonistheretek2/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE HERETEK</font></b></span>")
	H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
	H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
	H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
	H.species.heat_level_1 = 600
	H.species.heat_level_2 = 700
	H.species.heat_level_3 = 2000
	H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	H.species.hazard_low_pressure = -1
	H.species.brute_mod = 0.8 // This particular tech priest is weaker then most humans.
	H.species.burn_mod = 0.8
	H.species.toxins_mod = 0.8
	H.species.radiation_mod = 0.6
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.5
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/mechanicus/techpriest, slot_wear_suit)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/mask/gas/techpriest, slot_wear_mask)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/shoes/jackboots/skitshoes/techpriest, slot_shoes)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/engineer, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/gloves/thick/swat/techpriest, slot_gloves)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/techpriest, slot_back)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/wrist_blade, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/iatric_monitor, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/internal_air_system, slot_in_backpack)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/popout_shotgun, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/polytool/engineer, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/implant/translator, slot_in_backpack)
	return ..()

/datum/job/submap/colonist2
	title = "Ship Colonist" // Plan make the crashed ship technical roles. Landed colony tribals.
	supervisors = "the trust of your fellow Colonists"
	info = "Once bound for a new world, your colony ship was torn from the warp and crashed on an uncharted planet. Now stranded in the Ghoul Stars, you face an unforgiving wilderness and the unknown horrors that await."
	total_positions = 2
	outfit_type = /singleton/hierarchy/outfit/job/colonist2
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 18
	min_skill = list(
		SKILL_VIGOR = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_TRAINED,
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

/datum/job/submap/colonist2/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE COLONIST</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As a Colonist, you’re responsible for the colonies growth and maintenance, scouring every grim corner of this accursed planet for what you need to survive.</font></b></span>")
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
	H.species.toxins_mod = 0.6
	H.species.radiation_mod = 0.55
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.65
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/trench, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatpain, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/explorer, slot_back)
	if(prob(6))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(6))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/smuggler, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/hellpistol, slot_r_hand)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/trenchcoat, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/stub/talon, slot_r_hand)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/pistol/small/ap, slot_in_backpack)
	return ..()

/singleton/hierarchy/outfit/job/colonist2
	name = OUTFIT_JOB_NAME("Ship Colonest")
	id_types = list()
	pda_type = null
	l_ear = /obj/item/device/radio/headset/map_preset/playablecolony2
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
/area/map_template/colony2
	icon = 'maps/random_ruins/exoplanet_ruins/playablecolony2/colony2.dmi'
	area_flags = AREA_FLAG_RAD_SHIELDED | AREA_FLAG_ION_SHIELDED

/area/map_template/colony2/Hallway
	name = "\improper Colony Hallway"
	icon_state = "halls"

/area/map_template/colony2/engineering
	name = "\improper Colony Engineering"
	icon_state = "processing"

/area/map_template/colony2/atmospherics
	name = "\improper Colony Atmospherics"
	icon_state = "shipping"

/area/map_template/colony2/commons
	name = "\improper Colony Common Area"
	icon_state = "A"

/area/map_template/colony2/storage
	name = "\improper Colony Storage"
	icon_state = "B"

/area/map_template/colony2/external
	name = "\improper Colony External Infrastructure"
	icon_state = "A"

/area/map_template/colony2/ship
	name = "\improper ICV Halifax Proffer"
	icon_state = "B"

/area/map_template/colony2/tcomms
	name = "\improper Colony Telecommunications"
	icon_state = "B2"
