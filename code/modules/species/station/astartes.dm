/datum/species/astartes
	name = SPECIES_ASTARTES
	name_plural = "Astartes"
	icobase = 'icons/mob/human_races/species/astartes/r_astartes.dmi'
	hidden_from_codex = FALSE
	skin_material =   MATERIAL_SKIN_GENERIC

	unarmed_types = list(/datum/unarmed_attack/stomp/astartes, /datum/unarmed_attack/punch/astartes, /datum/unarmed_attack/bite/sharp/astartes)
	primitive_form = "Human"
	darksight_range = 8
	darksight_tint = DARKTINT_GOOD
	gluttonous = GLUT_ANYTHING
	strength = STR_HIGH
	breath_pressure = 12
	slowdown = -1
	brute_mod = 0.60
	burn_mod = 0.65
	stun_mod = 0.65
	oxy_mod = 0.8
	weaken_mod = 0.6
	flash_mod = 0.5
	toxins_mod = 0.3
	radiation_mod = 0.05 //Melanochrome.
	blood_volume = 1000
	silent_steps = TRUE

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 0.2

	min_age = 25
	max_age = 250

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	description = "The Space Marines or Adeptus Astartes are foremost amongst the defenders of Humanity, the greatest of the Emperor of Mankind's Warriors. They are barely human at all, but superhuman; having been made superior in all respects to a normal man by a harsh regime of genetic modification, psycho-conditioning and rigorous training. Untouched by disease and can take a wound that could kill a normal human instantly. Using ancient power armor that can augment their abilities and wielding the best weapons known to man."
  
	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2 //Astartes can survive plagues and injuries that would kill most humans five times over. Should survive hostile planets. Still need to breath tho.
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = 520
	heat_level_2 = 580
	heat_level_3 = 1900

	hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	warning_high_pressure = WARNING_HIGH_PRESSURE * 0.4
	warning_low_pressure = 50
	hazard_low_pressure = -1
	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_NEED_DIRECT_ABSORB | SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_MINOR_CUT | SPECIES_FLAG_NO_TANGLE
	spawn_flags = SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN | SPECIES_CAN_JOIN
	appearance_flags = SPECIES_APPEARANCE_HAS_HAIR_COLOR | SPECIES_APPEARANCE_HAS_LIPS | SPECIES_APPEARANCE_HAS_UNDERWEAR | SPECIES_APPEARANCE_HAS_SKIN_TONE_NORMAL |SPECIES_APPEARANCE_HAS_SKIN_COLOR | SPECIES_APPEARANCE_HAS_EYE_COLOR
	blood_color = "#dc143c" 

	move_trail = /obj/decal/cleanable/blood/tracks

	heat_discomfort_level = 450
	heat_discomfort_strings = list(
		"You feel too warm.",
		"You feel the heat start to become uncomfortable.",
		"You feel very warm."
		)

	cold_discomfort_level = 50
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel cold.",
		"Your skin chills."
		)

	base_auras = list(
		/obj/aura/regenerating/human
		)

	inherent_verbs = list(
		)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart/astartes,
		BP_STOMACH =  /obj/item/organ/internal/stomach,
		BP_LUNGS =    /obj/item/organ/internal/lungs/astartes,
		BP_LIVER =    /obj/item/organ/internal/liver/astartes,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys/astartes,
		BP_EYES =   /obj/item/organ/internal/eyes/astartes,
		BP_BRAIN =  /obj/item/organ/internal/brain/astartes
		BP_PROGENOID_LOWER = /obj/item/organ/internal/progenoid/lower,
		BP_PROGENOID_UPPER = /obj/item/organ/internal/progenoid/upper
		)

	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_HUMAN_IMPERIAL
		)
	)

	traits = list(
		/singleton/trait/boon/filtered_blood = TRAIT_LEVEL_EXISTS,
		/singleton/trait/boon/cast_iron_stomach = TRAIT_LEVEL_EXISTS
	)
