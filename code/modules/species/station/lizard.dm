/datum/species/kroot
	name = SPECIES_KROOT
	name_plural = SPECIES_KROOT
	icobase = 'icons/mob/human_races/species/unathi/r_kroot.dmi'
	deform = 'icons/mob/human_races/species/unathi/deformed.dmi'
	preview_icon = 'icons/mob/human_races/species/skrell/preview.dmi'
	bandages_icon = 'icons/mob/bandage.dmi'
	limb_blend = ICON_MULTIPLY
	tail_blend = ICON_MULTIPLY
	hidden_from_codex = FALSE
	skin_material =   MATERIAL_SKIN_GENERIC
	icon_template = 'icons/mob/human_races/species/unathi/template.dmi'

	unarmed_types = list(/datum/unarmed_attack/stomp/strong, /datum/unarmed_attack/claws/strong, /datum/unarmed_attack/punch/strong, /datum/unarmed_attack/bite/sharp/strong)
	primitive_form = "Stok"
	darksight_range = 5
	darksight_tint = DARKTINT_MODERATE
	gluttonous = GLUT_ANYTHING
	strength = STR_HIGH
	breath_pressure = 12
	slowdown = -1
	brute_mod = 0.60
	burn_mod = 0.65
	stun_mod = 0.65
	oxy_mod = 0.8
	weaken_mod = 0.6
	flash_mod = 1.2
	toxins_mod = 0.3
	radiation_mod = 0.05 // We don't want kroot wearing spacesuits or human outfits.
	blood_volume = 800
	silent_steps = TRUE

	health_hud_intensity = 2
	hunger_factor = DEFAULT_HUNGER_FACTOR * 1.8

	min_age = 18
	max_age = 260

	body_temperature = null // cold-blooded, implemented the same way nabbers do it

	description = "A highly avian species, Kroot (or 'Krootkind' as they call themselves) hail from the \
	Uu'sa system, which roughly translates to 'warrior's forge'.<br/><br/>Coming from the harsh, jungle-covered planet \
	Pech, they possess a lean, muscular build with vestigial feathers and sharp beak-like jaws. Kroot culture \
	emphasizes martial prowess, survival, and loyalty to their Shapers, who guide their evolution. They prefer \
	warmer climates than most species, and their native tongue is a harsh, guttural language known as Krootik."

	cold_level_1 = SYNTH_COLD_LEVEL_1
	cold_level_2 = SYNTH_COLD_LEVEL_2 // Kroot can survive plagues and injuries that would kill most humans five times over. Should survive hostile planets. Still need to breath tho.
	cold_level_3 = SYNTH_COLD_LEVEL_3

	heat_level_1 = 520
	heat_level_2 = 580
	heat_level_3 = 1900

	hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	warning_high_pressure = WARNING_HIGH_PRESSURE * 0.4
	warning_low_pressure = 50
	hazard_low_pressure = -1
	species_flags = SPECIES_FLAG_NO_SCAN | SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NEED_DIRECT_ABSORB | SPECIES_FLAG_NO_SLIP | SPECIES_FLAG_NO_MINOR_CUT | SPECIES_FLAG_NO_TANGLE
	spawn_flags = SPECIES_NO_FBP_CONSTRUCTION | SPECIES_NO_FBP_CHARGEN | SPECIES_NO_ROBOTIC_INTERNAL_ORGANS | SPECIES_CAN_JOIN
	appearance_flags = SPECIES_APPEARANCE_HAS_HAIR_COLOR | SPECIES_APPEARANCE_HAS_LIPS | SPECIES_APPEARANCE_HAS_UNDERWEAR | SPECIES_APPEARANCE_HAS_SKIN_TONE_NORMAL |SPECIES_APPEARANCE_HAS_SKIN_COLOR | SPECIES_APPEARANCE_HAS_EYE_COLOR
	blood_color = "#f24b2e"
	organs_icon = 'icons/mob/human_races/species/unathi/organs.dmi'

	move_trail = /obj/decal/cleanable/blood/tracks/claw

	heat_discomfort_level = 450
	heat_discomfort_strings = list(
		"You feel soothingly warm.",
		"You feel the heat sink into your bones.",
		"You feel warm enough to take a nap."
		)

	cold_discomfort_level = 50
	cold_discomfort_strings = list(
		"You feel chilly.",
		"You feel sluggish and cold.",
		"Your scales bristle against the cold."
		)
	breathing_sound = 'sound/voice/lizard.ogg'

	base_auras = list(
		/obj/aura/regenerating/human/unathi
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/diona_heal_toggle,
		/mob/living/carbon/human/proc/kroot_eat
		)

	has_organ = list(
		BP_HEART =    /obj/item/organ/internal/heart,
		BP_STOMACH =  /obj/item/organ/internal/stomach/unathi,
		BP_LUNGS =    /obj/item/organ/internal/lungs,
		BP_LIVER =    /obj/item/organ/internal/liver,
		BP_KIDNEYS =  /obj/item/organ/internal/kidneys,
		BP_EYES =   /obj/item/organ/internal/eyes/unathi,
		BP_BRAIN =  /obj/item/organ/internal/brain/unathi
		)

	descriptors = list(
		/datum/mob_descriptor/height = 2,
		/datum/mob_descriptor/build = 2
		)

	available_cultural_info = list(
		TAG_CULTURE = list(
			CULTURE_KROOT_DESERT,
			CULTURE_KROOT_SALT_SWAMP,
			CULTURE_KROOT_SPACE,
		),
		TAG_HOMEWORLD = list(
			HOME_SYSTEM_MOGHES,
			HOME_SYSTEM_OUERE,
			HOME_SYSTEM_OFFWORLD
		),
		TAG_FACTION = list(
			FACTION_KROOT,
			FACTION_KROOT_WILD
		),
		TAG_RELIGION =  list(
			RELIGION_OTHER,
			RELIGION_IMPERIUM
		)
	)
	default_cultural_info = list(
		TAG_CULTURE   = CULTURE_KROOT_POLAR,
		TAG_HOMEWORLD = HOME_SYSTEM_MOGHES,
		TAG_FACTION   = FACTION_KROOT_INDEPENDENT,
		TAG_RELIGION  = RELIGION_OTHER
	)
	pain_emotes_with_pain_level = list(
			list(/singleton/emote/audible/wheeze, /singleton/emote/audible/roar, /singleton/emote/audible/bellow, /singleton/emote/audible/howl) = 80,
			list(/singleton/emote/audible/grunt, /singleton/emote/audible/groan, /singleton/emote/audible/wheeze, /singleton/emote/audible/hiss) = 50,
			list(/singleton/emote/audible/grunt, /singleton/emote/audible/groan, /singleton/emote/audible/hiss) = 20,
		)

	exertion_effect_chance = 10
	exertion_hydration_scale = 1
	exertion_reagent_scale = 5
	exertion_reagent_path = /datum/reagent/lactate
	exertion_emotes_biological = list(
		/singleton/emote/exertion/biological,
		/singleton/emote/exertion/biological/breath,
		/singleton/emote/exertion/biological/pant
	)

	ingest_amount = 20

	traits = list(
		/singleton/trait/boon/filtered_blood = TRAIT_LEVEL_EXISTS,
		/singleton/trait/boon/cast_iron_stomach = TRAIT_LEVEL_EXISTS,
		/singleton/trait/malus/sugar = TRAIT_LEVEL_MAJOR
	)

	footwear_trail_overrides = list(
		/obj/item/clothing = /obj/decal/cleanable/blood/tracks/claw // Needs to apply to both shoes and space suits.
	)

/datum/species/kroot/equip_survival_gear(mob/living/carbon/human/H)
	..()
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/sandal(H),slot_shoes)

/datum/species/kroot/get_bodytype(mob/living/carbon/human/H)
	return SPECIES_KROOT

/mob/living/carbon/human/proc/kroot_eat()
	set category = "Abilities"
	set name = "Consume Being"

	var/obj/item/grab/G = src.get_active_hand()
	if(!istype(G))
		to_chat(src, "<span class='warning'>We must be grabbing a creature in our active hand to consume them.</span>")
		return

	var/mob/living/carbon/human/T = G.affecting //this will be modified later as we add more rando species
	if(!istype(T))
		to_chat(src, "<span class='warning'>[T] is not compatible with our biology.</span>")
		return

	if(MUTATION_HUSK in T.mutations) //Eating husks would be kinda strange, but idk
		to_chat(src, "<span class='warning'>This creature's DNA is ruined beyond useability!</span>")
		return

	var/obj/item/organ/external/affecting = T.get_organ(src.zone_sel.selecting)
	if(!affecting || istype(affecting, /obj/item/organ/external/chest))
		to_chat(src, "<span class='warning'>We are unable to eat this flesh.</span>") //Dont try and eat a limb that doesn't exist.
		return

	playsound(src, 'sound/effects/lecrunch.ogg', 75, 0, 4)
	src.visible_message("<span class='danger'>[src] begins bearing their teeth...</span>")
	var/extratime = 0
	if(istype(affecting, /obj/item/organ/external/head))
		extratime = 3 SECONDS
	if(do_after(src, 5 SECONDS + extratime, T))
		src.visible_message("<span class='danger'>[src] chomps down on [T]'s [affecting]!</span>")
		playsound(src.loc, 'sound/weapons/bite.ogg', 100, 0, 4)
		affecting.droplimb(0, DROPLIMB_BLUNT)

		T.adjustBruteLoss(45)
		adjustBruteLoss(-20)
		adjust_nutrition(30)
	return TRUE
