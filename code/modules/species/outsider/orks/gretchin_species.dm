/datum/species/gret
	name = SPECIES_GRET
	name_plural = "Gretchin"
	icobase = 'icons/mob/human_races/species/r_gretchin.dmi'
	deform = 'icons/mob/human_races/species/r_def_gretchin.dmi'
	min_age = 1
	max_age = 600
	total_health = 150
	var/pain_power = 100
	gluttonous = GLUT_ITEM_NORMAL
	mob_size = MOB_SMALL
	strength = STR_LOW
//	sexybits_location = BP_GROIN
	species_flags = SPECIES_FLAG_NO_EMBED|SPECIES_FLAG_NO_SLIP
	brute_mod = 1
	burn_mod = 1
	slowdown = -0.15 //Increased move speed
	base_auras = list(
		/obj/aura/regenerating/human/ork
		)
	force_cultural_info = list(
		TAG_CULTURE =   CULTURE_ORKY,
		TAG_HOMEWORLD = HOME_SYSTEM_STATELESS,
		TAG_FACTION =   FACTION_OTHER
	)
	inherent_verbs = list(
		//mob/living/carbon/human/ork/proc/evolve,
		//mob/living/carbon/human/ork/proc/scavenge,
		///mob/living/carbon/human/ork/proc/giveorkzstats,
		//mob/living/carbon/human/ork/proc/warscream,
		)
	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite
		)

/datum/species/ork/handle_post_spawn(mob/living/carbon/human/H)
	H.age = rand(min_age,max_age)//Random age
	if(H.head_hair_style) //never seen an ork wif hair
		H.change_hair("Bald")
	if(H.facial_hair_style)//orks dont have beards
		H.change_facial_hair("shaved")
		H.update_eyes()	//hacky fix, i don't care and i'll never ever care (this fixs the weird grey vision shit when placing people in a new mob)
	return ..()

/mob/living/carbon/human/ork/Stat()
	..()
	if(max_waaagh > 0)
		stat(null, "Waaagh: [waaagh]/[max_waaagh]")

/mob/living/carbon/human/gret
	name = "Gretchin"
	real_name = "Gretchin"
	gender = MALE
	status_flags = 0
	var/isempty = 0
	var/waaagh = 0
	var/max_waaagh = 0
	var/inspired = FALSE  //this changes when the ork is buffed by the warboss

/mob/living/carbon/human/ork/New(new_loc)
	max_waaagh = 100
	waaagh = max_waaagh
	var/dice = rand(1, 2)
	switch(dice)
		if(1)
			playsound(src, 'sound/voice/ork/dakkashout3.ogg', 5)
		if(2)
			playsound(src, 'sound/voice/ork/workwork.ogg', 60) // so they cant scavenge twice
	..(new_loc, new_orkz)

/mob/living/carbon/human/ork/Initialize()
	. = ..()
	fully_replace_character_name(random_ork_name(src.gender))
	faction = "ORKZ"
	if (skillset && skillset.skill_list)
		skillset.skill_list = list()
		for(var/singleton/hierarchy/skill/S in GLOB.skills) //Only want trained CQC and athletics
			skillset.skill_list[S.type] = SKILL_UNSKILLED
		skillset.skill_list[SKILL_GUNS] = SKILL_BASIC
		skillset.skill_list[SKILL_COMBAT] = SKILL_EXPERIENCED
		skillset.on_levels_change()
	/* ditto
	var/singleton/hierarchy/outfit/outfit = outfit_by_type(/singleton/hierarchy/outfit/job/ork)
	outfit.equip(src)
	*/

/mob/living/carbon/human //the most cursed line in all of this code
	var/new_grotz = SPECIES_GRET
