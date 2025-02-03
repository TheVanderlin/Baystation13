/datum/species/ork
	name = SPECIES_ORK
	name_plural = "Orks"

	icobase = ''
	deform = ''
	husk_icon = ''
	preview_icon = null

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch)
	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NO_POISON
	appearance_flags = SPECIES_APPEARANCE_HAS_STATIC_HAIR
	spawn_flags = SPECIES_IS_RESTRICTED
	siemens_coefficient = 0
	min_age =                 1
	max_age =                 500

	meat_type = null
	bone_material = null
	skin_material = null

	breath_type = null
	poison_types = null

	blood_color = "#ff3b22"
	flesh_color = "#3e9700"

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = SYNTH_HEAT_LEVEL_1
	heat_level_2 = SYNTH_HEAT_LEVEL_2
	heat_level_3 = SYNTH_HEAT_LEVEL_3

	genders = list(NEUTER) //Orks are fungi, and reproduce asexually.
	pronouns = list(PRONOUNS_IT_ITS)

	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_CULTIST,
		TAG_HOMEWORLD = HOME_SYSTEM_STATELESS,
		TAG_FACTION =   FACTION_OTHER
	)

	traits = list(
		/singleton/trait/boon/clear_mind = TRAIT_LEVEL_MAJOR,
		/singleton/trait/general/metabolically_inert = TRAIT_LEVEL_MAJOR,
		/singleton/trait/general/nonpermeable_skin = TRAIT_LEVEL_EXISTS
	)

/datum/species/ork/handle_post_spawn(mob/living/carbon/human/H)
	if(H.mind)
		H.mind.reset()
		H.mind.assigned_role = "Ork"
		H.mind.special_role = "Ork"
	H.real_name = "Ork ([rand(1, 1000)])" //Placeholder
	H.SetName(H.real_name)
	H.status_flags |= NO_ANTAG
	..()
