/datum/job/magos_biologis
	title = "Magos Biologis"
	supervisors = "the Rogue Trader and the Machine God."
	economic_power = 8
	minimal_player_age = 3
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 48
	total_positions = 1
	spawn_positions = 1
	department = "Medical"
	department_flag = MED
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/biologis
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 10
	min_skill = list(
		SKILL_BUREAUCRACY = SKILL_TRAINED,
		SKILL_MEDICAL = SKILL_MASTER,
		SKILL_ANATOMY = SKILL_MASTER,
		SKILL_CHEMISTRY = SKILL_MASTER,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_TRAINED,
		SKILL_GUNS = SKILL_TRAINED,
		SKILL_FORENSICS = SKILL_TRAINED,
		SKILL_SCIENCE = SKILL_TRAINED,
		SKILL_MECH = SKILL_TRAINED,
		SKILL_COMPUTER = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED,
		SKILL_CONSTRUCTION = SKILL_TRAINED,
		SKILL_ELECTRICAL = SKILL_TRAINED
	)

	max_skill = list(	SKILL_MEDICAL = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_SCIENCE = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_ANATOMY = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_FORENSICS = SKILL_MASTER,
						SKILL_CHEMISTRY = SKILL_MASTER)

	access = list(
		access_medical, access_morgue, access_maint_tunnels, access_external_airlocks, access_emergency_storage,
		access_teleporter, access_eva, access_bridge, access_heads,
		access_chapel_office, access_crematorium, access_chemistry, access_virology, access_aquila,
		access_cmo, access_surgery, access_RC_announce, access_keycard_auth, access_psychiatrist,
		access_medical_equip, access_solgov_crew, access_senmed, access_hangar, access_torch_fax, access_radio_comm,
		access_radio_med
	)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/magos_biologis/get_description_blurb()
	return "As the Magos Biologis, you are part of the Rogue Trader's retinue, operating beyond the constraints of the Mechanicus. You manage the biological research and medical efforts aboard the vessel, overseeing Skitarii and Medicae personnel alike. Your duty is to ensure your medicae staff are prepared for surgery, treatment, and field response, and that every biological specimen or anomaly is studied with ruthless efficiency. You are expected to lead in matters of biology and medicine, stepping in as surgeon or advisor when necessary, always furthering the quest for knowledge and mastery over the flesh."

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
	H.species.toxins_mod = 0.45
	H.species.radiation_mod = 0.3
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.3 // Biologis has the best biology
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("Magos Biologis [current_name]")
	H.say(":e OMVISS1@H &(47*TECHNICA)B(ADMECH)... transponder signal active.")
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you are part of the Rogue Trader's retinue, operating beyond the constraints of the Mechanicus. You manage the biological research and medical efforts aboard the vessel, overseeing Skitarii and Medicae personnel alike. Your duty is to ensure your medicae staff are prepared for surgery, treatment, and field response, and that every biological specimen or anomaly is studied with ruthless efficiency. You are expected to lead in matters of biology and medicine, stepping in as surgeon or advisor when necessary, always furthering the quest for knowledge and mastery over the flesh.</font></b></span>")
	return ..()

/datum/job/sister_hospitaller
	title = "Sister Hospitaller"
	department = "Medical"
	department_flag = MED
	minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 24)
	ideal_character_age = 45
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Magos Biologis, Chaplain Militant and Rogue Trader"
	selection_color = "#013d3b"
	economic_power = 6
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/medical/hospitaller
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 14
	min_skill = list(
		SKILL_VIGOR = SKILL_TRAINED,
		SKILL_MEDICAL = SKILL_EXPERIENCED,
		SKILL_ANATOMY = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_TRAINED,
		SKILL_GUNS = SKILL_TRAINED,
		SKILL_FORENSICS = SKILL_TRAINED,
		SKILL_EVA = SKILL_TRAINED
	)

	max_skill = list(	SKILL_MEDICAL = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER,
						SKILL_ANATOMY = SKILL_MASTER,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_CHEMISTRY = SKILL_MASTER)

	access = list(
		access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
		access_crematorium, access_chemistry, access_surgery,
		access_medical_equip, access_solgov_crew, access_senmed, access_radio_med
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
/datum/job/sister_hospitaller/get_description_blurb()
	return "As the Sister Hospitaller, you are responsible for overseeing the health and medical training of the crew. A guiding hand for novitiates, you impart the knowledge and faith required to heal both body and soul, embodying the sacred duty of the Orders Hospitaller. Your care extends beyond the physical, offering spiritual solace to those in need, ensuring that the crew remains steadfast in both their service and devotion."

/datum/job/sister_hospitaller/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.weaken_mod = 0.71
	H.species.stun_mod = 0.71
	H.species.slowdown = -0.2
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you are responsible for overseeing the health and medical training of the crew. A guiding hand for novitiates, you impart the knowledge and faith required to heal both body and soul, embodying the sacred duty of the Orders Hospitaller. Your care extends beyond the physical, offering spiritual solace to those in need, ensuring that the crew remains steadfast in both their service and devotion.</font></b></span>")
	return ..()

/datum/job/pharmacologis
	title = "Pharmacologis"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Magos Biologis and Rogue Trader"
	selection_color = "#013d3b"
	economic_power = 6
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 30
	minimal_player_age = 1
	alt_titles = list(
		"Senior Medicae",
		"Chief Chirugeon"
	)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/medical/pharmacologis
	allowed_branches = list(/datum/mil_branch/civilian)
	allowed_ranks = list(/datum/mil_rank/civ/civ)
	skill_points = 18
	min_skill = list(
		SKILL_MEDICAL = SKILL_TRAINED,
		SKILL_ANATOMY = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY = SKILL_EXPERIENCED,
		SKILL_FORENSICS = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_MEDICAL = SKILL_MASTER,
						SKILL_FORENSICS = SKILL_MASTER,
						SKILL_ANATOMY = SKILL_MASTER,
						SKILL_CHEMISTRY = SKILL_MASTER)

	access = list(
		access_medical, access_maint_tunnels, access_emergency_storage,
		access_medical_equip, access_solgov_crew, access_chemistry,
	 	access_virology, access_morgue, access_crematorium, access_radio_med
	)

/datum/job/pharmacologis/get_description_blurb()
	return "As the Pharmacologis, you serve alongside the Medicae and Sister Hospitaller, wielding your knowledge of chemistry and biological science to support their sacred work. You are responsible for the formulation of complex medicines, compounds, and stimulants, as well as assisting in advanced surgical procedures when required. Though you are not tasked with direct patient care, your role is critical—ensuring the crew can fight, endure, and survive in the Emperor’s name. Your work stands at the intersection of science and duty, safeguarding the vitality of those who serve the Imperium."

/datum/job/pharmacologis/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you serve alongside the Medicae and Sister Hospitaller, wielding your knowledge of chemistry and biological science to support their sacred work. You are responsible for the formulation of complex medicines, compounds, and stimulants, as well as assisting in advanced surgical procedures when required. Though you are not tasked with direct patient care, your role is critical—ensuring the crew can fight, endure, and survive in the Emperor’s name. Your work stands at the intersection of science and duty, safeguarding the vitality of those who serve the Imperium.</font></b></span>")
	return ..()

/datum/job/medicae
	title = "Medicae"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the Sister Hospitaller and Rogue Trader"
	economic_power = 6
	minimum_character_age = list(SPECIES_HUMAN = 19)
	ideal_character_age = 40
	minimal_player_age = 0
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/medical/medicae
	alt_titles = list("Chirugeon")
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 18
	min_skill = list(
		SKILL_VIGOR = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_TRAINED,
		SKILL_ANATOMY = SKILL_TRAINED,
		SKILL_CHEMISTRY = SKILL_TRAINED,
		SKILL_COMBAT = SKILL_BASIC, // Surgery skill overlap
		SKILL_FORENSICS = SKILL_TRAINED,
	)

	max_skill = list(	SKILL_MEDICAL = SKILL_MASTER,
						SKILL_FORENSICS = SKILL_MASTER,
						SKILL_ANATOMY = SKILL_MASTER,
						SKILL_CHEMISTRY = SKILL_MASTER)

	access = list(
		access_medical, access_morgue, access_maint_tunnels,
		access_external_airlocks, access_emergency_storage,
		access_eva, access_surgery, access_medical_equip,
		access_solgov_crew, access_hangar, access_radio_med
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/medicae/get_description_blurb()
	return "You are a Medicae aboard the Rogue Trader’s vessel, trained to deal with the harsh and unforgiving conditions of both space and hive cities. Your responsibilities include treating battlefield injuries, performing surgeries, and managing the health of the crew. Whether responding to emergencies or ensuring long-term health, your experience in crowded, under-equipped environments has honed your ability to handle crises with efficiency and precision, making you indispensable in the chaos of the void."

/datum/job/medicae/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_name]")
	to_chat(H, "<span class='notice'><b><font size=2>You are a [current_title] aboard the Rogue Trader’s vessel, trained to deal with the harsh and unforgiving conditions of both space and hive cities. Your responsibilities include treating battlefield injuries, performing surgeries, and managing the health of the crew. Whether responding to emergencies or ensuring long-term health, your experience in crowded, under-equipped environments has honed your ability to handle crises with efficiency and precision, making you indispensable in the chaos of the void.</font></b></span>")
	return ..()

/datum/job/novitiate
	title = "Novitiate"
	department = "Medical"
	department_flag = MED
	total_positions = 1
	spawn_positions = 1
	supervisors = "the God Emperor, Sister Hospitaller and Rogue Trader"
	selection_color = "#013d3b"
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 20
	alt_titles = list("Progena")

	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/medical/medicae
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)

	skill_points = 18
	min_skill = list(
		SKILL_VIGOR = SKILL_BASIC,
		SKILL_MEDICAL = SKILL_BASIC,
		SKILL_ANATOMY = SKILL_BASIC,
		SKILL_CHEMISTRY = SKILL_TRAINED,
		SKILL_GUNS = SKILL_BASIC, // Training from hospitaller
		SKILL_COMBAT = SKILL_BASIC,
		SKILL_FORENSICS = SKILL_BASIC,
	) // No max skill list, they cap at experienced.

	access = list(
		access_medical, access_morgue, access_maint_tunnels,
		access_external_airlocks, access_emergency_storage,
		access_surgery, access_medical_equip, access_solgov_crew,
		access_radio_med
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)

/datum/job/novitiate/get_description_blurb()
	return "As a Novitiate aboard the vessel, you are in the early stages of rigorous training under the Sister Hospitaller and Chaplain Militant. Your education spans both spiritual teachings and practical disciplines, preparing you for a future role within the Imperium."

/datum/job/novitiate/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	H.fully_replace_character_name("[current_title] [current_name]")
	to_chat(H, "<span class='notice'><b><font size=2>As a [current_title] aboard the vessel, you are in the early stages of rigorous training under the Sister Hospitaller and Chaplain Militant. Your education spans both spiritual teachings and practical disciplines, preparing you for a future role within the Imperium.</font></b></span>")
	return ..()


/datum/job/rogue_guest
	title = "Counselor"
	total_positions = 1
	spawn_positions = 1
	ideal_character_age = 40
	economic_power = 4
	minimum_character_age = list(SPECIES_HUMAN = 24)
	minimal_player_age = 0
	supervisors = "the Chief Medical Officer"
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/medical/counselor

	allowed_branches = list(
		/datum/mil_branch/civilian)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ)
	min_skill = list( // 6 points
		SKILL_BUREAUCRACY = SKILL_TRAINED, // 2 points
		SKILL_MEDICAL = SKILL_BASIC // 4 points
	)
	max_skill = list(
		SKILL_MEDICAL = SKILL_TRAINED,
		SKILL_ANATOMY = SKILL_TRAINED
	)
	access = list(
		access_medical, access_psychiatrist,
		access_solgov_crew, access_medical_equip, access_radio_med
	)

	software_on_spawn = list(
		/datum/computer_file/program/suit_sensors,
		/datum/computer_file/program/camera_monitor
	)
	give_psionic_implant_on_join = FALSE

/datum/job/rogue_guest/equip(mob/living/carbon/human/H)
	if (H.mind?.role_alt_title == "Mentalist")
		psi_faculties = list("[PSI_COERCION]" = PSI_RANK_OPERANT)
	return ..()


/datum/job/rogue_guest/get_description_blurb()
		return "You are the Counselor. Your main responsibility is the mental health and wellbeing of the crew. You are subordinate to the Chief Medical Officer."

/datum/job/juniormedicae
	title = "Junior Medicae" // Disabled for now -- Hospitaller is acting as Chirugeon unless we really need one later.
	department = "Medical"
	department_flag = MED
	minimal_player_age = 2
	minimum_character_age = list(SPECIES_HUMAN = 29)
	ideal_character_age = 45
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Rogue Trader"
	selection_color = "#013d3b"
	economic_power = 4
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/medical/hospitaller
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 26
	min_skill = list( // 41 points
		SKILL_BUREAUCRACY = SKILL_BASIC, // 1 point
		SKILL_MEDICAL = SKILL_EXPERIENCED, // 16 points
		SKILL_ANATOMY = SKILL_EXPERIENCED, // 16 points
		SKILL_CHEMISTRY = SKILL_BASIC, // 4 points
		SKILL_DEVICES = SKILL_TRAINED // 4 points
	)

	access = list(
		access_medical, access_morgue, access_virology, access_maint_tunnels, access_emergency_storage,
		access_crematorium, access_chemistry, access_surgery,
		access_medical_equip, access_solgov_crew, access_senmed, access_radio_med
	)

	software_on_spawn = list(/datum/computer_file/program/suit_sensors,
							 /datum/computer_file/program/camera_monitor)
