/obj/landmark
	name = "landmark"
	icon = 'icons/effects/landmarks.dmi'
	icon_state = "x2"
	anchored = TRUE
	unacidable = TRUE
	simulated = FALSE
	invisibility = INVISIBILITY_ABSTRACT
	var/delete_me = 0

/obj/landmark/New()
	..()
	tag = "landmark*[name]"

	//TODO clean up this mess
	switch(name)			//some of these are probably obsolete
		if("monkey")
			GLOB.monkeystart += loc
			delete_me = 1
			return
		if("start")
			GLOB.newplayer_start += loc
			delete_me = 1
			return
		if("JoinLate")
			GLOB.latejoin += loc
			delete_me = 1
			return
		if("JoinLateGateway")
			GLOB.latejoin_gateway += loc
			delete_me = 1
			return
		if("JoinLateCryo")
			GLOB.latejoin_cryo += loc
			delete_me = 1
			return
		if("JoinLateCyborg")
			GLOB.latejoin_cyborg += loc
			delete_me = 1
			return
		if("prisonwarp")
			GLOB.prisonwarp += loc
			delete_me = 1
			return
		if("tdome1")
			GLOB.tdome1 += loc
		if("tdome2")
			GLOB.tdome2 += loc
		if("tdomeadmin")
			GLOB.tdomeadmin += loc
		if("tdomeobserve")
			GLOB.tdomeobserve += loc
		if("prisonsecuritywarp")
			GLOB.prisonsecuritywarp += loc
			delete_me = 1
			return
		if("endgame_exit")
			endgame_safespawns += loc
			delete_me = 1
			return
		if("bluespacerift")
			endgame_exits += loc
			delete_me = 1
			return

	landmarks_list += src
	return 1

/obj/landmark/proc/delete()
	delete_me = 1

/obj/landmark/Initialize()
	. = ..()
	if(delete_me)
		return INITIALIZE_HINT_QDEL

/obj/landmark/Destroy()
	landmarks_list -= src
	return ..()

/obj/landmark/start
	name = "start"
	icon = 'icons/mob/screen1.dmi'
	icon_state = "x"
	anchored = TRUE
	invisibility = INVISIBILITY_ABSTRACT

/obj/landmark/start/New()
	..()
	tag = "start*[name]"
	return 1

//Costume spawner landmarks
/obj/landmark/costume/New() //costume spawner, selects a random subclass and disappears
	SHOULD_CALL_PARENT(FALSE) // TODO: Replace this entire set of New() overrides with Initialize() and qdel hints
	var/list/options = typesof(/obj/landmark/costume)
	var/PICK= options[rand(1,length(options))]
	new PICK(src.loc)
	delete_me = 1

//SUBCLASSES.  Spawn a bunch of items and disappear likewise
/obj/landmark/costume/chameleon/New()
	new /obj/item/clothing/mask/chameleon(src.loc)
	new /obj/item/clothing/under/chameleon(src.loc)
	new /obj/item/clothing/glasses/chameleon(src.loc)
	new /obj/item/clothing/shoes/chameleon(src.loc)
	new /obj/item/clothing/gloves/chameleon(src.loc)
	new /obj/item/clothing/suit/chameleon(src.loc)
	new /obj/item/clothing/head/chameleon(src.loc)
	new /obj/item/storage/backpack/chameleon(src.loc)
	delete_me = 1

/obj/landmark/costume/gladiator/New()
	new /obj/item/clothing/under/gladiator(src.loc)
	new /obj/item/clothing/head/helmet/gladiator(src.loc)
	delete_me = 1

/obj/landmark/costume/madscientist/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/suit/armor/grim/toggle/labcoat/mad(src.loc)
	new /obj/item/clothing/glasses/green(src.loc)
	delete_me = 1

/obj/landmark/costume/elpresidente/New()
	new /obj/item/clothing/under/gimmick/rank/captain/suit(src.loc)
	new /obj/item/clothing/head/flatcap(src.loc)
	new /obj/item/clothing/mask/smokable/cigarette/cigar/havana(src.loc)
	new /obj/item/clothing/shoes/jackboots(src.loc)
	delete_me = 1

/obj/landmark/costume/nyangirl/New()
	new /obj/item/clothing/under/schoolgirl(src.loc)
	new /obj/item/clothing/head/kitty(src.loc)
	delete_me = 1

/obj/landmark/costume/maid/New()
	new /obj/item/clothing/under/skirt(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/beret , /obj/item/clothing/head/rabbitears )
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/blindfold(src.loc)
	delete_me = 1

/obj/landmark/costume/butler/New()
	new /obj/item/clothing/accessory/waistcoat/black(src.loc)
	new /obj/item/clothing/under/suit_jacket(src.loc)
	new /obj/item/clothing/head/that(src.loc)
	delete_me = 1

/obj/landmark/costume/scratch/New()
	new /obj/item/clothing/gloves/white(src.loc)
	new /obj/item/clothing/shoes/white(src.loc)
	new /obj/item/clothing/under/scratch(src.loc)
	if (prob(30))
		new /obj/item/clothing/head/cueball(src.loc)
	delete_me = 1

/obj/landmark/costume/prig/New()
	new /obj/item/clothing/accessory/waistcoat/black(src.loc)
	new /obj/item/clothing/glasses/monocle(src.loc)
	var/CHOICE= pick( /obj/item/clothing/head/bowler, /obj/item/clothing/head/that)
	new CHOICE(src.loc)
	new /obj/item/clothing/shoes/black(src.loc)
	new /obj/item/cane(src.loc)
	new /obj/item/clothing/under/sl_suit(src.loc)
	new /obj/item/clothing/mask/fakemoustache(src.loc)
	delete_me = 1

/obj/landmark/costume/plaguedoctor/New()
	new /obj/item/clothing/suit/armor/grim/bio_suit/plaguedoctorsuit(src.loc)
	new /obj/item/clothing/head/plaguedoctorhat(src.loc)
	delete_me = 1

/obj/landmark/costume/nightowl/New()
	new /obj/item/clothing/under/owl(src.loc)
	new /obj/item/clothing/mask/gas/owl_mask(src.loc)
	delete_me = 1

/obj/landmark/costume/waiter/New()
	var/CHOICE= pick( /obj/item/clothing/head/kitty, /obj/item/clothing/head/rabbitears)
	new CHOICE(src.loc)
	new /obj/item/clothing/suit/apron(src.loc)
	delete_me = 1

/obj/landmark/costume/pirate/New()
	new /obj/item/clothing/under/pirate(src.loc)
	new /obj/item/clothing/suit/pirate(src.loc)
	var/CHOICE = pick( /obj/item/clothing/head/pirate , /obj/item/clothing/mask/bandana/red)
	new CHOICE(src.loc)
	new /obj/item/clothing/glasses/eyepatch(src.loc)
	delete_me = 1

/obj/landmark/costume/commie/New()
	new /obj/item/clothing/under/soviet(src.loc)
	new /obj/item/clothing/head/ushanka(src.loc)
	delete_me = 1

/obj/landmark/costume/imperium_monk/New()
	new /obj/item/clothing/suit/imperium_monk(src.loc)
	if (prob(25))
		new /obj/item/clothing/mask/gas/cyborg(src.loc)
	delete_me = 1

/obj/landmark/costume/holiday_priest/New()
	new /obj/item/clothing/suit/holidaypriest(src.loc)
	delete_me = 1

/obj/landmark/costume/marisawizard/fake/New()
	new /obj/item/clothing/head/wizard/marisa/fake(src.loc)
	new/obj/item/clothing/suit/wizrobe/marisa/fake(src.loc)
	delete_me = 1

/obj/landmark/costume/cutewitch/New()
	new /obj/item/clothing/under/sundress(src.loc)
	new /obj/item/clothing/head/witchwig(src.loc)
	new /obj/item/staff/broom(src.loc)
	delete_me = 1

/obj/landmark/costume/fakewizard/New()
	new /obj/item/clothing/suit/wizrobe/fake(src.loc)
	new /obj/item/clothing/head/wizard/fake(src.loc)
	new /obj/item/staff/(src.loc)
	delete_me = 1

/obj/landmark/costume/sexyclown/New()
	new /obj/item/clothing/mask/gas/sexyclown(src.loc)
	new /obj/item/clothing/under/sexyclown(src.loc)
	delete_me = 1

/obj/landmark/costume/sexymime/New()
	new /obj/item/clothing/mask/gas/sexymime(src.loc)
	new /obj/item/clothing/under/sexymime(src.loc)
	delete_me = 1

/obj/landmark/costume/savagehunter/New()
	new /obj/item/clothing/mask/spirit(src.loc)
	new /obj/item/clothing/under/savage_hunter(src.loc)
	delete_me = 1

/obj/landmark/costume/savagehuntress/New()
	new /obj/item/clothing/mask/spirit(src.loc)
	new /obj/item/clothing/under/savage_hunter/female(src.loc)
	delete_me = 1

/obj/landmark/ruin
	var/datum/map_template/ruin/ruin_template

/obj/landmark/ruin/New(loc, my_ruin_template)
	name = "ruin_[sequential_id(/obj/landmark/ruin)]"
	..(loc)
	ruin_template = my_ruin_template
	GLOB.ruin_landmarks |= src

/obj/landmark/ruin/Destroy()
	GLOB.ruin_landmarks -= src
	ruin_template = null
	. = ..()

/obj/random/randomchaos
	name = "random chaos daemon"
	desc = "Spawns a random chaos daemon."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "paper3"

/obj/random/exploration/spawn_choices()
	return list(/mob/living/simple_animal/hostile/daemon/headcrab/infestor = 1,
				/mob/living/simple_animal/hostile/daemon/minion = 1,
				/mob/living/simple_animal/hostile/daemon/hulk = 1,
				/mob/living/simple_animal/hostile/daemon/large = 1)



/obj/random/exploration
	name = "random exploration loot"
	desc = "Low grade loot that is often around 50-100 thrones worth."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "giftpaper"

/obj/random/exploration/spawn_choices()
	return list(/obj/item/exploration_loot = 3,
				/obj/item/exploration_loot/cloth_roll = 4,
				/obj/item/exploration_loot/sealed_enve = 2,
				/obj/item/exploration_loot/chem_package = 2,
			    /obj/item/exploration_loot/package = 3,
				/obj/item/exploration_loot/case = 2,
				/obj/item/exploration_loot/odd_book = 2,
				/obj/item/exploration_loot/guard_diary = 1,
				/obj/item/exploration_loot/shiny_gem = 1,
				/obj/item/exploration_loot/map = 1,
				/obj/item/exploration_loot/spicecase = 1,
				/obj/item/exploration_loot/lootbox = 1,
				/obj/item/exploration_loot/imperial_book = 1)

/obj/random/exploration/high
	name = "random high quality exploration loot"
	desc = "High grade loot that is often around 100-250 thrones worth."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "zrbite"

/obj/random/exploration/high/spawn_choices()
	return list(/obj/item/exploration_loot/map = 3,
			    /obj/item/exploration_loot/drugs = 3,
				/obj/item/exploration_loot/elerium = 1,
				/obj/item/exploration_loot/guard_diary = 2,
				/obj/item/exploration_loot/bm_file = 1,
				/obj/item/exploration_loot/shiny_gem = 2,
				/obj/item/exploration_loot/zrbite = 1,
				/obj/item/exploration_loot/elerium = 1,
				/obj/item/exploration_loot/elerium_ingot = 0.7,
				/obj/item/exploration_loot/zrbite_ingot = 0.7,
				/obj/item/exploration_loot/artiaxe = 0.5,
				/obj/item/exploration_loot/goldbar = 0.5)


/obj/random/loot/tech1
	name = "LOW TECH SPAWNER"
	desc = "spawns low tech"
	icon_state = "armoraccessory"

/obj/random/loot/tech1/spawn_choices()
	return list(/obj/item/rnd/eng3 = 12,
				/obj/item/rnd/eng5 = 8,
				/obj/item/rnd/eng8 = 4,
				/obj/item/rnd/combat3 = 14,
				/obj/item/rnd/combat5 = 10,
				/obj/item/rnd/combat8 = 5,
				/obj/item/reagent_containers/food/snacks/poo = 6,
				/obj/item/rnd/power3 = 10,
				/obj/item/rnd/power5 = 6,
				/obj/item/rnd/power8 = 3,
				/obj/item/reagent_containers/food/snacks/poo = 6,
				/obj/item/rnd/biospace3 = 10,
				/obj/item/rnd/biospace5 = 6,
				/obj/item/rnd/biospace8 = 3,
				/obj/item/reagent_containers/food/snacks/poo = 6,
				/obj/item/rnd/eng5 = 1)

/obj/random/loot/tech2
	name = "HIGH TECH SPAWNER"
	desc = "spawn high tech"
	icon_state = "armoraccessory"

/obj/random/loot/tech2/spawn_choices()
	return list(/obj/item/rnd/eng3 = 12,
				/obj/item/rnd/eng5 = 8,
				/obj/item/rnd/eng8 = 5,
				/obj/item/rnd/combat3 = 14,
				/obj/item/rnd/combat5 = 10,
				/obj/item/rnd/combat8 = 7,
				/obj/item/rnd/combat5 = 2,
				/obj/item/rnd/power3 = 10,
				/obj/item/rnd/power5 = 6,
				/obj/item/rnd/power8 = 3,
				/obj/item/rnd/power5 = 1,
				/obj/item/rnd/biospace3 = 10,
				/obj/item/rnd/biospace5 = 6,
				/obj/item/rnd/biospace8 = 3,
				/obj/item/rnd/biospace5 = 1,
				/obj/item/rnd/illegal3 = 12,
				/obj/item/rnd/illegal5 = 8,
				/obj/item/rnd/illegal8 = 4,
				/obj/item/rnd/illegal5 = 2,
				/obj/item/rnd/eng5 = 1)



/obj/random/loot/lightmelee
	name = "Light Melee"
	desc = "This is a weapon loot spawner with a high chance of spawning common light melee weapons."
	icon_state = "lightmelee"

/obj/random/loot/lightmelee/spawn_choices()
	return list(/obj/item/material/hatchet = 1,
				/obj/item/material/hatchet/machete = 4,
				/obj/item/material/hatchet/machete/deluxe = 2,
				/obj/item/material/twohanded/ravenor/knife = 8,
				/obj/item/material/twohanded/ravenor/knife/bowie = 6,
				/obj/item/material/twohanded/ravenor/knife/trench = 5,
				/obj/item/material/twohanded/ravenor/knife/glaive = 4,
				/obj/item/material/twohanded/ravenor/sword/cutro/adamantine = 1,
				/obj/item/material/twohanded/ravenor/sword/cutro = 2)

/obj/random/loot/heavymelee // need to also make a sword only spawner without traditional melee. then a traditional melee spawner.
	name = "Heavy Melee"
	desc = "This is a weapon loot spawner with a high chance of spawning common heavy melee weapons."
	icon_state = "heavymelee"

/obj/random/loot/heavymelee/spawn_choices()
	return list(/obj/item/material/twohanded/ravenor/sword/chopper/heavy = 8,
				/obj/item/material/twohanded/ravenor/sword/chopper/heavy/adamantine = 1,
				/obj/item/material/twohanded/ravenor/sword/broadsword = 8,
				/obj/item/material/twohanded/ravenor/sword/broadsword/adamantine = 1,
				/obj/item/material/twohanded/ravenor/powermaul = 1,
				/obj/item/material/twohanded/ravenor/axe = 4,
				/obj/item/material/twohanded/ravenor/axe/bardiche = 3,
				/obj/item/material/twohanded/ravenor/axe/bardiche/adamantine = 1,
				/obj/item/material/twohanded/ravenor/axe/saintie = 2,
				/obj/item/material/twohanded/ravenor/axe/spear = 2,
				/obj/item/material/twohanded/ravenor/axe/spear/adamantine = 1,
				/obj/item/material/twohanded/ravenor/axe/spear/fuscina = 2,
				/obj/item/material/twohanded/ravenor/axe/spear/fuscina/adamantine = 1)

/obj/random/loot/swordmelee // need to also make a sword only spawner without traditional melee. then a traditional melee spawner.
	name = "Heavy Melee"
	desc = "This is a weapon loot spawner with a high chance of spawning common heavy melee weapons."
	icon_state = "heavymelee"

/obj/random/loot/heavymelee/spawn_choices()
	return list(/obj/item/material/twohanded/ravenor/sword/chopper/heavy = 16,
				/obj/item/material/twohanded/ravenor/sword/chopper/heavy/adamantine = 3,
				/obj/item/material/twohanded/ravenor/sword/broadsword = 16,
				/obj/item/material/twohanded/ravenor/sword/broadsword/adamantine = 3,
				/obj/item/material/twohanded/ravenor/sword/cutro/adamantine = 2,
				/obj/item/material/twohanded/ravenor/chainsword = 3,
				/obj/item/material/twohanded/ravenor/chainsword/guard = 4,
				/obj/item/material/twohanded/ravenor/chainsword/eviscerator = 1,
				/obj/item/material/twohanded/ravenor/chainsword/drusian = 2)

/obj/random/loot/ammo1/New()
	new /obj/item/ammo_magazine/shotholder(src.loc)
	new /obj/item/ammo_magazine/shotholder(src.loc)
	qdel(src)
/obj/random/loot/ammo2/New()
	new /obj/item/ammo_magazine/shotholder(src.loc)
	new /obj/item/ammo_magazine/shotholder(src.loc)
	qdel(src)

/obj/random/loot/ammobundle
	name = "Ammo Bundle"
	desc = "This is a ammo loot spawner which spawns an RNG bundle of related ammo.."
	icon_state = "randomammo"

/obj/random/loot/ammobundle/spawn_choices()
	// Replace individual items with paths to the `ammoX` spawners
	var/list/choices = list(
		/obj/random/loot/ammo1 = 5,
		/obj/random/loot/ammo2 = 3
	)
	return choices

/obj/random/loot/sidearmbundle
	name = "Sidearm Bundle"
	desc = "This is a sidearm loot spawner which spawns an RNG pistol with it's ammo."
	icon_state = "sidearm"

/obj/random/loot/sidearmbundle/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/stubpistol = 10,
		/obj/landmark/rav/villierspistol = 8,
		/obj/landmark/rav/talonpistol = 6,
		/obj/landmark/rav/snubpistol = 6,
		/obj/landmark/rav/slugpistol = 8,
		/obj/landmark/rav/oldslugpistol = 4,
		/obj/landmark/rav/shotgunslugpistol = 3,
		/obj/landmark/rav/imperialrevolver = 6,
		/obj/landmark/rav/holdoutrevolver = 3,
		/obj/landmark/rav/heavyrevolver = 6,
		/obj/landmark/rav/matebaheavyrevolver = 2,
		/obj/landmark/rav/autogunrevolver = 1,
		/obj/landmark/rav/boltpistol = 2,
		/obj/landmark/rav/laspistol = 4,
		/obj/landmark/rav/accatranlaspistol = 2,
		/obj/landmark/rav/grimlaspistol = 3,
		/obj/landmark/rav/luciuslaspistol = 2,
		/obj/landmark/rav/militarumlaspistol = 3,
		/obj/landmark/rav/sawnshotgun = 6
	)
	return choices

/obj/random/loot/raresidearmbundle
	name = "Rare Sidearm Bundle"
	desc = "This is a sidearm loot spawner which spawns an RNG rare sidearm with its ammo."
	icon_state = "sidearm"

/obj/random/loot/raresidearmbundle/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/talonpistol = 4,
		/obj/landmark/rav/oldslugpistol = 2,
		/obj/landmark/rav/shotgunslugpistol = 3,
		/obj/landmark/rav/matebaheavyrevolver = 3,
		/obj/landmark/rav/autogunrevolver = 2,
		/obj/landmark/rav/boltpistol = 3,
		/obj/landmark/rav/drusianboltpistol = 2,
		/obj/landmark/rav/accatranlaspistol = 3,
		/obj/landmark/rav/luciuslaspistol = 3,
		/obj/landmark/rav/sawnshotgun = 6,
		/obj/landmark/rav/hellpistol = 2,
		/obj/landmark/rav/plasmapistol = 2,
		/obj/landmark/rav/archeotechplasmapistol = 1,
		/obj/landmark/rav/mechanicusplasmapistol = 1,
		/obj/landmark/rav/xenosplasmapistol = 1,
		/obj/landmark/rav/chaosplasmapistol = 1,
		/obj/landmark/rav/taupulsepistol = 4
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/gunbundle
	name = "Slug Gun Bundle"
	desc = "This is a slug gun loot spawner which spawns an RNG slug gun with it's ammo."
	icon_state = "badranged"

/obj/random/loot/gunbundle/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/autogun = 10,
		/obj/landmark/rav/kriegautogun = 5,
		/obj/landmark/rav/valhallaautogun = 6,
		/obj/landmark/rav/a80autogun = 6,
		/obj/landmark/rav/stubberautogun = 6,
		/obj/landmark/rav/slugrifle = 6,
		/obj/landmark/rav/agrislugrifle = 4,
		/obj/landmark/rav/scipioslugrifle = 4,
		/obj/landmark/rav/lockebolter = 2,
		/obj/landmark/rav/doublebarrelshotgun = 4,
		/obj/landmark/rav/voxlegisshotgun = 4,
		/obj/landmark/rav/magraveshotgun = 2,
		/obj/landmark/rav/sawnshotgun = 2,
		/obj/landmark/rav/imperialsniper = 5,
		/obj/landmark/rav/cruciblesniper = 2,
		/obj/item/gun/magnetic/railgun = 2,
		/obj/landmark/rav/triangongsniper = 2,
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice


/obj/random/loot/raregunslug
	name = "Rare Slug Gun Bundle"
	desc = "This is a rare slug gun loot spawner which spawns an RNG slug gun with it's ammo."
	icon_state = "badranged"

/obj/random/loot/raregunslug/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/kriegautogun = 7,
		/obj/landmark/rav/valhallaautogun = 6,
		/obj/landmark/rav/stubberautogun = 5,
		/obj/landmark/rav/slugrifle = 8,
		/obj/landmark/rav/lockebolter = 2,
		/obj/landmark/rav/drusianlockebolter = 1,
		/obj/landmark/rav/magraveshotgun = 6,
		/obj/landmark/rav/cruciblesniper = 4,
		/obj/landmark/rav/throwersniper = 1,
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/lasbundle
	name = "Las Gun Bundle"
	desc = "This is a las gun loot spawner which spawns an RNG las gun with it's ammo."
	icon_state = "lasgun"

/obj/random/loot/lasbundle/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/lasgun = 9,
		/obj/landmark/rav/kantrael = 11,
		/obj/landmark/rav/accatran = 10,
		/obj/landmark/rav/lucius = 10,
		/obj/landmark/rav/catachan = 9,
		/obj/landmark/rav/triplex = 10,
		/obj/landmark/rav/hotshot = 3,
		/obj/landmark/rav/krieg = 1,
		/obj/landmark/rav/masterwork = 1,
		/obj/landmark/rav/volkite = 1,
		/obj/landmark/rav/pulserifle = 2,
		/obj/landmark/rav/railgun = 1, // Tau ion rifle and certain faction rare gear won't ever spawn as loot. As to avoid making unique faction gear feel commonplace.
		/obj/landmark/rav/plasma = 2,
		/obj/landmark/rav/meltagun = 1,
		/obj/landmark/rav/multi = 1
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/raregunsenergy
	name = "Rare Energy Bundle"
	desc = "This is a rare gun loot spawner which spawns a rare energy gun with it's ammo."
	icon_state = "lasgun"

/obj/random/loot/raregunsenergy/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/lucius = 6,
		/obj/landmark/rav/catachan = 4,
		/obj/landmark/rav/triplex = 2,
		/obj/landmark/rav/hotshot = 4,
		/obj/landmark/rav/krieg = 2,
		/obj/landmark/rav/masterwork = 2,
		/obj/landmark/rav/volkite = 1,
		/obj/landmark/rav/pulserifle = 3,
		/obj/landmark/rav/railgun = 1,
		/obj/landmark/rav/plasma = 2,
		/obj/landmark/rav/meltagun = 1,
		/obj/landmark/rav/multi = 1
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/basicarmorbundle
	name = "Basic Armor Bundle"
	desc = "This is a basic armor bundle spawner which spawns an armor and potentially accessories."
	icon_state = "randomarmor"

/obj/random/loot/basicarmorbundle/spawn_choices()
	var/list/choices = list(
		/obj/landmark/rav/zealot = 4,
		/obj/landmark/rav/mordian = 4,
		/obj/landmark/rav/cadianconscript = 5,
		/obj/landmark/rav/bountyhunter = 3,
		/obj/landmark/rav/bondsman = 6,
		/obj/landmark/rav/medicae = 2,
		/obj/landmark/rav/cuirass = 2,
		/obj/landmark/rav/breastplate = 3,
		/obj/landmark/rav/hauberkheavy = 3,
		/obj/landmark/rav/fullplate = 2,
		/obj/landmark/rav/heavyplate = 1,
		/obj/landmark/rav/holyplate = 1,
		/obj/landmark/rav/holyplatebrigandine = 1,
		/obj/landmark/rav/siege = 2,
		/obj/landmark/rav/tribal = 1,
		/obj/landmark/rav/tribalplate = 1,
		/obj/landmark/rav/hiver = 5,
		/obj/landmark/rav/hiverleather = 4,
		/obj/landmark/rav/hiverleatherjacket = 4,
		/obj/landmark/rav/hiverslumcoat = 3,
		/obj/landmark/rav/hiversmuggler = 3,
		/obj/landmark/rav/hivertrenchcoat = 3,
		/obj/landmark/rav/hiverscum = 3,
		/obj/landmark/rav/hivercarapace = 1,
		/obj/landmark/rav/scrapforged = 4,
		/obj/landmark/rav/scrapduster = 2,
		/obj/landmark/rav/scrapflakcuirass = 1,
		/obj/landmark/rav/scrapheavyflak = 1,
		/obj/landmark/rav/armoredtrench = 2
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/rarearmorbundle
	name = "Rare Armor Bundle"
	desc = "This is a rare armor bundle spawner which spawns an armor and potentially accessories."
	icon_state = "randomarmor"

/obj/random/loot/rarearmorbundle/spawn_choices()
	var/list/choices = list(
	/obj/landmark/rav/heavyflak = 4,
	/obj/landmark/rav/ghillieflak = 1,
	/obj/landmark/rav/cadianheavy = 3,
	/obj/landmark/rav/krieger = 2,
	/obj/landmark/rav/maccabian = 1,
	/obj/landmark/rav/enforcer = 1,
	/obj/landmark/rav/scrapcarapace = 3,
	/obj/landmark/rav/scrapcarapace2 = 2,
	/obj/landmark/rav/scrapcarapace3 = 2,
	/obj/landmark/rav/scrapcuirass = 3,
	/obj/landmark/rav/scrapranger = 1,
	/obj/landmark/rav/scrapranger2 = 1,
	/obj/landmark/rav/scrapranger3 = 1
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/superrarearmor
	name = "Super Rare Armor Bundle"
	desc = "This is a SUPER rare armor bundle spawner which spawns an incredibly rare armor."
	icon_state = "randomarmor"

/obj/random/loot/superrarearmor/spawn_choices()
	var/list/choices = list(
	/obj/landmark/rav/superrare1 = 4,
	/obj/landmark/rav/superrare2 = 1,
	/obj/landmark/rav/superrare3 = 1,
	/obj/landmark/rav/superrare4 = 1,
	/obj/landmark/rav/superrare5 = 4,
	/obj/landmark/rav/superrare5a = 1,
	/obj/landmark/rav/superrare6 = 4,
	/obj/landmark/rav/superrare7 = 4,
	/obj/landmark/rav/superrare8 = 3,
	/obj/landmark/rav/superrare9 = 3,
	/obj/landmark/rav/superrare10 = 1,
	/obj/landmark/rav/superrare11 = 3,
	/obj/landmark/rav/superrare12 = 1,
	/obj/landmark/rav/superrare13 = 1,
	/obj/landmark/rav/superrare14 = 1,
	/obj/landmark/rav/superrare15 = 4,
	/obj/landmark/rav/superrare16 = 1,
	/obj/landmark/rav/superrare17 = 1,
	/obj/landmark/rav/superrare18 = 1,
	/obj/landmark/rav/superrare19 = 1,
	/obj/landmark/rav/superrare20 = 3,
	/obj/landmark/rav/superrare21 = 3,
	/obj/landmark/rav/superrare22 = 3,
	)
	var/list/picked_choice = pickweight(choices)
	return picked_choice

/obj/random/loot/armorinserts
	name = "Basic Armor accessories"
	desc = "This is a loot spawner that chest inserts and bodygloves."
	icon_state = "armoraccessory"

/obj/random/loot/armorinserts/spawn_choices()
	return list(/obj/item/clothing/accessory/armor_plate = 5,
				/obj/item/clothing/accessory/armor_plate/flak = 12,
				/obj/item/clothing/accessory/armor_plate/flakheavy = 10,
				/obj/item/clothing/accessory/armor_plate/flaklamellar = 5,
				/obj/item/clothing/accessory/armor_plate/flaktribal = 4,
				/obj/item/clothing/accessory/armor_plate/paddingmech = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovebio = 2)

/obj/random/loot/armorinsertsrare
	name = "Rare Armor accessories"
	desc = "This is a loot spawner that spawns rare chest inserts/bodygloves."
	icon_state = "armoraccessory"

/obj/random/loot/armorinsertsrare/spawn_choices()
	return list(/obj/item/clothing/accessory/armor_plate/flakheavy = 2,
				/obj/item/clothing/accessory/armor_plate/carapace = 4,
				/obj/item/clothing/accessory/armor_plate/carapaceheavy = 2,
				/obj/item/clothing/accessory/armor_plate/mechplate = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovemech = 1)

/obj/random/loot/arminserts
	name = "Arm accessories(not working)" // Currently arm/leg inserts have no icon. zero clue why.
	desc = "This is a loot spawner that spawns body gloves."
	icon_state = "armoraccessory"

/obj/random/loot/arminserts/spawn_choices()
	return list(/obj/item/clothing/accessory/armor_plate/paddingmech = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovebio = 2)

/obj/random/loot/leginserts
	name = "Leg accessories(not working)"
	desc = "This is a loot spawner that spawns body gloves."
	icon_state = "armoraccessory"

/obj/random/loot/leginserts/spawn_choices()
	return list(/obj/item/clothing/accessory/armor_plate/paddingmech = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove = 3,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 2,
				/obj/item/clothing/accessory/armor_plate/bodyglovebio = 2)

/obj/random/loot/randomsupply
	name = "Random Food & Meds"
	desc = "This is a loot spawner that spawns food and medical items."
	icon_state = "randomsupply"

/obj/random/loot/randomsupply/spawn_choices()
	return list(/obj/landmark/rav/medstuff1 = 3,
				/obj/landmark/rav/medstuff2 = 2,
				/obj/landmark/rav/medstuff3 = 1,
				/obj/landmark/rav/medstuff4 = 1,
				/obj/landmark/rav/medstuff5 = 2,
				/obj/landmark/rav/food1 = 4,
				/obj/item/storage/firstaid/radiation = 1,
				/obj/item/storage/firstaid/trauma = 2,
				/obj/item/storage/firstaid/toxin = 1,
				/obj/item/storage/firstaid/o2 = 1,
				/obj/item/device/scanner/health = 1,
				/obj/item/storage/mre/menu2 = 2,
				/obj/item/storage/mre/menu3 = 1,
				/obj/item/storage/mre/menu4 = 1)

/obj/landmark/rav/food1/New()
	new /obj/item/reagent_containers/food/snacks/proteinbar(src.loc)
	new /obj/item/reagent_containers/food/snacks/proteinbar(src.loc)
	new /obj/item/reagent_containers/food/snacks/chocolatebar(src.loc)
	new /obj/item/reagent_containers/food/snacks/candy(src.loc)
	qdel(src)

/obj/landmark/rav/medstuff1/New()
	new /obj/item/stack/medical/ointment(src.loc)
	new /obj/item/stack/medical/bruise_pack(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/pain(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/antirad(src.loc)
	new /obj/item/reagent_containers/ivbag/nanoblood(src.loc)
	new /obj/item/storage/firstaid/surgery(src.loc)
	qdel(src)

/obj/landmark/rav/medstuff2/New()
	new /obj/item/storage/pill_bottle/antitox(src.loc)
	new /obj/item/storage/pill_bottle/dylovene(src.loc)
	new /obj/item/storage/pill_bottle/dexalin_plus(src.loc)
	new /obj/item/storage/pill_bottle/inaprovaline(src.loc)
	qdel(src)

/obj/landmark/rav/medstuff3/New()
	new /obj/item/storage/pill_bottle/citalopram(src.loc)
	new /obj/item/storage/pill_bottle/antidexafen(src.loc)
	new /obj/item/storage/pill_bottle/hyronalin(src.loc)
	new /obj/item/storage/pill_bottle/spaceacillin(src.loc)
	new /obj/item/storage/pill_bottle/sugariron(src.loc)
	new /obj/item/storage/pill_bottle/tramadol(src.loc)
	qdel(src)

/obj/landmark/rav/medstuff4/New()
	new /obj/item/storage/pill_bottle/antitox(src.loc)
	new /obj/item/storage/pill_bottle/dermaline(src.loc)
	new /obj/item/storage/pill_bottle/bicaridine(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/inaprovaline(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/dexalin_plus(src.loc)
	qdel(src)

/obj/landmark/rav/medstuff5/New()
	new /obj/item/storage/pill_bottle/happy(src.loc)
	new /obj/item/storage/pill_bottle/assorted(src.loc)
	new /obj/item/storage/pill_bottle/methylphenidate(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/coagulant(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/combatstim(src.loc)
	qdel(src)

/obj/landmark/rav/medstuff6/New()
	new /obj/item/storage/firstaid/combat(src.loc)
	new /obj/item/stack/medical/advanced/ointment(src.loc)
	new /obj/item/stack/medical/advanced/bruise_pack(src.loc)
	new /obj/item/reagent_containers/ivbag/nanoblood(src.loc)
	new /obj/item/reagent_containers/hypospray/autoinjector/combatstim(src.loc)
	qdel(src)

/obj/random/loot/randomcolonyitems
	name = "Random Colonial Items"
	desc = "This is a loot spawner that spawns colonial items. Similar to engineering spawner but includes more random items."
	icon_state = "randomsupply"

/obj/random/loot/randomcolonyitems/spawn_choices()
	return list(/obj/item/device/eftpos = 6,
				/obj/landmark/rav/colitems3 = 4,
				/obj/item/grenade/frag/homemade = 2,
				/obj/item/grenade/frag/high_yield = 1,
				/obj/item/grenade/frag/high_yield/krak = 1,
				/obj/item/device/binoculars = 4,
				/obj/item/stack/material/steel/twenty = 6,
				/obj/item/stack/material/glass/fifty = 5,
				/obj/item/device/bot_kit = 2,
				/obj/landmark/rav/colitems4 = 3,
				/obj/item/device/synthesized_instrument/guitar = 1,
				/obj/item/device/synthesized_instrument/violin = 1,
				/obj/item/device/synthesized_instrument/trumpet = 1,
				/obj/item/clothing/accessory/armor_plate/bodyglove2 = 1,
				/obj/landmark/rav/colitems2 = 3,
				/obj/landmark/rav/colitems1 = 6)

/obj/landmark/rav/colitems1/New()
	new /obj/item/device/geiger(src.loc)
	new /obj/item/device/gps(src.loc)
	new /obj/item/device/kit/suit(src.loc)
	qdel(src)

/obj/landmark/rav/colitems2/New()
	new /obj/item/auto_cpr(src.loc)
	new /obj/item/autopsy_scanner(src.loc)
	qdel(src)

/obj/landmark/rav/colitems3/New()
	new /obj/item/stack/barbwire(src.loc)
	new /obj/item/stack/material/wood/maple/twentyfive(src.loc)
	new /obj/item/flame/lighter/random(src.loc)
	qdel(src)

/obj/landmark/rav/colitems4/New()
	new /obj/item/torch/self_lit(src.loc)
	new /obj/item/flamethrower/full(src.loc)
	qdel(src)

/obj/random/loot/randomsupply/engineering
	name = "Random Engineering Items"
	desc = "This is a loot spawner that spawns engineering supplies and tools."
	icon_state = "randomsupply" // Add explosives like grenades. also fix grenades.

/obj/random/loot/randomsupply/engineering/spawn_choices()
	return list(/obj/item/stack/material/steel/fifty = 6,
				/obj/landmark/rav/engitems1 = 6,
				/obj/landmark/rav/engitems2 = 2,
				/obj/landmark/rav/engitems3 = 4,
				/obj/landmark/rav/engitems4 = 4,
				/obj/landmark/rav/engitems5 = 2,
				/obj/landmark/rav/engitems6 = 2,
				/obj/landmark/rav/engitems7 = 2,
				/obj/item/grenade/frag/high_yield/plasma = 1,
				/obj/item/grenade/frag/high_yield/krak = 2,
				/obj/landmark/rav/engitems8 = 2,
				/obj/item/cell/alien = 2)

/obj/landmark/rav/engitems1/New()
	new /obj/item/stack/barbwire(src.loc)
	new /obj/item/stack/material/steel/twenty(src.loc)
	new /obj/item/stack/material/glass/fifty(src.loc)
	new /obj/item/stack/material/wood/maple/twentyfive(src.loc)
	qdel(src)

/obj/landmark/rav/engitems2/New()
	new /obj/item/clothing/glasses/meson(src.loc)
	new /obj/item/device/geiger(src.loc)
	new /obj/item/device/gps/marker(src.loc)
	new /obj/item/device/scanner/gas(src.loc)
	new /obj/item/device/scanner/mining(src.loc)
	qdel(src)

/obj/landmark/rav/engitems3/New()
	new /obj/item/airlock_brace(src.loc)
	new /obj/item/ducttape(src.loc)
	new /obj/item/cell/high(src.loc)
	new /obj/item/extinguisher(src.loc)
	new /obj/item/flame/lighter/random(src.loc)
	qdel(src)

/obj/landmark/rav/engitems4/New()
	new /obj/item/cell/high(src.loc)
	new /obj/item/device/flashlight/maglight(src.loc)
	new /obj/item/device/bot_kit(src.loc)
	qdel(src)

/obj/landmark/rav/engitems5/New()
	new /obj/item/cell/device/high/laspack(src.loc)
	new /obj/item/cell/hyper(src.loc)
	new /obj/item/cell/device/high/mechanicus(src.loc)
	qdel(src)

/obj/landmark/rav/engitems6/New()
	new /obj/item/cell/device/high/melta(src.loc)
	new /obj/item/cell/device/high/mechanicus(src.loc)
	new /obj/item/device/scanner/spectrometer(src.loc)
	new /obj/item/shuttle_beacon(src.loc)
	qdel(src)

/obj/landmark/rav/engitems7/New()
	new /obj/item/device/scanner/price(src.loc)
	new /obj/item/device/scanner/reagent(src.loc)
	new /obj/item/cane/concealed(src.loc)
	qdel(src)

/obj/landmark/rav/engitems8/New()
	new /obj/item/tank/jetpack(src.loc)
	new /obj/item/tank/jetpack(src.loc)
	new /obj/item/clothing/accessory/armor_plate/bodyglovemech(src.loc)
	qdel(src)

/obj/random/loot/randomsupply/tech
	name = "Random Tech Lootbags"
	desc = "This is a loot spawner that spawns tech supplies and tools in large quantities inside a dufflebag."
	icon_state = "ricehat" // For longer list spawners make some landmarks

/obj/random/loot/randomsupply/tech/spawn_choices()
	return list(/obj/item/storage/backpack/dufflebag/techitems1 = 3,
				/obj/item/storage/backpack/dufflebag/techitems2 = 2,
				/obj/item/storage/backpack/dufflebag/techitems3 = 3,
				/obj/item/clothing/glasses/cadiangoggles/elite = 5,
				/obj/item/clothing/glasses/thermal/aviators = 1)

/obj/item/storage/backpack/dufflebag/techitems1
	startswith = list(
		/obj/item/device/scanner/gas,
		/obj/item/device/scanner/mining,
		/obj/item/device/scanner/price,
		/obj/item/device/scanner/reagent,
		/obj/item/device/scanner/spectrometer,
		/obj/item/cell/hyper,
	)

/obj/item/storage/backpack/dufflebag/techitems2
	startswith = list(
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/meson/aviators,
		/obj/item/clothing/glasses/night,
		/obj/item/clothing/glasses/eyepatch/hud/medical,
		/obj/item/portable_destructive_analyzer,
		/obj/item/cell/device/high/mechanicus,
	)

/obj/item/storage/backpack/dufflebag/techitems3
	startswith = list(
		/obj/item/cell/device/high/melta,
		/obj/item/cell/device/high/laspack,
		/obj/item/rcd,
		/obj/item/cell/alien,
	)

//  need to make a new science loot spawner for stuff like this

/obj/random/loot/lootcontraband
	name = "Random Contraband Ultra Lootbags"
	desc = "This is a SUPER RARE loot spawner that spawns non-supply items including archeotech contraband."
	icon_state = "ricehat"

/obj/random/loot/lootcontraband/spawn_choices()
	return list(/obj/item/storage/backpack/satchel/leather/contra1 = 3,
				/obj/item/storage/backpack/satchel/leather/contra2 = 3,
				/obj/item/storage/backpack/satchel/leather/contra3 = 3,
				/obj/item/storage/backpack/satchel/leather/contra4 = 2,
				/obj/item/storage/backpack/satchel/leather/contra5 = 2,
				/obj/item/storage/backpack/satchel/leather/contra6 = 3,
				/obj/item/storage/backpack/satchel/leather/contra7 = 2,
				/obj/item/storage/box/contraband/imp_uplink = 1)

/obj/item/storage/backpack/satchel/leather/contra1
	startswith = list(
		/obj/item/device/debugger,
		/obj/item/device/cosmetic_surgery_kit,
		/obj/item/storage/box/contraband/spy,
		/obj/item/storage/box/contraband/silenced,
	)

/obj/item/storage/backpack/satchel/leather/contra2
	startswith = list(
		/obj/item/device/uplink_service/jamming,
		/obj/item/device/uplink_service/fake_command_report,
		/obj/item/clothing/accessory/armor_plate/bodyglove2,
		/obj/item/plushbomb,
	)

/obj/item/storage/backpack/satchel/leather/contra3
	startswith = list(
		/obj/item/pinpointer/radio,
		/obj/item/card/id/syndicate,
		/obj/item/device/uplink_service/fake_crew_announcement,
		/obj/item/clothing/accessory/armor_plate/bodyglovemech,
	)

/obj/item/storage/backpack/satchel/leather/contra4
	startswith = list(
		/obj/item/device/uplink_service/fake_rad_storm,
		/obj/item/device/powersink,
		/obj/item/storage/box/contraband/imp_freedom,
		/obj/item/card/emag,
		/obj/item/device/radio_jammer,
	)

/obj/item/storage/backpack/satchel/leather/contra5
	startswith = list(
		/obj/item/device/personal_shield,
		/obj/item/storage/box/contraband/corpse_cube,
		/obj/item/device/flashlight/flashdark,
		/obj/item/clothing/glasses/thermal,
	)

/obj/item/storage/backpack/satchel/leather/contra6
	startswith = list(
		/obj/item/storage/box/contraband/toxin,
		/obj/item/storage/box/contraband/syringegun,
		/obj/item/storage/box/contraband/imp_compress,
		/obj/item/cane/concealed,
	)

/obj/item/storage/backpack/satchel/leather/contra7
	startswith = list(
		/obj/item/flamethrower/full/loaded,
		/obj/item/flame/lighter/zippo,
		/obj/item/storage/box/contraband/imp_explosive,
	)

/obj/random/loot/lootstructureartifact
	name = "Random Artifact Machinery Loot"
	desc = "This is a rare loot spawner that spawns rare machinery from a list like shield generators and singularity beacons."
	icon_state = "arcade"

/obj/random/loot/lootstructureartifact/spawn_choices()
	return list(/obj/machinery/power/shield_generator = 4,
				/obj/machinery/power/singularity_beacon = 2,
				/obj/machinery/power/port_gen/pacman/super/potato/reactor = 4,
				/obj/machinery/power/emitter/gyrotron = 2,
				/obj/machinery/power/supply_beacon = 1,
				/obj/machinery/nuclearbomb = 2)

/obj/random/loot/lootartifacts
	name = "Random Artifact Loot"
	desc = "This is a rare loot spawner that spawns non-supply items including xenos artifacts and chaos items."
	icon_state = "ricehat"

/obj/random/loot/lootartifacts/spawn_choices()
	return list(/obj/landmark/rav/construct = 4,
				/obj/landmark/rav/scrying = 2,
				/obj/item/contract/wizard/telepathy = 4,
				/obj/item/contract/boon/wizard/fireball = 2,
				/obj/item/contract/boon/wizard/knock = 4,
				/obj/item/spellbook/student = 1,
				/obj/item/toy/cursedbear = 2)

/obj/landmark/rav/construct/New()
	new /obj/item/device/soulstone/full(src.loc)
	new /obj/structure/constructshell/cult(src.loc)
	qdel(src)

/obj/landmark/rav/scrying/New()
	new /obj/item/contract/wizard/xray(src.loc)
	new /obj/item/scrying(src.loc)
	qdel(src)

/obj/random/loot/rigloot
	name = "RIG / HARDSUIT Gear Loot"
	desc = "This is a rare loot spawner that spawns rigsuits and hardsuit modules together."
	icon_state = "randomsupply"

/obj/random/loot/rigloot/spawn_choices()
	return list(/obj/item/rig/ce = 3,
				/obj/item/rig/light/ninja = 1,
				/obj/landmark/rav/hardsuit1 = 2,
				/obj/landmark/rav/hardsuit2 = 5,
				/obj/landmark/rav/hardsuit3 = 5,
				/obj/landmark/rav/hardsuit4 = 4,
				/obj/landmark/rav/hardsuit5 = 5)

/obj/landmark/rav/hardsuit1/New()
	new /obj/item/rig/military(src.loc)
	new /obj/item/rig_module/actuators(src.loc)
	new /obj/item/rig_module/device/clustertool/skrell(src.loc)
	new /obj/item/rig_module/vision(src.loc)
	new /obj/item/rig_module/grenade_launcher(src.loc)
	qdel(src)

/obj/landmark/rav/hardsuit2/New()
	new /obj/item/rig/hazard(src.loc)
	new /obj/item/rig_module/device/welder(src.loc)
	new /obj/item/rig_module/device/drill(src.loc)
	new /obj/item/rig_module/device/orescanner(src.loc)
	new /obj/item/rig_module/device/multitool(src.loc)
	new /obj/item/rig_module/vision(src.loc)
	qdel(src)

/obj/landmark/rav/hardsuit3/New()
	new /obj/item/rig/exploration(src.loc)
	new /obj/item/rig_module/device/welder(src.loc)
	new /obj/item/rig_module/cooling_unit(src.loc)
	new /obj/item/rig_module/device/clustertool/skrell(src.loc)
	qdel(src)

/obj/landmark/rav/hardsuit4/New()
	new /obj/item/rig/hazmat(src.loc)
	new /obj/item/rig_module/device/anomaly_scanner(src.loc)
	new /obj/item/rig_module/cooling_unit(src.loc)
	new /obj/item/rig_module/device/clustertool/skrell(src.loc)
	new /obj/item/rig_module/fabricator(src.loc)
	qdel(src)

/obj/landmark/rav/hardsuit5/New()
	new /obj/item/rig/industrial(src.loc)
	new /obj/item/rig_module/device/rcd(src.loc)
	new /obj/item/rig_module/cooling_unit(src.loc)
	new /obj/item/rig_module/device/clustertool/skrell(src.loc)
	new /obj/item/rig_module/vision(src.loc)
	new /obj/item/rig_module/actuators(src.loc)
	new /obj/item/rig_module/datajack(src.loc)
	qdel(src)

/obj/random/loot/valuableloot
	name = "Valuable 40k Loot"
	desc = "This is a valuable loot that spawns artifacts worth lots of money."
	icon_state = "randomsupply"

/obj/random/loot/valuableloot/spawn_choices()
	return list(/obj/item/fluff_items/alien_blaster = 1,
				/obj/item/stack/material/plasteel/fifty = 1,
				/obj/item/stack/material/gold/ten = 1,
				/obj/item/stack/material/uranium/ten = 1,
				/obj/item/stack/material/phoron/ten = 1,
				/obj/item/stack/material/diamond/ten = 1,
				/obj/item/stack/material/silver/ten = 2,
				/obj/item/fluff_items/atlantis = 2,
				/obj/item/fluff_items/bonehelm = 2,
				/obj/item/fluff_items/gramophone = 2,
				/obj/item/fluff_items/jojo = 2,
				/obj/item/fluff_items/paperwork = 2,
				/obj/item/fluff_items/power_bat = 1,
				/obj/item/fluff_items/redalert = 2,
				/obj/item/fluff_items/silvermask = 2,
				/obj/item/fluff_items/skull = 2,
				/obj/item/fluff_items/spessmanhelm = 2,
				/obj/item/fluff_items/ultrabanner = 1,
				/obj/item/fluff_items/vietnam = 2,
				/obj/item/fluff_items/goldmask = 2,
				/obj/item/fluff_items/goldsword = 1,
				/obj/item/fluff_items/bfg = 1)

// to do make a storage spawner? backpacks and belts together. also a secondary storage spawner for something more specialized. lastly checkout boxes to add to lists.
// secondary make a large ammo spawner. it will spawn a dufflebag or a locker crate loaded with a certain ammo. Include every type, up to laspacks..
// probably need a crate spawner for archeotech or gun hordes too. like crate of lasguns, crate of plasma guns. not too many guns just the main ones.

// /obj/item/rig_module/chem_dispenser/ninja gives OP as fuck chems.
/*
no home. these items dont have a landmark made yet so make one for them
/obj/item/device/encryptionkey/ert // make a encryption key spawner, also edit encrpytion key paths / names to be lore accurate. Maybe do a double check pass

/obj/item/device/paicard delete these from the torch omg

also should get a spacesuit, exosuit, etc spawner. hat spawner? outfit spawner for underuniforms. mask spawner. shoe spawner...


/obj/item/fluff_items/necron save for when necron dungeon making

/obj/item/key investigate

/obj/item/organ/internal/augment
/obj/item/pickaxe and /obj/item/pickaxe/xeno // maybe take this and also some power tools / complex engi tools. make engineering/prospect
/obj/item/powerfist // for power armor maybe? innate natural

/obj/item/seeds random seeds landmark?

/obj/item/storage/belt <-- check out all storage classes like boxes

/obj/item/supply_beacon <-- edit supply pods



need to also add toolbelts, toolboxes and unique engineering tools.
*/


// WARHAMMER 40k

/*


/obj/random/loot/randomitemcaves // make this a grenade spawn?
	name = "Random Item Caves"
	desc = "This is a loot spawner that spawns random items."
	icon_state = "randompilgrim"

/obj/random/loot/randomitemcaves/spawn_choices()
	return list(/obj/item/shovel = 3,
				/obj/item/clothing/glasses/night = 3,
				/obj/item/pickaxe = 3,
				/obj/item/storage/firstaid/combat = 2,
				/obj/item/storage/firstaid/surgery = 2,
				/obj/item/reagent_containers/hypospray/autoinjector/revive = 6,
				/obj/item/clothing/accessory/holster/waist = 6,
				/obj/item/clothing/accessory/storage/webbing = 8,
				/obj/item/stack/thrones3/ten = 4,
				/obj/item/stack/thrones3/twenty = 2,
				/obj/item/stack/thrones2/ten = 1,
				/obj/item/grenade/frag/high_yield/homemade = 1,
				/obj/item/grenade/frag = 1,
				/obj/item/storage/backpack/satchel/heavy = 1,
				/obj/item/clothing/under/rank/victorian = 1,
				/obj/item/grenade/frag/high_yield/krak = 1)

/obj/random/loot/randomitemtown
	name = "Random Item Pilgrim"
	desc = "This is a loot spawner that spawns random items that will be useful for any pilgrim."
	icon_state = "randompilgrim"

/obj/random/loot/randomitemtown/spawn_choices()
	return list(/obj/item/device/binoculars = 2,
				/obj/item/storage/box/ifak = 5,
				/obj/item/storage/firstaid/adv = 1,
				/obj/item/stack/thrones3/ten = 1,
				/obj/item/stack/thrones3/twenty = 1,
				/obj/item/clothing/suit/armor/militia = 2,
				/obj/item/melee/sword/combat_knife = 1,
				/obj/item/stack/thrones2/ten = 2,
				/obj/item/storage/backpack/satchel/heavy = 1,
				/obj/item/clothing/accessory/holster/waist = 3,
				/obj/item/clothing/accessory/storage/webbing = 5,
				/obj/item/storage/belt/utility/full = 2,
				/obj/item/clothing/accessory/legguards = 2,
				/obj/item/clothing/accessory/armguards/ballistic = 2,
				/obj/item/clothing/under/rank/victorian = 1,
				/obj/item/grenade/frag/high_yield/homemade = 1)



*/
