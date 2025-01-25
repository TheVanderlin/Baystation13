/obj/submap_landmark/spawnpoint/scavver_crew
	name = "Scavver"

/obj/submap_landmark/spawnpoint/scavver_noble
	name = "Bounty Hunter"

/obj/submap_landmark/spawnpoint/scavver_merc
	name = "Mercenary"

/obj/submap_landmark/spawnpoint/scavver_priest
	name = "Scavver Heretek"

/obj/submap_landmark/spawnpoint/scavver_bard
	name = "Scavver Bard"

/obj/submap_landmark/spawnpoint/scavver_engineer
	name = "Salvage Engineer"

/datum/job/submap/scavver_merc
	title = "Mercenary"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/scavver
	supervisors = "yourself"
	info = "You are one of the last breathing souls aboard the Scavv Gantry, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 9
	min_skill = list(
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/scavver_merc/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE MERCENARY</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Mercenary aboard the Scavv Gantry, you’re a mercenary seeking fortune in the Ghoul Stars. Once a soldier, you now sell your skills to the highest bidder, always on the lookout for lucrative opportunities that finally lead to an early retirement.</font></b></span>")
	if(prob(6))
		H.make_genestealer()
		to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
	else if(prob(6))
		to_chat(H,"<span class='danger'><b><font size=4>YOUR CULT ITEMS ARE BEING SUMMONED. FIND SOMEWHERE PRIVATE TO HIDE. SUMMONING IN THIRTY SECONDS</font></b></span>")
		spawn(30 SECONDS)
		GLOB.cult.add_antagonist(H.mind, ignore_role = 1, do_not_equip = 0)
		to_chat(H, "<span class='notice'><b><font size=2>You are a heretical cultist loyal to one or more of the Chaos Gods -- unlike the many pretenders you are truly blessed by the warp and can survive encounters that would boil the brains of most mortal men.</font></b></span>")
	H.species.brute_mod = 0.7
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 1.15
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife/bowie, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/tactical, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/survival, slot_in_backpack)
	if(prob(20))
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/flakcuirass, slot_wear_suit)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/heavyflak, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/krieg, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/autogun/ap, slot_in_backpack)
	else if(prob(25))
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapacecuirass, slot_wear_suit)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/autogun/stubber, slot_belt)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/autogunheavy, slot_in_backpack)
	else if(prob(20))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/flak/ranger/alt, slot_head)
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace3, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/automatic/slugrifle, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/heavy/ap, slot_in_backpack)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/scrapforged/carapace2, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/heavysniper/boltaction/imperial/crucible, slot_wear_suit)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/clip/stub/ap, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/clip/stub/ms, slot_in_backpack)
	return ..()


/datum/job/submap/scavver_noble
	title = "Bounty Hunter"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/scavver
	supervisors = "yourself"
	info = "You are one of the last breathing souls aboard the Scavv Gantry, a battered star-hauler adrift in the cold void of \
	unexplored space. With the captain lost and most of the crew dead, the burden of survival now rests on you and the \
	few remaining souls. It’s time to choose an acting captain and salvage what little remains—before the darkness claims \
	the rest."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	skill_points = 9 // Superior to merc for skills due to worse gear.
	min_skill = list(
		SKILL_VIGOR = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_COMBAT = SKILL_EXPERIENCED,
	)

	max_skill = list(	SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_COMBAT = SKILL_LEGEND,
						SKILL_GUNS = SKILL_LEGEND,
						SKILL_VIGOR = SKILL_MASTER)

/datum/job/submap/scavver_noble/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE BOUNTY HUNTER</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Bounty Hunter aboard the Scavv Gantry, you are adrift after your last client met an untimely demise on the ship. With your skills underutilized, you now navigate the dangerous Ghoul Stars, seeking new bounties and opportunities to reclaim your place in the hunt.</font></b></span>")
	H.species.brute_mod = 0.7
	H.species.weaken_mod = 0.71
	H.species.stun_mod = 0.71
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.75
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/bountyhunter, slot_wear_suit)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/head/helmet/pilgrimhelm/bountyhead, slot_head)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/leather, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/briefcase/crimekit, slot_r_hand)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/survival, slot_in_backpack)
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
	return ..()

/datum/job/submap/scavver_crew
	title = "Scavver"
	supervisors = "yourself"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/scavver/bondsman
	info = "You are a scavver on the Gantry, a battered scavenger vessel drifting far from \
	Imperial trade routes. It’s time to choose a leader amongst yourselves and start your journey into the void."
	skill_points = 7 // Superior skills to average crew since Scavvers need to be capable of piloting ships + maintaining them in groups of 2-3.
	min_skill = list(
		SKILL_PILOT = SKILL_EXPERIENCED,
		SKILL_GUNS = SKILL_EXPERIENCED,
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

/datum/job/submap/scavver_crew/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	if(prob(60))
		to_chat(H,"<span class='danger'><b><font size=4>THE SCAVVER</font></b></span>")
		if(prob(6))
			H.make_genestealer()
			to_chat(H, "<span class='notice'><b><font size=2>You are a genestealer bioform, a unique strain of tyranid genestealer capable of rapid transformation. The swarm considers you to be an abomination, but under the guidance of what you believe to be the true hivemind, you will surely succeed where the others have failed. Everything is connected.</font></b></span>")
		else if(prob(6))
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
		H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/survival, slot_in_backpack)
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/plasma/pistol, slot_r_hand)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/revolver/imperial/heavy/autogun, slot_r_hand)
			H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ms, slot_in_backpack)
			H.equip_to_slot_or_store_or_drop(new /obj/item/ammo_magazine/speedloader/militarum/ap, slot_in_backpack)
	else
		to_chat(H,"<span class='danger'><b><font size=4>THE THIEF</font></b></span>")
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
		if(prob(50))
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/energy/lasgun/laspistol/militarum, slot_r_hand)
		else
			H.equip_to_slot_or_store_or_drop(new /obj/item/gun/projectile/pistol/slug, slot_r_hand)
	return ..()


/datum/job/submap/scavver_priest
	title = "Scavver Heretek"
	supervisors = "yourself"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/scavver
	info = "You are a scavver on the Gantry, a battered scavenger vessel drifting far from \
	Imperial trade routes. It’s time to choose a leader amongst yourselves and start your journey into the void."
	skill_points = 8
	min_skill = list(
		SKILL_GUNS = SKILL_EXPERIENCED,
		SKILL_SCIENCE = SKILL_EXPERIENCED,
		SKILL_DEVICES = SKILL_EXPERIENCED,
		SKILL_COMPUTER = SKILL_EXPERIENCED,
		SKILL_CONSTRUCTION = SKILL_EXPERIENCED,
		SKILL_ELECTRICAL = SKILL_EXPERIENCED,
		SKILL_ATMOS = SKILL_EXPERIENCED,
		SKILL_MEDICAL = SKILL_EXPERIENCED,
		SKILL_CHEMISTRY = SKILL_EXPERIENCED,
		SKILL_ANATOMY = SKILL_EXPERIENCED,
		SKILL_ENGINES = SKILL_EXPERIENCED
	)

	max_skill = list(	SKILL_DEVICES = SKILL_MASTER,
						SKILL_COMPUTER = SKILL_MASTER,
						SKIL_ELECTRICAL = SKILL_MASTER,
						SKILL_CONSTRUCTION = SKILL_MASTER,
						SKILL_GUNS = SKILL_MASTER,
						SKILL_COMBAT = SKILL_MASTER,
						SKILL_ENGINES = SKILL_MASTER,
						SKILL_ATMOS = SKILL_MASTER,
						SKILL_PILOT = SKILL_MASTER)

/datum/job/submap/scavver_priest/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE HERETEK</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Heretek aboard the Scavv Gantry, you are a disgraced Magos stricken with a terminal disease that has given you only months to live, obsessed with unlocking the secrets of the Machine. Cast out by the Mechanicus for your radical theories, you now seek work without the constraints of dogma, eager to conduct your experiments unimpeded.</font></b></span>")
	H.species.cold_level_1 = SYNTH_COLD_LEVEL_1
	H.species.cold_level_2 = SYNTH_COLD_LEVEL_2
	H.species.cold_level_3 = SYNTH_COLD_LEVEL_3
	H.species.heat_level_1 = 600
	H.species.heat_level_2 = 700
	H.species.heat_level_3 = 2000
	H.species.hazard_high_pressure = HAZARD_HIGH_PRESSURE * 0.4
	H.species.hazard_low_pressure = -1
	H.species.brute_mod = 0.8 // This particular tech priest is weaker then most humans.
	H.species.burn_mod = 0.7
	H.species.toxins_mod = 0.8
	H.species.radiation_mod = 0.6
	H.species.hunger_factor = DEFAULT_HUNGER_FACTOR * 0.5
	H.species.species_flags = SPECIES_FLAG_LOW_GRAV_ADAPTED | SPECIES_FLAG_NO_EMBED
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/mask/gas/techpriest, slot_wear_mask)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/shoes/jackboots/skitshoes/techpriest, slot_shoes)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/engineer, slot_w_uniform)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/gloves/thick/swat/techpriest, slot_gloves)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/techpriest, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/mechanicus/techpriest, slot_wear_suit)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/survival, slot_in_backpack)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/wrist_blade, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/iatric_monitor, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/internal_air_system, slot_in_backpack)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/augment_implanter/popout_shotgun, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/organ/internal/augment/active/polytool/engineer, slot_in_backpack)
		H.equip_to_slot_or_store_or_drop(new /obj/item/implant/translator, slot_in_backpack)
	return ..()

/datum/job/submap/scavver_bard
	title = "Scavver Bard"
	supervisors = "yourself"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/scavver
	info = "You are a scavver on the Gantry, a battered scavenger vessel drifting far from \
	Imperial trade routes. It’s time to choose a leader amongst yourselves and start your journey into the void."
	skill_points = 10
	min_skill = list(
		SKILL_COMBAT = SKILL_EXPERIENCED,
		SKILL_VIGOR = SKILL_EXPERIENCED,
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

/datum/job/submap/scavver_bard/equip(mob/living/carbon/human/H)
	var/current_name = H.real_name
	var/current_title = trimtext(H.mind.role_alt_title)
	H.voice_in_head(pick(GLOB.lone_thoughts))
	H.fully_replace_character_name("[current_name]")
	if(current_title && (H.mind.role_alt_title in alt_titles))
		current_title = trimtext(H.mind.role_alt_title) // Use alt_title if selected
	else
		current_title = title // use default title
	to_chat(H,"<span class='danger'><b><font size=4>THE BARD</font></b></span>")
	to_chat(H, "<span class='notice'><b><font size=2>As the Bard aboard the Demeter, you're a con artist gone merc peddling your talents in song and charm. Using your wit and cunning, you spin tales to manipulate and con, seeking to charm your way into opportunities and gain favors from the crew.</font></b></span>")
	H.species.silent_steps = TRUE
	H.equip_to_slot_or_store_or_drop(new /obj/item/material/twohanded/ravenor/knife, slot_in_backpack)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/warfare/heavy, slot_back)
	H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/suit/armor/grim/pilgrim/musician, slot_wear_suit)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/backpack/satchel/thief3, slot_r_hand)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/secure/briefcase/money2, slot_r_hand)
	H.equip_to_slot_or_store_or_drop(new /obj/item/storage/box/survival, slot_in_backpack)
	if(prob(50))
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/synthesized_instrument/violin, slot_wear_suit)
	else
		H.equip_to_slot_or_store_or_drop(new /obj/item/clothing/under/rank/victorian/black, slot_w_uniform)
		H.equip_to_slot_or_store_or_drop(new /obj/item/device/synthesized_instrument/guitar, slot_wear_suit)
	return ..()

/datum/job/submap/scavver_engineer
	title = "Salvage Engineer"
	total_positions = 0
	outfit_type = /singleton/hierarchy/outfit/job/scavver/engineer
	supervisors = "The trust of your fellow crew."
	info = "You are an Engineer aboard your meagre Salvage team. Keep your rig in functional order, upgrade what systems you can, and don't space yourself. \
	Your weapons are limited; trade, salvage, but avoid conflict as a matter of course."
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_VOX,SPECIES_TAU,SPECIES_SPACER,SPECIES_GRAVWORLDER)
	is_semi_antagonist = TRUE
	min_skill = list( // 16 points
		SKILL_VIGOR = SKILL_BASIC, // 1 point
		SKILL_COMPUTER = SKILL_BASIC, // 1 point
		SKILL_EVA = SKILL_EXPERIENCED, // 4 points
		SKILL_CONSTRUCTION = SKILL_TRAINED, // 2 points
		SKILL_ELECTRICAL = SKILL_BASIC, // 2 points
		SKILL_ATMOS = SKILL_BASIC, // 2 points
		SKILL_ENGINES = SKILL_BASIC // 4 points
	)

	max_skill = list(
		SKILL_BUREAUCRACY = SKILL_MAX,
		SKILL_FINANCE = SKILL_MAX,
		SKILL_EVA = SKILL_MAX,
		SKILL_MECH = SKILL_MAX,
		SKILL_PILOT = SKILL_MAX,
		SKILL_VIGOR = SKILL_MAX,
		SKILL_COMPUTER = SKILL_MAX,
		SKILL_BOTANY = SKILL_MAX,
		SKILL_COOKING = SKILL_MAX,
		SKILL_COMBAT = SKILL_MAX,
		SKILL_GUNS = SKILL_MAX,
		SKILL_FORENSICS = SKILL_MAX,
		SKILL_CONSTRUCTION = SKILL_MAX,
		SKILL_ELECTRICAL = SKILL_MAX,
		SKILL_ATMOS = SKILL_MAX,
		SKILL_ENGINES = SKILL_MAX,
		SKILL_DEVICES = SKILL_MAX,
		SKILL_SCIENCE = SKILL_MAX,
		SKILL_MEDICAL = SKILL_TRAINED,
		SKILL_ANATOMY = SKILL_TRAINED,
		SKILL_CHEMISTRY = SKILL_TRAINED
	)

/singleton/hierarchy/outfit/job/scavver
	name = ("Scavver")
	l_ear = /obj/item/device/radio/headset/map_preset/scavver
	r_ear = null
	uniform = null
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/device/flashlight/lantern
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick
	belt = null
	id_types = null
	back = /obj/item/storage/backpack/satchel/warfare
	pda_type = /obj/item/modular_computer/pda
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/pen/fancy/quill = 1, /obj/item/spacecash/bundle/c500 = 1)

/singleton/hierarchy/outfit/scavver/bondsman
	name = ("Scavver Bondsman")
	head = null
	mask = /obj/item/clothing/mask/gas/explorer
	glasses = /obj/item/clothing/glasses/night
	belt = /obj/item/storage/belt/utility/full
	suit = /obj/item/clothing/suit/armor/grim/storage/hooded/mechanicus/bondsman
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	uniform = /obj/item/clothing/under/rank/victorian/black
	gloves = /obj/item/clothing/gloves/thick/duty
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	backpack_contents = list(/obj/item/device/flashlight/lantern = 1, /obj/item/pen/fancy/quill = 1, /obj/item/material/twohanded/ravenor/knife/trench = 1)

/singleton/hierarchy/outfit/job/scavver/engineer
	name = "Salvage Engineer"
	uniform = /obj/item/clothing/under/hazard
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/crowbar/prybar
	shoes = /obj/item/clothing/shoes/workboots
	gloves = /obj/item/clothing/gloves/thick/duty
	glasses = /obj/item/clothing/glasses/meson
	belt = null

/singleton/hierarchy/outfit/job/scavver/pilot
	name = "Salvage Pilot"
	uniform = /obj/item/clothing/under/rank/dispatch
	suit = /obj/item/clothing/suit/armor/grim/light
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/crowbar/prybar
	shoes = /obj/item/clothing/shoes/jackboots
	belt = null

/singleton/hierarchy/outfit/job/scavver/doctor
	name = "Salvage Doctor"
	uniform = /obj/item/clothing/under/caretaker
	r_pocket = /obj/item/device/radio/map_preset/scavver
	l_pocket = /obj/item/crowbar/prybar
	suit = /obj/item/clothing/suit/armor/grim/toggle/labcoat
	shoes = /obj/item/clothing/shoes/white
	gloves = /obj/item/clothing/gloves/latex
	belt = null
