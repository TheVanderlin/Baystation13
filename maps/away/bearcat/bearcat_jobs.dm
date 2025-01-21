/obj/submap_landmark/spawnpoint/noble
	name = "Witch Hunter"

/obj/submap_landmark/spawnpoint/crewman
	name = "Crewman"

/obj/submap_landmark/spawnpoint/kasrkin
	name = "Kasrkin"

/obj/submap_landmark/spawnpoint/merchant
	name = "Merchant"

/obj/submap_landmark/spawnpoint/pdf
	name = "Demeter Deserter"

/obj/submap_landmark/spawnpoint/detective
	name = "Detective"
/*
else if(current_title == "Bounty Hunter")
			to_chat(H,"<span class='danger'><b><font size=4>THE BOUNTY HUNTER</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Bounty Hunter, you are adrift after your last client met an untimely demise on the ship. With your skills underutilized, you now navigate the dangerous Ghoul Stars, seeking new contracts and opportunities to reclaim your place in the hunt.</font></b></span>")
			H.species.brute_mod = 0.7
			H.species.weaken_mod = 0.71
			H.species.stun_mod = 0.71
			H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/bountyhunter, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/bountyhead, slot_head)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/briefcase/crimekit, slot_r_hand)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/mateba, slot_belt)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/ms, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/ms, slot_in_backpack)
			*/

/datum/job/submap/kasrkin
	title = "Kasrkin"
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	outfit_type = /singleton/hierarchy/outfit/job/survivor/kasrkin
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	total_positions = 0
	skill_points = 9
	min_skill = list(
		SKILL_COMBAT = SKILL_MASTER,
		SKILL_GUNS = SKILL_MASTER,
		SKILL_VIGOR = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_PRIMARIS,
						SKILL_GUNS = SKILL_PRIMARIS,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/kasrkin/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE KASRKIN</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>The Astra Militarum, also known as the Imperial Guard in colloquial Low Gothic, is the largest coherent fighting force in the galaxy. They serve as the Imperium of Man's primary combat force and first line of defence from the myriad threats which endanger the existence of the Human race in the 41st Millennium. </font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>Elite stormtroopers of Cadia, expertly trained to confront the most formidable threats. They operate with precision and discipline, using superior tactics and advanced equipment. As the vanguard against Chaos, they exemplify bravery and unwavering commitment to the Emperor’s cause.</font></b></span>")
	if(prob(2))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(2))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDEW. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.fully_replace_character_name("Lieutenant [current_name]")
	H.species.brute_mod = 0.7
	H.species.burn_mod = 0.7
	H.species.weaken_mod = 0.61
	H.species.stun_mod = 0.61
	H.species.slowdown = -0.2 // Kasrkin are renowned for incredible speed and the ability to scale any terrain, even mountains.
	H.species.silent_steps = TRUE
	return ..()

/datum/job/submap/pdf
	title = "Demeter Deserter"
	supervisors = "the trust of your fellow Colonists"
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/colonist2
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 9 // PDF do a lot of drills so physically fit but not much practical combat experience.
	min_skill = list(
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/pdf/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE DESERTER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Deserter, you've abandoned the PDF in search of fortune as a mercenary. Your knowledge of Militarum codes and procedures now serves you as you navigate the dangerous life of a hired gun.</font></b></span>")
	if(prob(3))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(3))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.fully_replace_character_name("[current_name]")
	H.species.brute_mod = 0.7
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/guard/uniform, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/heavy, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/deserter, slot_l_hand) // has gloves, mask, shoes and detpack
	if(prob(15))
		H.equip_to_slot_or_store_or_drop(new /obj/item/card/emag, slot_in_backpack)
	else if(prob(30))
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/radio_jammer, slot_in_backpack)
	if(prob(10))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/pdf, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/kantrael, slot_belt)
	else if(prob(25))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/medic, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/medic, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/assault_rifle, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/firstaid/adv, slot_in_backpack)
	else if(prob(15))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/heavy, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/heavy, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/stubber, slot_belt)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/flak/conscript/pdf/capt, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/cadian/conscript/captain, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/hellpistol, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/lucius, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/cell/device/high/laspack, slot_in_backpack)
	return ..()

/datum/job/submap/merchant
	title = "Merchant" // The only semi-free roles left to assign to Demeter is Witch Hunter and Deserter. Also something else somewhere maybe?
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/demeter/crew
	supervisors = "yourself"
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 10
	min_skill = list(
		SKILL_FINANCE = SKILL_EXPERIENCED,
		SKILL_BUREAUCRACY = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/merchant/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE MERCHANT</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Merchant aboard the Demeter, you are a passenger seeking new opportunities in the Ghoul Stars. With your keen eye for profit and trade, you aim to expand your business, hoping to capitalize on the chaos and scarcity of resources in this grim sector.</font></b></span>")
	if(prob(1))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(1))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/merchant, slot_wear_suit)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/bowlerhat/razor, slot_head)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/contraband/clerical, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/secure/briefcase/money, slot_r_hand)
	H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/shotgun/cane, slot_l_hand)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/contraband/cigarette, slot_in_backpack)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/contraband/imp_explosive, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/book/manual/chef_recipes(get_turf(src)))
	return ..()

/datum/job/submap/noble
	title = "Witch Hunter" // The only semi-free roles left to assign to Demeter is Witch Hunter and Deserter. Also something else somewhere maybe?
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/demeter/crew
	supervisors = "yourself"
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 9
	min_skill = list(
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_MASTER,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/noble/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE WITCH HUNTER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Witch Hunter, you’re a zealot of the Ecclesiarchy, a disgraced agent now plying your trade as a sell-sword. Warp-touched and marked by your encounters with the foul, you hunt down heretics and those tainted by Chaos, seeking atonement through your merciless pursuit of the unholy.</font></b></span>")
	H.species.brute_mod = 0.7 // Warp touched witch hunter
	H.species.burn_mod = 0.65
	H.species.toxins_mod = 0.5
	H.species.radiation_mod = 0.4
	H.species.weaken_mod = 0.71
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 1.25
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/witch, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/witch, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/sword/broadsword, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/stub/snub, slot_in_backpack)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/witch, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/feudal/fullplate, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/redbl, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/axe, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/slug/old, slot_in_backpack)
	return ..()

/datum/job/submap/demeter_crew
	title = "Crewman"
	supervisors = "yourself"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/demeter/bondsman
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler drifting far from \
	Imperial trade routes. With the captain lost and the true crew mostly dead, the task of holding this broken ship \
	together falls on you and the few survivors. It’s time to choose an acting captain and salvage what little remains \
	—before the dark claims the rest."
	skill_points = 9
	min_skill = list(
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/demeter_crew/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(prob(70))
		to_chat(H,"<span class='danger'><b><font size=4>THE CREWMAN</font></b></span>")
		to_chat(H, "<span class='notice'><b><font size=2>As the Crewman, you are a key member of the Demeter, a vessel once led by a captain now lost to the void. Your knowledge of the ship's operations is critical, shaped by loyalty to a dead master and the harsh realities of life within the grimdark of the ghoul stars.</font></b></span>")
		if(prob(3))
			H.make_genestealer()
			to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
		else if(prob(3))
			to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
			spawn(30 SECONDS)
			GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
			to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
		H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
		H.species.toxins_mod = 0.6
		H.species.radiation_mod = 0.55
		H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.65
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/combatpain, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/reagent_containers/hypospray/autoinjector/antirad, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/explorer, slot_back)
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/militarum, slot_r_hand)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/slug, slot_r_hand)
	else
		to_chat(H,"<span class='danger'><b><font size=4>THE THIEF</font></b></span>")
		to_chat(H, "<span class='notice'><b><font size=2>As the Thief, you travel on the Demeter, summoned by a shadowy benefactor for a high-stakes job. You should probably... recruit a crack-team to help execute the job, therefoer minimizing the risk to yourself.</font></b></span>")
		H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED
		H.species.silent_steps = TRUE
		H.species.slowdown = -0.15
		H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/heavy, slot_back)
		if(prob(10))
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/thief1, slot_r_hand)
		if(prob(20))
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/thief2, slot_r_hand)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/thief3, slot_r_hand)
	return ..()

/datum/job/submap/demeter_detective
	title = "Detective"
	supervisors = "yourself"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/demeter/crew
	info = "You are one of the last breathing souls aboard the Demeter, a battered star-hauler drifting far from \
	Imperial trade routes. With the captain lost and the true crew mostly dead, the task of holding this broken ship \
	together falls on you and the few survivors. It’s time to choose an acting captain and salvage what little remains \
	—before the dark claims the rest."
	skill_points = 7
	min_skill = list(
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_EXPERIENCED,
		SKILL_FORENSICS = SKILL_MASTER,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/demeter_detective/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE DETECTIVE</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Detective, you travel aboard the Demeter at great expense to your patron, hired by a mysterious client to investigate a calamity of <insert your backstory> across an ancient hive-world deep within the Ghoul Stars. Your expertise in forensics and intelligence operations makes you a valuable asset in navigating the political landscape of their world.</font></b></span>")
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/briefcase/crimekit, slot_l_hand)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/carapace, slot_wear_suit)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/contraband/spy, slot_in_backpack) // Kind of like a shittier Thief class but more respectable and with a big revolver.
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/autogun, slot_r_hand)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ap, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ms, slot_in_backpack)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/bounty, slot_r_hand)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/kp, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/multitool/hacktool, slot_in_backpack)
	return ..()

/*
			to_chat(H,"<span class='danger'><b><font size=4>THE DETECTIVE</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Detective, you travel aboard the Demeter at great expense to your patron, hired by a mysterious client to investigate a calamity of <insert your backstory> across an ancient hive-world deep within the Ghoul Stars. Your expertise in forensics and intelligence operations makes you a valuable asset in navigating the political landscape of their world.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/briefcase/crimekit, slot_l_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/hiver/carapace, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/contraband/spy, slot_in_backpack) // Kind of like a shittier Thief class but more respectable and with a big revolver.
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/autogun, slot_r_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ap, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ms, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/bounty, slot_r_hand)
				H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/revolver/kp, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/multitool/hacktool, slot_in_backpack)
		else if(current_title == "Merchant")
			to_chat(H,"<span class='danger'><b><font size=4>THE MERCHANT</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Merchant aboard the Demeter, you are a passenger seeking new opportunities in the Ghoul Stars. With your keen eye for profit and trade, you aim to expand your business, hoping to capitalize on the chaos and scarcity of resources in this grim sector.</font></b></span>")
			if(prob(1))
				H.make_genestealer()
				to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
			else if(prob(1))
				to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
				spawn(30 SECONDS)
				GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
				to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/merchant, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/bowlerhat/razor, slot_head)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/contraband/clerical, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/secure/briefcase/money, slot_r_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/shotgun/cane, slot_l_hand)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/contraband/cigarette, slot_in_backpack)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/contraband/imp_explosive, slot_in_backpack)
				H.equip_to_slot_or_store_or_drop(new /obj/item/book/manual/chef_recipes(get_turf(src)))
		else if(current_title == "Bard")
			to_chat(H,"<span class='danger'><b><font size=4>THE BARD</font></b></span>")
			to_chat(H, "<span class='notice'><b><font size=2>As the Bard aboard the Demeter, you're a passenger peddling your talents in song and charm. Using your wit and cunning, you spin tales to manipulate and con, seeking to charm your way into opportunities and gain favors from the crew.</font></b></span>")
			H.species.silent_steps = TRUE
			H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/flat, slot_back)
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/musician, slot_wear_suit)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/thief3, slot_r_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/storage/secure/briefcase/money2, slot_r_hand)
			if(prob(50))
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/synthesized_instrument/violin, slot_wear_suit)
			else
				H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
				H.equip_to_slot_or_store_or_drop(new /obj/item/device/synthesized_instrument/guitar, slot_wear_suit)
	return ..()
*/

#define DEMETER_OUTFIT_JOB_NAME(job_name) ("The Demeter" + job_name)

/singleton/hierarchy/outfit/job/demeter
	hierarchy_type = /singleton/hierarchy/outfit/job/demeter
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	r_pocket = /obj/item/device/radio/map_preset/demeter
	l_ear = /obj/item/device/radio/headset/map_preset/demeter
	r_ear = null
	l_pocket = /obj/item/device/flashlight/lantern
	backpack_contents = list(/obj/item/spacecash/bundle/c1000 = 1)

/singleton/hierarchy/outfit/job/demeter/bondsman
	name = ("Demeter Bondsman")
	head = null
	mask = /obj/item/clothing/mask/gas/explorer
	glasses = /obj/item/clothing/glasses/night
	belt = /obj/item/storage/belt/utility/full
	suit = /obj/item/clothing/suit/armor/grim/storage/hooded/mechanicus/bondsman
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	uniform = /obj/item/clothing/under/rank/victorian/black
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/map_preset/demeter
	l_hand = null
	gloves = /obj/item/clothing/gloves/thick/duty
	id_types = list(/obj/item/card/id/demeter)
	pda_type = /obj/item/modular_computer/pda
	pda_slot = slot_l_store
	l_pocket = /obj/item/device/flashlight/lantern
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/material/twohanded/ravenor/knife/trench = 1)

/singleton/hierarchy/outfit/job/demeter/crew
	name = ("Demeter Crew")
	id_types = list(/obj/item/card/id/demeter)
	l_ear = /obj/item/device/radio/headset/map_preset/demeter
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	pda_type = /obj/item/modular_computer/pda
	back = /obj/item/storage/backpack/satchel/leather
	l_pocket = /obj/item/device/flashlight/lantern
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/device/radio/map_preset/demeter = 1, /obj/item/spacecash/bundle/c500 = 1)

/singleton/hierarchy/outfit/job/demeter/captain
	name = ("Demeter Captain")
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	shoes = /obj/item/clothing/shoes/black
	pda_type = /obj/item/modular_computer/pda/captain
	id_types = list(/obj/item/card/id/demeter_captain)

/singleton/hierarchy/outfit/job/demeter/captain/post_equip(mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)

#undef DEMETER_OUTFIT_JOB_NAME
