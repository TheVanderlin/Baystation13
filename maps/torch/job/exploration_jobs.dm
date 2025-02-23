/datum/job/pathfinder
	title = "Pathfinder"
	department = "Explorator"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Chief Science Officer"
	selection_color = "#68099e"
	minimal_player_age = 1
	economic_power = 10
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/exploration/pathfinder
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 28
	min_skill = list( // 9 points
		SKILL_BUREAUCRACY = SKILL_BASIC, // 1 point
		SKILL_EVA = SKILL_TRAINED, // 2 points
		SKILL_SCIENCE = SKILL_TRAINED, // 4 points
		SKILL_PILOT = SKILL_BASIC // 2 points
	)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERIENCED,
	                    SKILL_GUNS     = SKILL_EXPERIENCED)

	access = list(
		access_pathfinder, access_explorer, access_eva, access_maint_tunnels, access_bridge, access_magos,
		access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_expedition_shuttle_helm,
		access_guppy, access_hangar, access_petrov, access_petrov_helm, access_petrov_analysis, access_petrov_phoron,
		access_petrov_toxins, access_petrov_chemistry, access_petrov_maint, access_tox, access_tox_storage, access_research,
		access_xenobiology, access_xenoarch, access_torch_fax, access_radio_comm,
		access_radio_exp, access_radio_sci, access_research_storage, access_radio_sup
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management,
							 /datum/computer_file/program/reports)

/datum/job/pathfinder/get_description_blurb()
	return "You are the Pathfinder. Your duty is to organize and lead the expeditions to away sites, carrying out the Mechanicus's Primary Mission. You command Explorers. You make sure that expedition has the supplies and personnel it needs. You can pilot Charon if nobody else provides a pilot. Once on the away mission, your duty is to ensure that anything of scientific interest is brought back to the ship and passed to the relevant research lab."

/datum/job/shuttle_pilot
	title = "Shuttle Pilot"
	supervisors = "the Pathfinder"
	department = "Explorator"
	department_flag = EXP
	total_positions = 1
	spawn_positions = 1
	selection_color = "#68099e"
	economic_power = 8
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 25
	outfit_type = /singleton/hierarchy/outfit/job/torch/passenger/pilot
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	access = list(
		access_mining_office, access_petrov, access_petrov_helm, access_petrov_maint, access_mining_station,
		access_expedition_shuttle, access_expedition_shuttle_helm, access_guppy, access_hangar, access_guppy_helm,
		access_mining, access_pilot, access_solgov_crew, access_eva, access_explorer, access_research,
		access_radio_exp, access_radio_sci, access_radio_sup, access_maint_tunnels, access_magos
	)
	min_skill = list( // 5 points
		SKILL_EVA = SKILL_BASIC, // 1 point
		SKILL_PILOT = SKILL_TRAINED // 4 points
	)

	max_skill = list(
		SKILL_PILOT = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX
	)

/datum/job/explorer
	title = "Explorer"
	department = "Explorator"
	department_flag = EXP
	total_positions = 5
	spawn_positions = 5
	supervisors = "the Pathfinder"
	selection_color = "#68099e"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/exploration/explorer
	allowed_branches = list(/datum/mil_branch/civilian)

	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	min_skill = list( // 1 point
		SKILL_EVA = SKILL_BASIC // 1 point
	)

	max_skill = list(   SKILL_PILOT       = SKILL_MAX,
	                    SKILL_SCIENCE     = SKILL_MAX,
	                    SKILL_COMBAT      = SKILL_EXPERIENCED,
	                    SKILL_GUNS     = SKILL_EXPERIENCED)

	access = list(
		access_explorer, access_maint_tunnels, access_eva, access_magos,
		access_guppy_helm, access_solgov_crew, access_expedition_shuttle, access_guppy, access_hangar,
		access_petrov, access_petrov_maint, access_research, access_radio_exp
	)

	software_on_spawn = list(/datum/computer_file/program/deck_management)

/datum/job/explorer/get_description_blurb()
	return "You are an Explorer. Your duty is to go on expeditions to away sites. The Pathfinder is your team leader. You are to look for anything of economic or scientific interest to the Imperial - mineral deposits, alien flora/fauna, artifacts. You will also likely encounter hazardous environments, aggressive wildlife or malfunctioning defense systems, so tread carefully."
