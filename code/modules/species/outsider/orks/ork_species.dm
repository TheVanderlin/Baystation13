/datum/species/ork
	name = SPECIES_ORK
	name_plural = "Orkz"
	icobase = 'icons/mob/human_races/species/r_ork.dmi'
	deform = 'icons/mob/human_races/species/r_def_ork.dmi'
	min_age = 1
	max_age = 600
	total_health = 150
	var/pain_power = 120
	gluttonous = GLUT_ITEM_NORMAL
	mob_size = MOB_LARGE
	strength = STR_HIGH
//	sexybits_location = BP_GROIN
	species_flags = SPECIES_FLAG_NO_EMBED|SPECIES_FLAG_NO_SLIP
	brute_mod = 0.75
	burn_mod = 0.75
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
		/mob/living/carbon/human/ork/proc/scavenge,
		///mob/living/carbon/human/ork/proc/giveorkzstats,
		/mob/living/carbon/human/ork/proc/warscream,
		)
	unarmed_types = list(
		/datum/unarmed_attack/stomp,
		/datum/unarmed_attack/kick,
		/datum/unarmed_attack/punch,
		/datum/unarmed_attack/bite
		)

/obj/aura/regenerating/human/ork
	brute_mult = 8
	fire_mult = 8
	tox_mult = 4
	organ_mult = 4

/singleton/cultural_info/culture/hidden/orky // this might prevent orks from speaking understandable shit and understanding other common langs
	name = CULTURE_ORKY
	language = LANGUAGE_ORKY

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

/mob/living/carbon/human/ork
	name = "ork"
	real_name = "ork"
	gender = MALE
	status_flags = 0
	var/isempty = 0
	var/waaagh = 0
	var/max_waaagh = 0
	var/inspired = FALSE  //this changes when the ork is buffed by the warboss

/mob/living/carbon/human/ork/New(new_loc)
	max_waaagh = 100
	waaagh = max_waaagh
	var/sound = pick('sound/voice/ork/dakkashout3.ogg','sound/voice/ork/dakkashout2.ogg','sound/voice/ork/dakkashout1.ogg')
	playsound(src, sound, 60)
	..(new_loc, new_orkz)

/* unfinished due to lacking coded items
/singleton/hierarchy/outfit/job/ork
	uniform = /obj/item/clothing/under/rank/ork
	shoes = /obj/item/clothing/shoes/orkboots
	neck = /obj/item/reagent_containers/food/drinks/canteen
	back = /obj/item/storage/backpack/satchel/warfare/kroot
	r_ear = /obj/item/device/radio/headset/red_team
	l_ear = /obj/item/device/radio/headset/blue_team/bravo
	belt = /obj/item/melee/classic_baton/trench_club
	l_pocket = /obj/item/storage/box/ifak
	r_pocket = /obj/item/device/flashlight/lantern
	id = null
	id_slot = null
	pda_slot = null
*/

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
	var/new_orkz = SPECIES_ORK

/proc/random_ork_name(gender)
	var/orknames = list("Bruzgrod", "Drugzag", "Klawgasha", "Warshredda", "Domechoppah", "Gravesmashah", "Krookacka", "Ugtazak", "Wildgasha", "Killgashah", "Bigrippa", "Domesplittah", "Orkamongus", "Barbcooka", "Krookkrushah", "Madwakkah", "Gatgroz", "Grimtoof", "Buzzgob", "Manchewa", "Wurldwrecka", "Wugzark", "Urgak", "Mawsnatcha", "Zogcrusha", "Gollik", "Bloodbrakka", "Crookcooka", "Umieslashah", "Eadhacka", "Zutmuk", "Gloomgoz", "Squigchompa", "Snurkkruk", "Doomkrakkah", "Bigackah", "Wirgox", "Zhagux", "Ghoskrugas", "Wriktug", "Skullstumpah", "Rageskorcha", "Zrakkud", "Trukzorgga", "Kharkux", "Kurgax", "UgeDakka", "Klawaface", "Zogzurk", "Zigkurg" ) // yeah i used a name generator. Gonna zogging krump me?
	if(gender==FEMALE)
		return capitalize(pick(orknames)) + " " + "The Lost"
	else
		return capitalize(pick(orknames)) + " "
