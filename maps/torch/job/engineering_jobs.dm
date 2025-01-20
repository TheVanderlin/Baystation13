/datum/job/magos_explorator
	title = "Magos Explorator"
	supervisors = "the Mechanicus and at times the Rogue Trader"
	department = "Mechanicus"
	department_flag = ENG
	economic_power = 18
	minimum_character_age = list(SPECIES_HUMAN = 31)
	ideal_character_age = 40
	minimal_player_age = 4
	total_positions = 1
	spawn_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/chief_engineer
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 14
	min_skill = list(
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_FORENSICS = SKILL_EXPERIENCED,
		SKILL_SCIENCE = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_MASTER,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_COMPUTER = SKILL_MASTER,
		SKILL_CONSTRUCTION = SKILL_MASTER,
		SKILL_ELECTRICAL = SKILL_MASTER,
		SKILL_ATMOS = SKILL_MASTER,
		SKILL_MEDICAL = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY = SKILL_EXPERIENCED,
		SKILL_ANATOMY = SKILL_EXPERIENCED,
		SKILL_ENGINES = SKILL_MASTER
	)

	max_skill = list(	SKILL_MEDICAL = SKILL_EXPERIENCED,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_SCIENCE = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_VIGOR = SKILL_EXPERIENCED,
						SKILL_ANATOMY = SKILL_EXPERIENCED,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_FORENSICS = SKILL_EXPERIENCED,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_CHEMISTRY = SKILL_MASTER)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_magos, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/ntnetmonitor,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports)

/datum/job/magos_explorator/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
	H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
	H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
	H.species.heat_level_1 = 600
	H.species.heat_level_2 = 700
	H.species.heat_level_3 = 2000
	H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	H.species.hazard_low_pressure = -1
	H.species.brute_mod = 0.65
	H.species.burn_mod = 0.65
	H.species.toxins_mod = 0.55
	H.species.radiation_mod = 0.3
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.35
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	H.verbs += /mob/living/proc/set_ambition
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("Magos Explorator [current_name]")
	H.say(":e Memory cache integrity at 87%... Motive force appeased. Security apparatis functional. Non organics uncorrupted.")
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you manage the technology and exploration efforts aboard The Dauntless, working in partnership with the Rogue Trader. Your duties are divided between maintaining the sacred machinery of the ship and pursuing the discovery of lost knowledge and power across the stars. Overseeing tech-priests, bondsmen, menials, slaves, and Skitarii, you ensure their work serves the dual purpose of keeping the ship operational and advancing the Mechanicum’s quest for knowledge, all while respecting the Rogue Trader’s command.</font></b></span>")
	return ..()

/datum/job/magos_explorator/get_description_blurb()
	return "As the Magos Explorator, you manage the technology and exploration efforts aboard The Dauntless, working in partnership with the Rogue Trader. Your duties are divided between maintaining the sacred machinery of the ship and pursuing the discovery of lost knowledge and power across the stars. Overseeing tech-priests, bondsmen, menials, slaves, and Skitarii, you ensure their work serves the dual purpose of keeping the ship operational and advancing the Mechanicum’s quest for knowledge, all while respecting the Rogue Trader’s command."


/datum/job/data_smith
	title = "Data Smith"
	department = "Mechanicus"
	department_flag = ENG
	total_positions = 2 // Does science and genetics.
	spawn_positions = 2
	supervisors = "the Magos Explorator"
	selection_color = "#5b4d20"
	economic_power = 7
	minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 27)
	ideal_character_age = 40
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	alt_titles = list(
		"Lexmechanic",
		"Genetor",
		"Chymist",
	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 12
	min_skill = list(
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_SCIENCE = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_COMPUTER = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_EXPERIENCED,
		SKILL_ATMOS = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY = SKILL_EXPERIENCED,
		SKILL_ANATOMY = SKILL_EXPERIENCED,
		SKILL_ENGINES = SKILL_EXPERIENCED
	)

	max_skill = list(	SKILL_MEDICAL = SKILL_EXPERIENCED,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_SCIENCE = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_VIGOR = SKILL_EXPERIENCED,
						SKILL_ANATOMY = SKILL_EXPERIENCED,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_FORENSICS = SKILL_EXPERIENCED,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_CHEMISTRY = SKILL_MASTER)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/data_smith/get_description_blurb()
	return "As a member of the mechanicus aboard The Dauntless, your role centers on the pursuit of knowledge and the preservation of ancient technologies. Focused on research and data analysis, you delve into the mysteries of the machine, whether through the study of archives, the recovery of lost information, or the understanding of sacred technology. Overseeing tech-acolytes and other personnel, your purpose is to advance the Mechanicus' quest for knowledge while safeguarding the ship's technological sanctity."

/datum/job/data_smith/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
	H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
	H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
	H.species.heat_level_1 = 600
	H.species.heat_level_2 = 700
	H.species.heat_level_3 = 2000
	H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	H.species.hazard_low_pressure = -1
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.toxins_mod = 0.7
	H.species.radiation_mod = 0.4
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.5
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	H.verbs += /mob/living/proc/set_ambition
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	H.say(":e OMVISS1@H &(47*TECHNICA)B(ADMECH)... transponder signal active.")
	to_chat(H, "<span class='notice'><b><font size=2>As a member of the mechanicus aboard The Dauntless, your role centers on the pursuit of knowledge and the preservation of ancient technologies. Focused on research and data analysis, you delve into the mysteries of the machine, whether through the study of archives, the recovery of lost information, or the understanding of sacred technology. Overseeing tech-acolytes and other personnel, your purpose is to advance the Mechanicus' quest for knowledge while safeguarding the ship's technological sanctity.</font></b></span>")
	return ..()

/datum/job/tech_priest
	title = "Enginseer"
	total_positions = 3
	spawn_positions = 3
	department = "Mechanicus"
	department_flag = ENG
	selection_color = "#5b4d20"
	supervisors = "the Magos Explorator"
	economic_power = 5
	minimal_player_age = 1
	minimum_character_age = list(SPECIES_HUMAN = 19)
	ideal_character_age = 30
	alt_titles = list(
		"Fabricator",
		"Artificer",
		)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/engineer
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 10
	min_skill = list(
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_SCIENCE = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_COMPUTER = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_EXPERIENCED,
		SKILL_ATMOS = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY = SKILL_EXPERIENCED,
		SKILL_ANATOMY = SKILL_EXPERIENCED,
		SKILL_ENGINES = SKILL_EXPERIENCED
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

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/atmos_control,
							 /datum/computer_file/program/rcon_console,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor)

/datum/job/tech_priest/get_description_blurb()
	return "As a member of the Mechanicus aboard The Dauntless, your role is dedicated to maintaining the sacred machinery that keeps the ship operational. Focused on engineering, repairs, and the appeasement of machine spirits, you oversee the function of essential systems. Whether guiding tech-acolytes or directly addressing mechanical issues, your purpose is to ensure the smooth operation of the ship’s technology, preserving its sanctity and efficiency for the Omnissiah."

/datum/job/tech_priest/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
	H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
	H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
	H.species.heat_level_1 = 600
	H.species.heat_level_2 = 700
	H.species.heat_level_3 = 2000
	H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	H.species.hazard_low_pressure = -1
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.toxins_mod = 0.7
	H.species.radiation_mod = 0.4
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.5
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	H.say(":e OMVISS1@H &(47*TECHNICA)B(ADMECH)... transponder signal active.")
	to_chat(H, "<span class='notice'><b><font size=2>As a member of the Mechanicus aboard The Dauntless, your role is dedicated to maintaining the sacred machinery that keeps the ship operational. Focused on engineering, repairs, and the appeasement of machine spirits, you oversee the function of essential systems. Whether guiding tech-acolytes or directly addressing mechanical issues, your purpose is to ensure the smooth operation of the ship’s technology, preserving its sanctity and efficiency for the Omnissiah.</font></b></span>")
	return ..()

/datum/job/bondsman
	title = "Bondsman"
	department = "Mechanicus"
	department_flag = ENG
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Mechanicus and Rogue Trader"
	selection_color = "#5b4d20"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20

	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/bondsman
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	skill_points = 8
	min_skill = list(
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_EXPERIENCED,
		SKILL_ATMOS = SKILL_EXPERIENCED,
		SKILL_ENGINES = SKILL_EXPERIENCED
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

	access = list(
		access_dauntless, access_restricted, access_mechanicus, access_medical)

	software_on_spawn = list(/datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor)

/datum/job/bondsman/get_description_blurb()
	return "You are a Bondsman under the service of the Mechanicus aboard the Rogue Trader’s vessel, lifebonded to the Magos Explorator and likely a descendant of gang-pressed families taken from their homeworlds. Tasked with menial yet vital technical work, your duties include maintaining ship systems, assisting with resource extraction, and performing hazardous tasks in the ship's more dangerous zones."

/datum/job/bondsman/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(prob(1))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(1))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.fully_replace_character_name("[current_name]")
	H.say(":e OMVISS1@H &(47*INDENTURED)B(X1HK)... transponder signal active.")
	to_chat(H, "<span class='notice'><b><font size=2>You are a [current_title] under the service of the Mechanicus aboard the Rogue Trader’s vessel, lifebonded to the Magos Explorator and likely a descendant of gang-pressed families taken from their homeworlds. Tasked with menial yet vital technical work, your duties include maintaining ship systems, assisting with resource extraction, and performing hazardous tasks in the ship's more dangerous zones.</font></b></span>")
	return ..()

/datum/job/roboticist
	title = "Roboticist"
	department = "Mechanicus"
	department_flag = ENG|ROB

	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 25)
	supervisors = "the Chief Engineer."
	selection_color = "#5b4d20"
	economic_power = 6
	alt_titles = list(
		"Mechsuit Technician")
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list( // 22 points
		SKILL_COMPUTER = SKILL_TRAINED, // 2 points
		SKILL_DEVICES = SKILL_EXPERIENCED, // 4 points
		SKILL_EVA = SKILL_TRAINED, // 2 points
		SKILL_ANATOMY = SKILL_TRAINED, // 8 points
		SKILL_CONSTRUCTION = SKILL_BASIC, // 2 points
		SKILL_ELECTRICAL = SKILL_BASIC, // 2 points
		SKILL_MECH = HAS_PERK // 2 points
	)

	max_skill = list(   SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_EXPERIENCED,
	                    SKILL_ENGINES      = SKILL_EXPERIENCED,
	                    SKILL_DEVICES      = SKILL_MAX,
	                    SKILL_MEDICAL      = SKILL_EXPERIENCED,
	                    SKILL_ANATOMY      = SKILL_EXPERIENCED)

	access = list(
		access_robotics, access_mechanicus, access_solgov_crew, access_network, access_radio_eng
	)

/datum/job/roboticist/get_description_blurb()
	return "You are the Roboticist. You are responsible for repairing, upgrading and handling ship synthetics (like robots). You are also responsible for the production of exosuits(mechs) and bots for various departments. You answer to the Chief Engineer."
