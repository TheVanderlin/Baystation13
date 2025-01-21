/datum/job/rogue_trader
	title = "Rogue Trader"
	supervisors = "the God Emperor and your own ambition."
	minimal_player_age = 4
	economic_power = 16
	minimum_character_age = list(SPECIES_HUMAN = 30)
	ideal_character_age = 50
	total_positions = 1
	spawn_positions = 1
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/roguetrader
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 11
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED,
		SKILL_FINANCE = SKILL_EXPERIENCED,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER,
	)
	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_bridge, access_roguetrader)

	max_skill = list(	SKILL_BUREAUCRACY = SKILL_MASTER,
						SKILL_FINANCE = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_COMBAT = SKILL_PRIMARIS,
						SKILL_PILOT = SKILL_MASTER)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)
/datum/job/rogue_trader/get_description_blurb()
	return "You are the Rogue Trader, an infamous member of the Landsraad, where noble houses vie for dominance over the Ghoul Stars. Through shared bonds and rivalries, they control the flow of power and resources. As one of their number, you forge your path amidst alliances, intrigue, and the perils of the void."

/datum/job/rogue_trader/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.weaken_mod = 0.7
	H.species.stun_mod = 0.7
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.toxins_mod = 0.8
	H.species.radiation_mod = 0.6
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.7
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	H.verbs += /mob/living/proc/set_ambition
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	captain_announcement.Announce("All crew, [current_title] [current_name] has arrived...")
	if(prob(2))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>You are the [current_title], an infamous member of the Landsraad, where noble houses vie for dominance over the Ghoul Stars. Through shared bonds and rivalries, they control the flow of power and resources. As one of their number, you forge your path amidst alliances, intrigue, and the perils of the void.</font></b></span>")
	return ..()

/datum/job/seneschal
	title = "Seneschal" // HOP/ Supply and Bridge Crew in one.
	supervisors = "the Rogue Trader and your own ambition."
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 2
	economic_power = 14
	minimum_character_age = list(SPECIES_HUMAN = 30)
	ideal_character_age = 45
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/seneschal
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 10
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED,
		SKILL_FINANCE = SKILL_EXPERIENCED,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER,
	)

	max_skill = list(	SKILL_BUREAUCRACY = SKILL_MASTER,
						SKILL_FINANCE = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_PILOT = SKILL_MASTER)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_bridge, access_roguetrader)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/card_mod,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/seneschal/get_description_blurb()
	return "You are the Seneschal, the trusted advisor and chief administrator aboard the Dauntless. Your duties involve managing the vast wealth, resources, and trade networks of the Rogue Trader, ensuring colonies, contracts, and logistics run smoothly. You oversee the ship’s operations, handling everything from diplomacy to the darker dealings of the trade empire. While the Rogue Trader focuses on larger ventures, you maintain the foundations that keep the dynasty profitable and in control."

/datum/job/seneschal/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.weaken_mod = 0.7
	H.species.stun_mod = 0.7
	H.species.slowdown = -0.1
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	to_chat(H, "<span class='notice'><b><font size=2>You are the [current_title], the trusted advisor and chief administrator aboard the Dauntless. Your duties involve managing the vast wealth, resources, and trade networks of the Rogue Trader, ensuring colonies, contracts, and logistics run smoothly. You oversee the ship’s operations, handling everything from diplomacy to the darker dealings of the trade empire. While the Rogue Trader focuses on larger ventures, you maintain the foundations that keep the dynasty profitable and in control.</font></b></span>")
	return ..()

/datum/job/void_officer
	title = "Voidmaster" // HOP/ Supply and Bridge Crew in one.
	department = "Support"
	department_flag = SPT
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Rogue Trader and Seneschal"
	selection_color = "#2f2f7f"
	minimal_player_age = 1
	economic_power = 8
	minimum_character_age = list(SPECIES_HUMAN = 22)
	ideal_character_age = 24
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/bridgeofficer
	alt_titles = list(
		"Helmsman",
		"Tacticae",
	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 10
	min_skill = list(
		SKILL_FINANCE = SKILL_EXPERIENCED,
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_BUREAUCRACY = SKILL_MASTER,
						SKILL_FINANCE = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_PILOT = SKILL_MASTER)


	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/power_monitor,
							 /datum/computer_file/program/supermatter_monitor,
							 /datum/computer_file/program/alarm_monitor,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/shields_monitor,
							 /datum/computer_file/program/reports,
							 /datum/computer_file/program/deck_management)

/datum/job/void_officer/get_description_blurb()
	return "As the Voidmaster, you are a crucial officer aboard the Dauntless, responsible for piloting the ship, managing ship-wide vox communications, and executing the Rogue Trader's commands. Your role involves coordinating with the deck crew and all departments to ensure smooth and efficient operation of the voidship."

/datum/job/void_officer/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	H.verbs += /mob/living/proc/set_ambition
	if(prob(1))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(1))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you are a crucial officer aboard the Dauntless, responsible for piloting the ship, managing ship-wide vox communications, and executing the Rogue Trader's commands. Your role involves coordinating with the deck crew and all departments to ensure smooth and efficient operations. </font></b></span>")
	return ..()

/datum/job/mercenary
	title = "Kroot Tracker"
	department = "Command"
	department_flag = COM
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Rogue Trader"
	selection_color = "#2f2f7f"
	economic_power = 8
	minimal_player_age = 1
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/krootmerc
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	skill_points = 9
	min_skill = list(SKILL_VIGOR = SKILL_MASTER,
					SKILL_COMBAT = SKILL_LEGEND, // Worse skills then imperials. Since they are more primitive bioforms.
					SKILL_GUNS = SKILL_EXPERIENCED,
				)
	max_skill = list(	SKILL_VIGOR = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND)


	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor)

/datum/job/mercenary/get_description_blurb()
	return "As the Xenos Mercenary, you serve as the Lifeward to the Rogue Trader, using your alien abilities to fulfill your duties. Your role is fluid, from enforcing order and discipline to handling tasks that fall beyond the reach of the human crew. You protect essential personnel, ensure the Trader's will is carried out, and use your unique skills to safeguard the vessel."

/datum/job/mercenary/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.fully_replace_character_name("Tracker [current_name]")
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you serve as the Lifeward to the Rogue Trader, using your alien abilities to fulfill your duties. Your role is fluid, from enforcing order and discipline to handling tasks that fall beyond the reach of the human crew. You protect essential personnel, ensure the Trader's will is carried out, and use your unique skills to safeguard the vessel.</font></b></span>")
	return ..()


// DONT USE THESE JOBS

/datum/job/rd
	title = "Chief Science Officer"
	supervisors = "the Commanding Officer"
	economic_power = 12
	minimal_player_age = 14
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 60
	total_positions = 0
	spawn_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/research/cso
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	skill_points = 36
	min_skill = list( // 16 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_COMPUTER = SKILL_BASIC, // 1 point
		SKILL_FINANCE = SKILL_TRAINED, // 2 points
		SKILL_BOTANY = SKILL_BASIC, // 1 point
		SKILL_ANATOMY = SKILL_BASIC, // 4 points
		SKILL_DEVICES = SKILL_BASIC, // 2 points
		SKILL_SCIENCE = SKILL_TRAINED // 4 points
	)

	max_skill = list(   SKILL_ANATOMY     = SKILL_MAX,
	                    SKILL_DEVICES     = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX)

	access = list(
		access_tox, access_tox_storage, access_magos, access_teleporter, access_bridge, access_rd,
		access_research, access_mining, access_mining_office, access_mining_station, access_xenobiology, access_aquila,
		access_RC_announce, access_keycard_auth, access_xenoarch, access_nanotrasen, access_sec_guard, access_heads,
		access_expedition_shuttle, access_guppy, access_hangar, access_petrov, access_petrov_helm, access_guppy_helm,
		access_petrov_analysis, access_petrov_phoron, access_petrov_toxins, access_petrov_chemistry, access_petrov_rd,
		access_petrov_control, access_petrov_maint, access_pathfinder, access_explorer, access_eva, access_solgov_crew,
		access_expedition_shuttle, access_expedition_shuttle_helm, access_maint_tunnels, access_torch_fax, access_radio_comm,
		access_radio_sci, access_radio_exp, access_research_storage
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/aidiag,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/rd/get_description_blurb()
	return "You are the Chief Science Officer. You are responsible for the research department. You handle the science aspects of the project and liase with the imperial interests of the Explorator Organisation. Make sure science gets done, do some yourself, and get your scientists on away missions to find things to benefit the project. Advise the CO on science matters."


/datum/job/sea
	title = "Senior Enlisted Advisor"
	department = "Support"
	department_flag = SPT
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Commanding Officer and the Executive Officer"
	selection_color = "#2f2f7f"
	minimal_player_age = 14
	economic_power = 11
	minimum_character_age = list(SPECIES_HUMAN = 35)
	ideal_character_age = 45
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/sea/fleet
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 34
	min_skill = list( // 5 points
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_COMBAT = SKILL_BASIC, // 2 points
		SKILL_GUNS = SKILL_BASIC // 2 points
	)

	max_skill = list(	SKILL_PILOT        = SKILL_TRAINED,
	                    SKILL_COMBAT       = SKILL_EXPERIENCED,
	                    SKILL_GUNS      = SKILL_EXPERIENCED,
	                    SKILL_CONSTRUCTION = SKILL_MAX,
	                    SKILL_ELECTRICAL   = SKILL_MAX,
	                    SKILL_ENGINES      = SKILL_MAX,
	                    SKILL_ATMOS        = SKILL_MAX)


	access = list(
		access_restricted, access_medical, access_mechanicus, access_maint_tunnels, access_external_airlocks, access_magos,
		access_teleporter, access_eva, access_bridge, access_all_personal_lockers, access_janitor,
		access_kitchen, access_cargo, access_RC_announce, access_keycard_auth, access_aquila, access_guppy_helm,
		access_solgov_crew, access_gun, access_expedition_shuttle, access_guppy, access_senadv, access_hangar, access_torch_fax,
		access_radio_comm, access_radio_eng, access_radio_med, access_radio_sec, access_radio_serv, access_radio_sup, access_radio_exp
		)

	software_on_spawn = list(/datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/sea/get_description_blurb()
	return "You are the Senior Enlisted Advisor. You are the highest enlisted person on the ship. You are directly subordinate to the CO. You advise them on enlisted concerns and provide expertise and advice to officers. You are responsible for ensuring discipline and good conduct among enlisted, as well as notifying officers of any issues and \"advising\" them on mistakes they make. You also handle various duties on behalf of the CO and XO. You are an experienced enlisted person, very likely equal only in experience to the CO and XO. You know the regulations better than anyone."
