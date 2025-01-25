/datum/job/guard_captain
	title = "Cadian Captain"
	supervisors = "the Commanding Officer and the Executive Officer"
	economic_power = 10
	minimal_player_age = 4
	department = "Security"
	department_flag = SEC
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/command/cadian_captain
	total_positions = 1
	spawn_positions = 1
	alt_titles = list(
		"Krieg Captain" = /singleton/hierarchy/outfit/job/torch/crew/command/krieg_captain,
		"Valhallan Captain" = /singleton/hierarchy/outfit/job/torch/crew/command/valhallan_captain,
		"Catachan Sergeant" = /singleton/hierarchy/outfit/job/torch/crew/command/catachan_sergeant, // Catachan's aren't cool if they're officers.
		"Maccabian Sergeant" = /singleton/hierarchy/outfit/job/torch/crew/command/maccabian_captain,
	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 10
	min_skill = list(SKILL_VIGOR = SKILL_LEGEND,
					SKILL_COMBAT = SKILL_MASTER,
					SKILL_GUNS = SKILL_MASTER,
				)

	max_skill = list(	SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_PRIMARIS,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_VIGOR = SKILL_DEMIGOD)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/guard_captain/get_description_blurb()
	return "As the Guard Captain, you command the ship's security forces, leading personnel in maintaining order and protecting the vessel. You oversee security training, manage defensive operations, and embark on critical missions alongside the Deck Sergeant and Seneschal. Your leadership keeps the crew ready for any threat, aboard the ship or beyond."

/datum/job/guard_captain/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.unarmed_types = list(
		/datum/unarmed_attack/stomp/strong,
		/datum/unarmed_attack/kick/strong,
		/datum/unarmed_attack/punch/strong,
		/datum/unarmed_attack/bite/sharp/strong
	)
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Cadian Captain" || current_title == "Valhallan Captain" || current_title == "Catachan Sergeant" || current_title == "Krieg Captain" || current_title == "Maccabian Sergeant")
		if(current_title == "Catachan Sergeant")
			H.fully_replace_character_name("Sergeant [current_name]")
			H.species.brute_mod = 0.7
			H.species.weaken_mod = 0.77
			H.species.stun_mod = 0.77
			H.species.burn_mod = 0.7
			H.species.toxins_mod = 0.7
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5
			H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
			H.species.silent_steps = TRUE
		else if(current_title == "Cadian Captain")
			H.fully_replace_character_name("Captain [current_name]")
			H.species.weaken_mod = 0.71
			H.species.stun_mod = 0.71
			H.species.slowdown = -0.15
			H.species.silent_steps = TRUE
		else if(current_title == "Maccabian Sergeant")
			H.fully_replace_character_name("Sergeant [current_name]")
			H.species.weaken_mod = 0.73
			H.species.stun_mod = 0.73
			H.species.slowdown = -0.15
		else if(current_title == "Krieg Captain")
			H.fully_replace_character_name("Captain [current_name]")
			H.species.toxins_mod = 0.65
			H.species.radiation_mod = 0.45
			H.species.darksight_range = 4
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
			H.species.species_flags = SPECIES_FLAG_NO_PAIN
		else if(current_title == "Valhallan Captain")
			H.fully_replace_character_name("Captain [current_name]")
			H.species.stun_mod = 0.7
			H.species.weaken_mod = 0.73 // Ice-worlders got that whim hoff circulatory / nervous system control. Resist stuns and thermal damage.
			H.species.paralysis_mod = 0.73
			H.species.cold_level_1 = 180 // Amazing at cold. Terrible with heat.
			H.species.cold_level_2 = 100
			H.species.cold_level_3 = 20
			H.species.heat_level_1 = 330
			H.species.heat_level_2 = 360
			H.species.heat_level_3 = 800
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you command the ship's security forces, leading personnel in maintaining order and protecting the vessel. You oversee security training, manage defensive operations, and embark on critical missions alongside the Deck Sergeant and Seneschal. Your leadership keeps the crew ready for any threat, aboard the ship or beyond.</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>The Astra Militarum, also known as the Imperial Guard in colloquial Low Gothic, is the largest coherent fighting force in the galaxy. They serve as the Imperium of Man's primary combat force and first line of defence from the myriad threats which endanger the existence of the Human race in the 41st Millennium. </font></b></span>")
	return ..()

/datum/job/enforcer_sergeant
	title = "Deck Sergeant"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Captain, Seneschal and Rogue Trader"
	economic_power = 5
	department = "Security"
	department_flag = SEC
	minimal_player_age = 2
	ideal_character_age = 35
	minimum_character_age = list(SPECIES_HUMAN = 27)
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/deck_sergeant
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 9
	min_skill = list(SKILL_VIGOR = SKILL_EXPERIENCED,
					SKILL_COMBAT = SKILL_EXPERIENCED,
					SKILL_GUNS = SKILL_EXPERIENCED,
					SKILL_FORENSICS = SKILL_EXPERIENCED,
				)
	max_skill = list(	SKILL_VIGOR = SKILL_DEMIGOD,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/guard_captain/get_description_blurb()
	return "As the Enforcer Sergeant, you are tasked with maintaining law and order aboard the vessel. You oversee the enforcers, manage prisoner interrogations, and ensure the internal security of the ship. Your duties include handling breaches of discipline, the protection of essential crew, and ensuring compliance with the Rogue Trader's directives."


/datum/job/enforcer_sergeant/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.fully_replace_character_name("Sergeant [current_name]")
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.weaken_mod = 0.7
	H.species.stun_mod = 0.7
	H.species.unarmed_types = list(
		/datum/unarmed_attack/stomp/strong,
		/datum/unarmed_attack/kick/strong,
		/datum/unarmed_attack/punch/strong,
		/datum/unarmed_attack/bite/sharp/strong
	)
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you are tasked with maintaining law and order aboard the vessel. You oversee the enforcers, manage prisoner interrogations, and ensure the internal security of the ship. Your duties include handling breaches of discipline, the protection of essential crew, and ensuring compliance with the Rogue Trader's directives.</font></b></span>")
	return ..()


/datum/job/enforcer
	title = "Deck Enforcer"
	total_positions = 2
	spawn_positions = 2
	department = "Security"
	department_flag = SEC
	supervisors = "Anyone with a fancy title..."
	economic_power = 4
	minimal_player_age = 0
	minimum_character_age = list(SPECIES_HUMAN = 18)
	ideal_character_age = 25
	alt_titles = list() // This is a hack. Overriding a list var with null does not actually override it due to the particulars of dm list init. Do not "clean up" without testing.
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/enforcer
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 7
	min_skill = list(SKILL_VIGOR = SKILL_EXPERIENCED,
					SKILL_COMBAT = SKILL_EXPERIENCED,
					SKILL_GUNS = SKILL_EXPERIENCED,
					SKILL_FORENSICS = SKILL_EXPERIENCED,
				)
	max_skill = list(	SKILL_VIGOR = SKILL_DEMIGOD,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_bridge, access_mechanicus, access_mechanicus_command, access_medical,
		access_medical_command)

	software_on_spawn = list(/datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor)

/datum/job/enforcer/get_description_blurb()
	return "As the Enforcer, you are responsible for enforcing shipboard law and maintaining internal security. You oversee general patrols, ensure the protection of key crew and assets, and handle any breaches of discipline. Your role includes general arrests, executions and interrogations, working closely with the Enforcer Sergeant to uphold order."


/datum/job/enforcer/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("Enforcer [current_name]")
	H.species.unarmed_types = list(
		/datum/unarmed_attack/stomp/strong,
		/datum/unarmed_attack/kick/strong,
		/datum/unarmed_attack/punch/strong,
		/datum/unarmed_attack/bite/sharp/strong
	)
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you are responsible for enforcing shipboard law and maintaining internal security. You oversee general patrols, ensure the protection of key crew and assets, and handle any breaches of discipline. Your role includes general arrests, executions and interrogations, working closely with the Enforcer Sergeant to uphold order.</font></b></span>")
	return ..()


/datum/job/guardsman
	title = "Cadian Guardsman"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Captain, Rogue Trader or Seneschal"
	economic_power = 5
	minimal_player_age = 1
	minimum_character_age = list(SPECIES_HUMAN = 25)
	ideal_character_age = 35
	department = "Security"
	department_flag = SEC
	outfit_type = /singleton/hierarchy/outfit/job/torch/crew/security/cadian
	alt_titles = list(
		"Krieg Guardsman" = /singleton/hierarchy/outfit/job/torch/crew/security/krieg,
		"Valhallan Guardsman" = /singleton/hierarchy/outfit/job/torch/crew/security/valhallan,
		"Catachan Guardsman" = /singleton/hierarchy/outfit/job/torch/crew/security/catachan, // Catachan's aren't cool if they're officers.
		"Maccabian Guardsman" = /singleton/hierarchy/outfit/job/torch/crew/security/maccabian,
	)
	allowed_branches = list(
		/datum/mil_branch/civilian
	)
	allowed_ranks = list(
		/datum/mil_rank/civ/civ
	)
	skill_points = 7
	min_skill = list(SKILL_VIGOR = SKILL_MASTER,
					SKILL_COMBAT = SKILL_MASTER,
					SKILL_GUNS = SKILL_MASTER,
				)
	max_skill = list(	SKILL_VIGOR = SKILL_DEMIGOD,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_COMBAT = SKILL_LEGEND)

	access = list(
		access_dauntless, access_restricted, access_restricted_command, access_bridge, access_mechanicus, access_medical,
		access_medical_command, access_bridge)

	software_on_spawn = list(/datum/computer_file/program/comm,
							 /datum/computer_file/program/digitalwarrant,
							 /datum/computer_file/program/camera_monitor,
							 /datum/computer_file/program/reports)

/datum/job/guardsman/get_description_blurb()
	return "As the Guardsman, you are the ship’s boots on the ground, an extension of its force beyond the hull. Tasked with protecting the crew and engaging in expeditionary missions, you serve as a versatile asset for any conflict or deployment."

/datum/job/guard_captain/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.species.unarmed_types = list(
		/datum/unarmed_attack/stomp/strong,
		/datum/unarmed_attack/kick/strong,
		/datum/unarmed_attack/punch/strong,
		/datum/unarmed_attack/bite/sharp/strong
	)
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(current_title == "Cadian Guardsman" || current_title == "Valhallan Guardsman" || current_title == "Catachan Guardsman" || current_title == "Krieg Guardsman" || current_title == "Maccabian Guardsman")
		if(current_title == "Catachan Guardsman")
			H.fully_replace_character_name("[current_name]")
			H.species.brute_mod = 0.7
			H.species.weaken_mod = 0.77
			H.species.stun_mod = 0.77
			H.species.burn_mod = 0.7
			H.species.toxins_mod = 0.7
			H.species.radiation_mod = 0.55
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 1.5
			H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
			H.species.silent_steps = TRUE
		else if(current_title == "Cadian Guardsman")
			H.fully_replace_character_name("[current_name]")
			H.species.weaken_mod = 0.71
			H.species.stun_mod = 0.71
			H.species.slowdown = -0.1
			H.species.silent_steps = TRUE
		else if(current_title == "Maccabian Guardsman")
			H.fully_replace_character_name("[current_name]")
			H.species.weaken_mod = 0.73
			H.species.stun_mod = 0.73
			H.species.slowdown = -0.1
		else if(current_title == "Krieg Guardsman")
			H.fully_replace_character_name("[current_name]")
			H.species.toxins_mod = 0.65
			H.species.radiation_mod = 0.45
			H.species.darksight_range = 4
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
			H.species.species_flags = SPECIES_FLAG_NO_PAIN
		else if(current_title == "Valhallan Guardsman")
			H.fully_replace_character_name("[current_name]")
			H.species.stun_mod = 0.7
			H.species.weaken_mod = 0.73 // Ice-worlders got that whim hoff circulatory / nervous system control. Resist stuns and thermal damage.
			H.species.paralysis_mod = 0.73
			H.species.cold_level_1 = 180 // Amazing at cold. Terrible with heat.
			H.species.cold_level_2 = 100
			H.species.cold_level_3 = 20
			H.species.heat_level_1 = 330
			H.species.heat_level_2 = 360
			H.species.heat_level_3 = 800
	to_chat(H, "<span class='notice'><b><font size=2>As the [current_title], you are the ship’s boots on the ground, an extension of its force beyond the hull. Tasked with protecting the crew and engaging in expeditionary missions, you serve as a versatile asset for any conflict or deployment.</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>The Astra Militarum, also known as the Imperial Guard in colloquial Low Gothic, is the largest coherent fighting force in the galaxy. They serve as the Imperium of Man's primary combat force and first line of defence from the myriad threats which endanger the existence of the Human race in the 41st Millennium. </font></b></span>")
	return ..()


/mob/proc/voice_in_head(message)
	to_chat(src, "<i>...[message]</i>")

GLOBAL_LIST_INIT(lone_thoughts, list(
	"Subdue the regret. Dust yourself off. Proceed. You'll get it in the next life. Do what you can with this one.",
	"You do have something better to do. Stay strong. You don't need to keep doing this to yourself.",
	"This is somewhere to be. This is all you have, but it's still something. Steel bulkheads and sodium lights. The expanse, the stars. You're still alive.",
	"The road to healing will be a long one. Stay the course. You will make it. Someday.",
	"Just remember that you've made it this far. And it's just a bit farther now. Let's finish this.",
	"Your heart is broken, bratushka. And it cannot be mended. Believe me, I've tried.",
	"A hug a day keeps the bourgeoisie away.",
	"Your mangled brain would like you to know there is a boxer called Contact Mike.",
	"A tremendous loneliness comes over you. Everybody in the world is doing something without you.",
	"All the gifts your parents gave you, all the love and patience of your friends, you drowned in a neurotoxin. You let misery win. And it will keep on winning till you die -- or overcome it.",
	"You are a violent and irrepressible miracle. The vacuum of cosmos and the stars burning in it are afraid of you. Given enough time you would wipe us all out and replace us with nothing -- just by accident.",
	"There is a giant ball there. And evil apes. And the evil apes are dukin' it out on the ball. You're one of them. It's basically all just evil apes dukin' it out on a giant ball.",
	"I hope the Inquisitor doesn't find my Eldar Mommy fan-fiction",))
