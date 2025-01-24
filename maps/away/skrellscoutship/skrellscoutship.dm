#define WEBHOOK_SUBMAP_LOADED_SKRELL "webhook_submap_skrell"

#include "skrellscoutship_areas.dm"
#include "skrellscoutship_shuttles.dm"
#include "skrellscoutship_radio.dm"
#include "skrellscoutship_machines.dm"

/datum/map_template/ruin/away_site/tauscoutship
	name = "Tau Scout Ship"
	id = "awaysite_skrell_scout"
	description = "A Tau scouting vessel."
	suffixes = list("skrellscoutship/skrellscoutship_revamp.dmm")
	spawn_cost = 2
	player_cost = 0
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/tauscoutship, /datum/shuttle/autodock/overmap/tauscoutshuttle)
	apc_test_exempt_areas = list(
		/area/ship/tauscoutship/externalwing/port = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ship/tauscoutship/externalwing/starboard = NO_SCRUBBER|NO_VENT|NO_APC
	)
	spawn_weight = 2.5

/obj/overmap/visitable/sector/tauscoutspace
	name = "Empty Sector"
	desc = "Slight traces of a cloaking device are present. Unable to determine exact location."
	icon_state = "event"
	hide_from_reports = TRUE
	sensor_visibility = 10

/obj/submap_landmark/joinable_submap/tauscoutship
	name = "Tau Space"
	archetype = /singleton/submap_archetype/tauscoutship

/obj/submap_landmark/spawnpoint/tauscoutship
	name = "Fire Caste Warrior"
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/submap_landmark/spawnpoint/tauscoutship/leader
	name = "Shas-ui"

/obj/submap_landmark/spawnpoint/tauscoutship/scoutvet
	name = "Scout Veteran"

/obj/submap_landmark/spawnpoint/tauscoutship/watercaste
	name = "Kor-vattra Merchant"

/singleton/webhook/submap_loaded/skrell
	id = WEBHOOK_SUBMAP_LOADED_SKRELL

/singleton/submap_archetype/tauscoutship
	descriptor = "Tau Scout Ship"
	map = "Tau Space"
	crew_jobs = list(
		/datum/job/submap/tauscoutship_leader,
		/datum/job/submap/tauscoutship_watercaste,
		/datum/job/submap/tauscoutship_scoutvet,
		/datum/job/submap/tauscoutship_crew
	)
	call_webhook = WEBHOOK_SUBMAP_LOADED_SKRELL

//Access + Loadout

var/global/const/access_tauscoutship = "ACCESS_TAUSCOUT"

/datum/access/tauscoutship
	id = access_tauscoutship
	desc = "Tau Crewman"
	region = ACCESS_REGION_NONE

/obj/item/card/id/tauscoutship
	color = COLOR_GRAY40
	detail_color = "#7331c4"
	access = list(access_tauscoutship)

/datum/job/submap/tauscoutship_leader
	title = "Shas-ui"
	supervisors = "The Greater Good. The Ethereals. Your ambition."
	total_positions = 1
	whitelisted_species = list(SPECIES_TAU)
	outfit_type = /singleton/hierarchy/outfit/job/firewarriorleader
	info = "Your vessel scouts the perilous expanse of the Ghoul Stars, mapping potential threats and identifying unknown forces, all while pursuing the Tau's relentless expansion and the ideals of the Greater Good."
	branch = /datum/mil_branch/tau_fleet
	rank = /datum/mil_rank/tau_fleet/shas
	allowed_branches = list(/datum/mil_branch/tau_fleet)
	allowed_ranks = list(/datum/mil_rank/tau_fleet/shas)
	skill_points = 10
	is_semi_antagonist = TRUE
	min_skill = list(
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_PILOT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER,
		SKILL_VIGOR = SKILL_MASTER
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/tauscoutship_leader/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>WARRIOR VETERAN</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As a seasoned Fire Caste Warrior, you lead with valor and skill, embodying the experience honed from countless engagements. Your tactical acumen and steadfast presence are pivotal in safeguarding the cadre aboard the ship and advancing the Greater Good, especially when foes emerge in unfamiliar territory.</font></b></span>")
	H.fully_replace_character_name("Shas'ui [current_name]")
	H.species.brute_mod = 0.7 // Default 0.77
	H.species.weaken_mod = 0.61
	H.species.stun_mod = 0.61
	return ..()

/datum/job/submap/tauscoutship_scoutvet
	title = "Scout Veteran"
	supervisors = "The Greater Good. The Ethereals. Your ambition."
	total_positions = 1
	whitelisted_species = list(SPECIES_TAU)
	outfit_type = /singleton/hierarchy/outfit/job/firewarriorscout
	info = "Your vessel scouts the perilous expanse of the Ghoul Stars, mapping potential threats and identifying unknown forces, all while pursuing the Tau's relentless expansion and the ideals of the Greater Good."
	branch = /datum/mil_branch/tau_fleet
	rank = /datum/mil_rank/tau_fleet/shas
	allowed_branches = list(/datum/mil_branch/tau_fleet)
	allowed_ranks = list(/datum/mil_rank/tau_fleet/shas)
	skill_points = 9
	is_semi_antagonist = TRUE
	min_skill = list(
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_MASTER,
		SKILL_VIGOR = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/tauscoutship_scoutvet/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>SCOUT VETERAN</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As a Fire Scout, you are the keen eye of the Tau Empire, trained in advanced stealth and observation to probe the outer reaches of enemy territory. Your role demands a blend of agility and quick adaptability, embodying the teachings of Shadowsun by gathering intelligence unseen, preparing the path for the Tau’s next advance.</font></b></span>")
	H.fully_replace_character_name("Shas'la [current_name]")
	H.species.slowdown = -0.2 // default is -0.3
	return ..()

/datum/job/submap/tauscoutship_watercaste
	title = "Kor-vattra Merchant"
	supervisors = "The Greater Good. The Ethereals. Your ambition."
	total_positions = 1
	whitelisted_species = list(SPECIES_TAU)
	outfit_type = /singleton/hierarchy/outfit/job/watercaste
	info = "Your vessel scouts the perilous expanse of the Ghoul Stars, mapping potential threats and identifying unknown forces, all while pursuing the Tau's relentless expansion and the ideals of the Greater Good."
	branch = /datum/mil_branch/tau_fleet
	rank = /datum/mil_rank/tau_fleet/shas
	allowed_branches = list(/datum/mil_branch/tau_fleet)
	allowed_ranks = list(/datum/mil_rank/tau_fleet/shas)
	is_semi_antagonist = TRUE
	skill_points = 8
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED,
		SKILL_FINANCE = SKILL_EXPERIENCED,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_EXPERIENCED,
						SKILL_GUNS = SKILL_EXPERIENCED,
						SKILL_VIGOR = SKILL_EXPERIENCED)

/datum/job/submap/tauscoutship_watercaste/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>WATER CASTE</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As a distinguished Water Caste representative, you navigate the vast expanse of the Ghoul Stars, orchestrating alliances and fostering the Tau's influence through diplomacy and trade. Your knowledge of the Kor’vattra’s network enables the Empire's expansion, bridging the divide between the Tau and potential allies with calculated, profitable engagements.</font></b></span>")
	H.fully_replace_character_name("Por'el [current_name]")
	return ..()

/datum/job/submap/tauscoutship_crew
	title = "Fire Caste Warrior"
	supervisors = "your commander and the Greater Good."
	total_positions = 1
	whitelisted_species = list(SPECIES_TAU)
	blacklisted_species = null
	outfit_type = /singleton/hierarchy/outfit/job/firewarrior
	info = "Your vessel scouts the perilous expanse of the Ghoul Stars, mapping potential threats and identifying unknown forces, all while pursuing the Tau's relentless expansion and the ideals of the Greater Good."
	branch = /datum/mil_branch/tau_fleet
	rank = /datum/mil_rank/tau_fleet
	allowed_branches = list(/datum/mil_branch/tau_fleet)
	allowed_ranks = list(/datum/mil_rank/tau_fleet)
	skill_points = 10
	is_semi_antagonist = TRUE
	min_skill = list(
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_MASTER,
		SKILL_VIGOR = SKILL_EXPERIENCED,
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

/datum/job/submap/tauscoutship_crew/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>FIRE WARRIOR</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As a Fire Warrior, you stand as the disciplined heart of the Fire Caste, embodying the Tau'va through fierce commitment to the Greater Good. Your role is to protect the cadre and maintain vigilance, prepared to neutralize threats with precision as the vanguard of the Tau Empire’s exploratory forces.</font></b></span>")
	H.fully_replace_character_name("Shas'la [current_name]")
	return ..()

/*
/datum/job/submap/tauscoutship_leader
	title = "Shas-ui"
	supervisors = "The Greater Good. The Ethereals. Your ambition."
	total_positions = 2
	whitelisted_species = list(SPECIES_TAU)
	outfit_type = /singleton/hierarchy/outfit/job/firewarriorleader
	info = "Your vessel scouts the perilous expanse of the Ghoul Stars, mapping potential threats and identifying unknown forces, all while pursuing the Tau's relentless expansion and the ideals of the Greater Good."
	branch = /datum/mil_branch/tau_fleet
	rank = /datum/mil_rank/tau_fleet/shas
	allowed_branches = list(/datum/mil_branch/tau_fleet)
	allowed_ranks = list(/datum/mil_rank/tau_fleet/shas)
	skill_points = 22
	is_semi_antagonist = TRUE
	alt_titles = list(
		"Scout Leader" = /singleton/hierarchy/outfit/job/firewarriorscout,
		"Kor-vattra Merchant" = /singleton/hierarchy/outfit/job/watercaste,
	)
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_PILOT = SKILL_TRAINED,
		SKILL_GUNS = SKILL_TRAINED,
		SKILL_VIGOR = SKILL_TRAINED,
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

/datum/job/submap/tauscoutship_leader/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H, "Assigned title: [current_title]")
	if(current_title == "Shas-ui" || current_title == "Scout Leader" || current_title == "Kor-vattra Merchant")
		if(current_title == "Shas-ui")
			to_chat(H,"<span class='danger'><b><font size=4>WARRIOR VETERAN</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a seasoned Fire Caste Warrior, you lead with valor and skill, embodying the experience honed from countless engagements. Your tactical acumen and steadfast presence are pivotal in safeguarding the cadre aboard the ship and advancing the Greater Good, especially when foes emerge in unfamiliar territory.</font></b></span>")
			H.fully_replace_character_name("Shas'ui [current_name]")
			H.species.brute_mod = 0.7 // Default 0.77
			H.species.weaken_mod = 0.61
			H.species.stun_mod = 0.61
		else if(current_title == "Scout Leader")
			to_chat(H,"<span class='danger'><b><font size=4>SCOUT VETERAN</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a veteran of the Fire Caste Scout cadre, you command the forward ranks with precision and expertise. Your keen insight and strategic vision are integral to ensuring your team's survival and the successful navigation of unknown sectors, aligning your actions with the ideals of Shadowsun’s approach to combat.</font></b></span>")
			H.fully_replace_character_name("Shas'vre [current_name]")
			H.species.brute_mod = 0.73 // Default 0.77
			H.species.weaken_mod = 0.63
			H.species.stun_mod = 0.63
			H.species.slowdown = -0.4 // default is -0.3
		else if(current_title == "Kor-vattra Merchant")
			to_chat(H,"<span class='danger'><b><font size=4>Kor-vattra MERCANTILE</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a distinguished Water Caste representative, you navigate the vast expanse of the Ghoul Stars, orchestrating alliances and fostering the Tau's influence through diplomacy and trade. Your knowledge of the Kor’vattra’s network enables the Empire's expansion, bridging the divide between the Tau and potential allies with calculated, profitable engagements.</font></b></span>")
			H.fully_replace_character_name("Por'el [current_name]")
	return ..()

/datum/job/submap/tauscoutship_crew
	title = "Fire Caste Warrior"
	supervisors = "your commander and the Greater Good."
	total_positions = 3
	whitelisted_species = list(SPECIES_TAU)
	blacklisted_species = null
	outfit_type = /singleton/hierarchy/outfit/job/firewarrior
	info = "Your vessel scouts the perilous expanse of the Ghoul Stars, mapping potential threats and identifying unknown forces, all while pursuing the Tau's relentless expansion and the ideals of the Greater Good."
	branch = /datum/mil_branch/tau_fleet
	rank = /datum/mil_rank/tau_fleet
	allowed_branches = list(/datum/mil_branch/tau_fleet)
	allowed_ranks = list(/datum/mil_rank/tau_fleet)
	skill_points = 20
	is_semi_antagonist = TRUE
	alt_titles = list(
		"Fire Caste Scout" = /singleton/hierarchy/outfit/job/firewarriorscout,
		"Fire Caste Breacher" = /singleton/hierarchy/outfit/job/firewarriorbreacher,
	)
	min_skill = list(
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_GUNS = SKILL_TRAINED,
		SKILL_VIGOR = SKILL_TRAINED,
		SKILL_PILOT = SKILL_BASIC,
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

/datum/job/submap/tauscoutship_crew/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Fire Caste Warrior" || current_title == "Fire Caste Scout" || current_title == "Fire Caste Breacher")
		if(current_title == "Fire Caste Warrior")
			to_chat(H,"<span class='danger'><b><font size=4>FIRE WARRIOR</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a Fire Warrior, you stand as the disciplined heart of the Fire Caste, embodying the Tau'va through fierce commitment to the Greater Good. Your role is to protect the cadre and maintain vigilance, prepared to neutralize threats with precision as the vanguard of the Tau Empire’s exploratory forces.</font></b></span>")
			H.fully_replace_character_name("Shas'la [current_name]")
		else if(current_title == "Fire Caste Scout")
			to_chat(H,"<span class='danger'><b><font size=4>FIRE SCOUT</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a Fire Scout, you are the keen eye of the Tau Empire, trained in advanced stealth and observation to probe the outer reaches of enemy territory. Your role demands a blend of agility and quick adaptability, embodying the teachings of Shadowsun by gathering intelligence unseen, preparing the path for the Tau’s next advance.</font></b></span>")
			H.fully_replace_character_name("Shas'la [current_name]")
			H.species.slowdown = -0.4
		else if(current_title == "Fire Caste Breacher")
			to_chat(H,"<span class='danger'><b><font size=4>FIRE BREACHER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As a Fire Caste Breacher, your role is to protect the commander and breaching during ship boarding operations. Equipped for close-quarters engagements, you favor the tactics of the Third Sphere, conjured within the mind of Ra'Alai an infamous assault and ambush specialist among the fire cadre.</font></b></span>")
			H.fully_replace_character_name("Shas'la [current_name]")
	return ..()
*/

/obj/item/clothing/gloves/thick/swat/tau
	name = "black gloves"
	desc = "A pair of black, reinforced gloves. The tag on the inner stitching appears to be written in some form of Tau."

/obj/item/clothing/under/tau
	name = "black bodysuit"
	desc = "A sleek, skin-tight bodysuit designed to not wick moisture away from the body. The inner stitching appears to contain something written in Tau."
	icon_state = "skrell_suit"
	item_state = "skrell_suit"
	worn_state = "skrell_suit"

/singleton/hierarchy/outfit/job/firewarrior
	name = "Fire Warrior"
	uniform = /obj/item/clothing/under/tau
	mask = /obj/item/clothing/mask/gas/swat
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/thick/swat/tau
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset/map_preset/tauscoutship
	id_types = list(/obj/item/card/id/tauscoutship)
	suit = /obj/item/clothing/suit/armor/tau
	head = null
	glasses = /obj/item/clothing/glasses/blacksun
	belt = /obj/item/gun/energy/tau/pulsepistol
	back = /obj/item/storage/backpack/tau
	backpack_contents = list(/obj/item/pen/fancy = 1, /obj/item/material/twohanded/ravenor/knife/tau = 1, /obj/item/clothing/head/helmet/tau = 1)

/singleton/hierarchy/outfit/job/firewarriorleader
	name = "Shas-ui"
	uniform = /obj/item/clothing/under/tau
	mask = /obj/item/clothing/mask/gas/swat
	shoes = /obj/item/clothing/shoes/jackboots
	gloves = /obj/item/clothing/gloves/thick/swat/tau
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset/map_preset/tauscoutship
	id_types = list(/obj/item/card/id/tauscoutship)
	suit = /obj/item/clothing/suit/armor/tau
	head = null
	glasses = /obj/item/clothing/glasses/blacksun
	belt = /obj/item/gun/energy/tau/pulsepistol
	back = /obj/item/storage/backpack/tau
	backpack_contents = list(/obj/item/pen/fancy = 1, /obj/item/material/twohanded/ravenor/knife/tau = 1, /obj/item/clothing/head/helmet/tau = 1)

/singleton/hierarchy/outfit/job/firewarriorscout
	name = "Fire Scout"
	uniform = /obj/item/clothing/under/tau
	shoes = /obj/item/clothing/shoes/jackboots
	mask = /obj/item/clothing/mask/gas/swat
	gloves = /obj/item/clothing/gloves/thick/swat/tau
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset/map_preset/tauscoutship
	id_types = list(/obj/item/card/id/tauscoutship)
	head = null
	glasses = /obj/item/clothing/glasses/blacksun
	belt = /obj/item/gun/energy/tau/pulsepistol
	back = /obj/item/storage/backpack/tau
	suit = /obj/item/clothing/suit/armor/tau/scout
	backpack_contents = list(/obj/item/pen/fancy = 1, /obj/item/material/twohanded/ravenor/knife/tau = 1, /obj/item/clothing/head/helmet/tau/scout = 1)

/singleton/hierarchy/outfit/job/firewarriorbreacher
	name = "Fire Breacher"
	uniform = /obj/item/clothing/under/tau
	shoes = /obj/item/clothing/shoes/jackboots
	mask = /obj/item/clothing/mask/gas/swat
	gloves = /obj/item/clothing/gloves/thick/swat/tau
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset/map_preset/tauscoutship
	id_types = list(/obj/item/card/id/tauscoutship)
	head = null
	glasses = /obj/item/clothing/glasses/blacksun
	belt = /obj/item/gun/energy/tau/pulsepistol
	back = /obj/item/storage/backpack/tau
	suit = /obj/item/clothing/suit/armor/tau/breacher
	backpack_contents = list(/obj/item/pen/fancy = 1, /obj/item/material/twohanded/ravenor/knife/tau = 1, /obj/item/clothing/head/helmet/tau/breacher = 1)

/singleton/hierarchy/outfit/job/watercaste
	name = "Water Caste Merchant"
	uniform = /obj/item/clothing/under/tau
	mask = /obj/item/clothing/mask/gas/void
	shoes = /obj/item/clothing/shoes/jackboots/noble
	gloves = /obj/item/clothing/gloves/thick/swat/tau
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_ear = /obj/item/device/radio/headset/map_preset/tauscoutship
	id_types = list(/obj/item/card/id/tauscoutship)
	suit = /obj/item/clothing/suit/armor/grim/noble/watercaste
	glasses = /obj/item/clothing/glasses/blacksun
	head = null
	l_pocket = /obj/item/device/flashlight/maglight
	belt = /obj/item/gun/energy/plasma/pistol/xenos
	back = /obj/item/storage/backpack/satchel/leather
	backpack_contents = list(/obj/item/pen/fancy = 1, /obj/item/material/twohanded/ravenor/knife/tau = 1)

/obj/item/clothing/suit/armor/grim/noble/watercaste
	name = "noble plate"
	desc = "The regal plate armor of a water caste merchant, forged for both elegance and to protect the wearer from all harm."
	icon_state = "prince"
	item_state = "prince"
	body_parts_covered = LEGS|FEET|ARMS|HANDS|FULL_TORSO
	max_pressure_protection = LIGHT_RIG_MAX_PRESSURE
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE +40
	slowdown_general = 0.06 // Uses cheaper plasteel plates thus heavier.
	armor = list(
		melee = ARMOR_MELEE_CARAPACE,
		bullet = ARMOR_BALLISTIC_CARAPACE,
		laser = ARMOR_LASER_CARAPACE,
		energy = ARMOR_ENERGY_TEN+15,
		bio = ARMOR_BIO_THIRTY+20,
		rad = ARMOR_RAD_THIRTY+30,
		bomb = ARMOR_BOMB_THIRTY-5
	)

/obj/item/reagent_containers/food/condiment/psilocybin
	starting_reagents = list(/datum/reagent/drugs/psilocybin = 50)


/obj/item/reagent_containers/food/condiment/mindbreaker
	starting_reagents = list(/datum/reagent/drugs/mindbreaker = 50)


/obj/item/reagent_containers/food/condiment/hextro
	starting_reagents = list(/datum/reagent/drugs/hextro = 50)


/datum/mil_branch/tau_fleet
	name = "Tau Empire"
	name_short = "TAU"
	email_domain = "sdtf.qb"
	rank_types = list(/datum/mil_rank/tau_fleet, /datum/mil_rank/tau_fleet/shas)
	spawn_rank_types = list(/datum/mil_rank/tau_fleet, /datum/mil_rank/tau_fleet/shas)

/datum/mil_rank/tau_fleet
	name = "Shas'la"

/datum/mil_rank/tau_fleet/shas
	name = "Shas'ui"

/obj/machinery/power/apc/skrell
	req_access = list(access_tauscoutship)

/obj/machinery/alarm/tau
	req_access = list(access_tauscoutship)
	target_temperature = T0C+40

/obj/machinery/alarm/tau/Initialize()
	. = ..()
	TLV["pressure"] =		list(ONE_ATMOSPHERE*0.80,ONE_ATMOSPHERE*0.90,ONE_ATMOSPHERE*1.30,ONE_ATMOSPHERE*1.40) /* kpa */
	TLV["temperature"] =	list(T0C-26, T0C, T0C+80, T0C+90) // K

/obj/machinery/alarm/tau/server
	target_temperature = T0C+10

/obj/machinery/alarm/tau/server/Initialize()
	. = ..()
	TLV["temperature"] =	list(T0C-26, T0C, T0C+30, T0C+40) // K

/obj/machinery/power/smes/buildable/preset/tau
	uncreated_component_parts = list(
		/obj/item/stock_parts/smes_coil/advanced = 2
	)
	_input_maxed = TRUE
	_output_maxed = TRUE
	_input_on = TRUE
	_output_on = TRUE
	_fully_charged = TRUE

/obj/machinery/vending/medical/skrell
	req_access = list(access_tauscoutship)

/obj/machinery/power/apc/debug/skrell
	cell_type = /obj/item/cell/infinite
	req_access = list(access_tauscoutship)

#undef WEBHOOK_SUBMAP_LOADED_SKRELL

//Tau Security Belt
/obj/item/storage/belt/holster/tau
	name = "Tau holster belt"
	desc = "Can hold security gear like handcuffs and flashes. This one has a convenient holster."
	icon_state = "securitybelt"
	item_state = "security"
	storage_slots = 8
	overlay_flags = BELT_OVERLAY_ITEMS|BELT_OVERLAY_HOLSTER
	contents_allowed = list(
		/obj/item/crowbar,
		/obj/item/grenade,
		/obj/item/reagent_containers/spray/pepper,
		/obj/item/handcuffs,
		/obj/item/device/flash,
		/obj/item/clothing/glasses,
		/obj/item/ammo_casing,
		/obj/item/ammo_magazine,
		/obj/item/reagent_containers/food/snacks/donut,
		/obj/item/melee/baton,
		/obj/item/melee/telebaton,
		/obj/item/flame/lighter,
		/obj/item/device/flashlight,
		/obj/item/modular_computer/pda,
		/obj/item/device/radio/headset,
		/obj/item/device/hailer,
		/obj/item/device/megaphone,
		/obj/item/melee,
		/obj/item/taperoll,
		/obj/item/device/holowarrant,
		/obj/item/magnetic_ammo,
		/obj/item/device/binoculars,
		/obj/item/clothing/gloves,
		/obj/item/gun/energy/tau/pulsepistol
		)

//Skell Lights

/obj/machinery/light/tau
	name = "Tau light"
	light_type = /obj/item/light/tube/tau
	desc = "Some kind of strange alien lighting technology."


/obj/item/light/tube/tau
	name = "Tau light filament"
	color = LIGHT_COLOUR_TAU
	b_colour = LIGHT_COLOUR_TAU
	desc = "Some kind of strange alien lightbulb technology."
	random_tone = FALSE

/obj/item/light/tube/large/tau
	name = "Tau light filament"
	color = LIGHT_COLOUR_TAU
	b_colour = LIGHT_COLOUR_TAU
	desc = "Some kind of strange alien lightbulb technology."


/obj/item/storage/box/lights/tubes/tau
	name = "box of replacement tubes"
	icon_state = "lighttube"
	startswith = list(/obj/item/light/tube/tau = 17,
					/obj/item/light/tube/large/tau = 4)

//Tau Suit Dispensers
/obj/machinery/suit_storage_unit/skrell
	boots = /obj/item/clothing/shoes/magboots;
	color = "#00e1ff";
	helmet = /obj/item/clothing/head/helmet/tau;
	islocked = 1;
	name = "Tau Battlesuit Storage Unit (Tan)";
	req_access = list("ACCESS_TAUSCOUT");
	suit = /obj/item/clothing/suit/armor/tau

/obj/machinery/suit_storage_unit/skrell/black
	boots = /obj/item/clothing/shoes/magboots;
	color = "#00e1ff";
	helmet = /obj/item/clothing/head/helmet/tau;
	islocked = 1;
	name = "Tau Suit Storage Unit (Black)";
	req_access = list("ACCESS_TAUSCOUT");
	suit = /obj/item/clothing/suit/armor/tau

//Tau Devices

/obj/item/tape_roll/tau
	name = "modular adhesive dispenser"
	desc = "A roll of sticky tape. Possibly for taping ducks... or was that ducts?"
	icon = 'icons/obj/bureaucracy.dmi'
	icon_state = "taperoll"
	color = "#40e0d0"
	w_class = ITEM_SIZE_SMALL

/obj/machinery/space_heater/tau
	color = "#40e0d0"
	name = "thermal induction generator"
	desc = "Made by Krri'gli Corp using thermal induction technology, this heater is guaranteed not to set anything, or anyone, on fire."
	set_temperature = T0C+40
