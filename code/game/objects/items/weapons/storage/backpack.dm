
/*
 * Backpack
 */

/obj/item/storage/backpack
	name = "rucksack"
	desc = "You wear this on your back and put items into it."
	icon = 'icons/obj/storage.dmi'
	item_icons = list(
		slot_l_hand_str = 'icons/mob/onmob/items/lefthand_backpacks.dmi',
		slot_r_hand_str = 'icons/mob/onmob/items/righthand_backpacks.dmi',
		)
	icon_state = "warfare_satchel"
	item_state = null
	//most backpacks use the default backpack state for inhand overlays
	item_state_slots = list(
		slot_l_hand_str = "backpack",
		slot_r_hand_str = "backpack",
		)
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BACK
	max_w_class = ITEM_SIZE_HUGE
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	open_sound = 'sound/effects/storage/unzip.ogg'
	allow_slow_dump = TRUE
	slowdown_general = 0.015

	/// Can this backpack be opened while worn on the back?
	var/worn_access = TRUE

/obj/item/storage/backpack/use_tool(obj/item/tool, mob/living/user, list/click_params)
	if (use_sound)
		playsound(loc, use_sound, 50, 1, -5)
	return ..()

/obj/item/storage/backpack/equipped(mob/user, slot)
	if (!has_extension(src, /datum/extension/appearance))
		set_extension(src, /datum/extension/appearance/cardborg)
	if (slot == slot_back && src.use_sound)
		playsound(src.loc, src.use_sound, 50, 1, -5)
	if (!worn_access && user.isEquipped(src, slot_back))
		close_all()
	..(user, slot)

/obj/item/storage/backpack/handle_item_insertion(obj/item/W, prevent_warning = FALSE, NoUpdate = 0)
	if (!worn_access && usr?.isEquipped(src, slot_back))
		to_chat(usr, SPAN_WARNING("You can't insert \the [W] while \the [src] is on your back."))
		return
	return ..()

/obj/item/storage/backpack/open(mob/user)
	if (!worn_access && user.isEquipped(src, slot_back))
		to_chat(user, SPAN_WARNING("You can't open \the [src] while it is on your back."))
		return
	..()

/*
 * Backpack Types
 */

/obj/item/storage/backpack/holding
	name = "bag of holding"
	desc = "A backpack that opens into a localized pocket of Blue Space."
	origin_tech = list(TECH_BLUESPACE = 4)
	icon_state = "holdingpack"
	max_w_class = ITEM_SIZE_HUGE
	item_state_slots = list(
		slot_l_hand_str = "holdingpack",
		slot_r_hand_str = "holdingpack"
	)
	max_storage_space = 56

/obj/item/storage/backpack/holding/New()
	..()
	return

/obj/item/storage/backpack/holding/use_tool(obj/item/W, mob/living/user, list/click_params)
	if(istype(W, /obj/item/storage/backpack/holding) || istype(W, /obj/item/storage/bag/trash/bluespace))
		to_chat(user, SPAN_WARNING("The Warp interfaces of the two devices conflict and malfunction."))
		qdel(W)
		return TRUE
	return ..()

	//Please don't clutter the parent storage item with stupid hacks.
/obj/item/storage/backpack/holding/can_be_inserted(obj/item/W as obj, stop_messages = 0)
	if(istype(W, /obj/item/storage/backpack/holding))
		return 1
	return ..()

/obj/item/storage/backpack/santabag
	name = "\improper Santa's gift bag"
	desc = "Space Santa uses this to deliver toys to all the nice children in space for Christmas! Wow, it's pretty big!"
	icon_state = "giftbag0"
	item_state = "giftbag"
	w_class = ITEM_SIZE_HUGE
	max_w_class = ITEM_SIZE_NORMAL
	max_storage_space = 400 // can store a ton of shit!
	item_state_slots = null

/obj/item/storage/backpack/cultpack
	name = "trophy rack"
	desc = "It's useful for both carrying extra gear, and proudly declaring your dedication to your chosen malevolent deity."
	icon_state = "cultpack"

/obj/item/storage/backpack/clown
	name = "\improper Giggles von Honkerton"
	desc = "It's a very vibrant backpack, made for a clown."
	icon_state = "clownpack"
	item_state_slots = null

/obj/item/storage/backpack/medic
	name = "medical backpack"
	desc = "It's a backpack, designed for use in the sterile confines of the infirmary."
	icon_state = "medicalpack"
	item_state_slots = list(
		slot_l_hand_str = "medicalpack",
		slot_r_hand_str = "medicalpack"
	)

/obj/item/storage/backpack/security
	name = "militarum backpack"
	desc = "It's a very robust backpack, for security-related needs."
	icon_state = "securitypack"
	item_state_slots = list(
		slot_l_hand_str = "securitypack",
		slot_r_hand_str = "securitypack"
	)

/obj/item/storage/backpack/security/exo
	name = "corporate militarum backpack"
	desc = "It's a very robust backpack, for security-related needs. This one is in EXO colors."
	icon_state = "securitypack_exo"

/obj/item/storage/backpack/command
	name = "command backpack"
	desc = "It's a special backpack, made exclusively for senior officers."
	icon_state = "captainpack"
	item_state_slots = list(
		slot_l_hand_str = "captainpack",
		slot_r_hand_str = "captainpack"
	)

/obj/item/storage/backpack/industrial
	name = "industrial backpack"
	desc = "It's a tough backpack, made for the daily grind of industrial life."
	icon_state = "engiepack"
	item_state_slots = list(
		slot_l_hand_str = "engiepack",
		slot_r_hand_str = "engiepack"
	)

/obj/item/storage/backpack/hydroponics
	name = "hydroponics backpack"
	desc = "It's a green backpack, with many pockets to store plants and tools in."
	icon_state = "hydpack"
	item_state_slots = list(
		slot_l_hand_str = "hydpack",
		slot_r_hand_str = "hydpack"
	)

/obj/item/storage/backpack/genetics
	name = "genetics backpack"
	desc = "It's a backpack, fitted with slots for diskettes and other workplace tools."
	icon_state = "genpack"
	item_state_slots = list(
		slot_l_hand_str = "genpack",
		slot_r_hand_str = "genpack"
	)

/obj/item/storage/backpack/corpsci
	name = "corporate science backpack"
	desc = "It's a sterile backpack, specially designed for work in laboratory settings."
	icon_state = "corpscipack"
	item_state_slots = list(
		slot_l_hand_str = "corpscipack",
		slot_r_hand_str = "corpscipack"
	)

/obj/item/storage/backpack/chemistry
	name = "pharmacy backpack"
	desc = "It's a sterile orange backpack, which was designed to hold beakers, pill bottles, and other reagent containers."
	icon_state = "chempack"
	item_state_slots = list(
		slot_l_hand_str = "chempack",
		slot_r_hand_str = "chempack"
	)

/obj/item/storage/backpack/rucksack
	name = "black rucksack"
	desc = "A sturdy, military-grade backpack with low-profile straps. Designed to work well with armor."
	icon_state = "rucksack"
	item_state_slots = list(
		slot_l_hand_str = "rucksack",
		slot_r_hand_str = "rucksack"
	)

/obj/item/storage/backpack/rucksack/blue
	name = "blue rucksack"
	icon_state = "rucksack_blue"
	item_state_slots = list(
		slot_l_hand_str = "rucksack_blue",
		slot_r_hand_str = "rucksack_blue"
	)

/obj/item/storage/backpack/rucksack/green
	name = "green rucksack"
	icon_state = "rucksack_green"
	item_state_slots = list(
		slot_l_hand_str = "rucksack_green",
		slot_r_hand_str = "rucksack_green"
	)

/obj/item/storage/backpack/rucksack/navy
	name = "navy rucksack"
	icon_state = "rucksack_navy"
	item_state_slots = list(
		slot_l_hand_str = "rucksack_navy",
		slot_r_hand_str = "rucksack_navy"
	)

/obj/item/storage/backpack/rucksack/tan
	name = "tan rucksack"
	icon_state = "rucksack_tan"
	item_state_slots = list(
		slot_l_hand_str = "rucksack_tan",
		slot_r_hand_str = "rucksack_tan"
	)

/obj/item/storage/backpack/sci
	name = "science backpack"
	desc = "It's a stain-resistant light backpack, modeled for use by Dauntless science personnel in laboratories and other scientific settings."
	icon_state = "scipack"
	item_state_slots = list(
		slot_l_hand_str = "scipack",
		slot_r_hand_str = "scipack"
	)

/*
 * Duffle Types
 */

/obj/item/storage/backpack/dufflebag
	name = "dufflebag"
	desc = "A large dufflebag for holding extra things."
	icon_state = "duffle"
	item_state_slots = null
	w_class = ITEM_SIZE_HUGE
	max_storage_space = DEFAULT_BACKPACK_STORAGE + 6
	worn_access = FALSE

/obj/item/storage/backpack/dufflebag/gangerloot
	startswith = list(
		/obj/item/clothing/suit/armor/grim/scrapforged/heavyplate,
		/obj/item/clothing/suit/armor/grim/scrapforged/heavycuirass,
		/obj/item/clothing/suit/armor/grim/scrapforged/heavycuirass,
		/obj/item/clothing/suit/armor/grim/scrapforged/heavycuirass,
		/obj/item/clothing/head/helmet/pilgrimhelm/metalvisor,
		/obj/item/clothing/head/helmet/pilgrimhelm/flak,
		/obj/item/clothing/head/helmet/pilgrimhelm/flak/metalheavy,
		/obj/item/clothing/head/helmet/pilgrimhelm/flak/metalheavy,
	)


/obj/item/storage/backpack/dufflebag/syndie
	name = "black dufflebag"
	desc = "A large dufflebag for holding extra tactical supplies."
	icon_state = "duffle_syndie"
	item_state_slots = list(slot_l_hand_str = "duffle_syndie", slot_r_hand_str = "duffle_syndie")

/obj/item/storage/backpack/dufflebag/syndie/med
	name = "medical dufflebag"
	desc = "A large dufflebag for holding extra tactical medical supplies."
	icon_state = "duffle_syndiemed"
	item_state_slots = list(slot_l_hand_str = "duffle_syndiemed", slot_r_hand_str = "duffle_syndiemed")

/obj/item/storage/backpack/dufflebag/syndie/med/full
	startswith = list(
		/obj/item/roller_bed,
		/obj/item/storage/box/syringes,
		/obj/item/clothing/gloves/latex/nitrile,
		/obj/item/clothing/glasses/hud/health,
		/obj/item/device/scanner/health,
		/obj/item/auto_cpr,
		/obj/item/defibrillator/loaded,
		/obj/item/reagent_containers/ivbag/nanoblood,
		/obj/item/storage/firstaid/adv
	)

/obj/item/storage/backpack/dufflebag/syndie/ammo
	name = "ammunition dufflebag"
	desc = "A large dufflebag for holding extra weapons ammunition and supplies."
	icon_state = "duffle_syndieammo"
	item_state_slots = list(slot_l_hand_str = "duffle_syndieammo", slot_r_hand_str = "duffle_syndieammo")

/obj/item/storage/backpack/dufflebag/com
	name = "command dufflebag"
	desc = "A large dufflebag for holding extra goods for senior command."
	icon_state = "duffle_captain"
	item_state_slots = list(slot_l_hand_str = "duffle_captain", slot_r_hand_str = "duffle_captain")

/obj/item/storage/backpack/dufflebag/med
	name = "medical dufflebag"
	desc = "A large dufflebag for holding extra medical supplies."
	icon_state = "duffle_med"
	item_state_slots = list(slot_l_hand_str = "duffle_med", slot_r_hand_str = "duffle_med")

/obj/item/storage/backpack/dufflebag/sec
	name = "militarum dufflebag"
	desc = "A large dufflebag for holding extra militarum supplies and ammunition."
	icon_state = "duffle_sec"
	item_state_slots = list(slot_l_hand_str = "duffle_sec", slot_r_hand_str = "duffle_sec")

/obj/item/storage/backpack/dufflebag/eng
	name = "industrial dufflebag"
	desc = "A large dufflebag for holding extra tools and supplies."
	icon_state = "duffle_eng"
	item_state_slots = list(slot_l_hand_str = "duffle_eng", slot_r_hand_str = "duffle_eng")

/obj/item/storage/backpack/dufflebag/firefighter
	name = "firefighter's dufflebag"
	desc = "A large dufflebag containing equipment to fight fires with."
	startswith = list(
		/obj/item/storage/belt/fire_belt/full,
		/obj/item/clothing/suit/fire/firefighter,
		/obj/item/extinguisher,
		/obj/item/clothing/gloves/fire,
		/obj/item/clothing/accessory/fire_overpants,
		/obj/item/tank/oxygen_scba,
		/obj/item/clothing/head/hardhat/firefighter,
		/obj/item/extinguisher
	)
/*
 * Satchel Types
 */

/obj/item/storage/backpack/satchel
	name = "satchel"
	desc = "A trendy-looking satchel."
	icon_state = "satchel-norm"

/obj/item/storage/backpack/satchel/grey
	name = "grey satchel"

/obj/item/storage/backpack/satchel/grey/withwallet
	startswith = list(/obj/item/storage/wallet/random)

/obj/item/storage/backpack/satchel/leather //brown, master type
	name = "brown leather satchel"
	desc = "A very fancy satchel made of some kind of leather."
	icon_state = "satchel"
	color = "#3d2711"

/obj/item/storage/backpack/satchel/leather/khaki
	name = "khaki leather satchel"
	color = "#baa481"

/obj/item/storage/backpack/satchel/leather/black
	name = "black leather satchel"
	color = "#212121"

/obj/item/storage/backpack/satchel/leather/navy
	name = "navy leather satchel"
	color = "#1c2133"

/obj/item/storage/backpack/satchel/leather/olive
	name = "olive leather satchel"
	color = "#544f3d"

/obj/item/storage/backpack/satchel/leather/reddish
	name = "auburn leather satchel"
	color = "#512828"

/obj/item/storage/backpack/satchel/pocketbook //black, master type
	name = "black pocketbook"
	desc = "A neat little folding clasp pocketbook with a shoulder sling."
	icon_state = "pocketbook"
	w_class = ITEM_SIZE_HUGE // to avoid recursive backpacks
	slot_flags = SLOT_BACK
	max_w_class = ITEM_SIZE_LARGE
	max_storage_space = DEFAULT_LARGEBOX_STORAGE
	color = "#212121"

/obj/item/storage/backpack/satchel/pocketbook/brown
	name = "brown pocketbook"
	color = "#3d2711"

/obj/item/storage/backpack/satchel/pocketbook/reddish
	name = "auburn pocketbook"
	color = "#512828"

/obj/item/storage/backpack/satchel/eng
	name = "industrial satchel"
	desc = "A tough satchel with extra pockets."
	icon_state = "satchel-eng"
	item_state_slots = list(
		slot_l_hand_str = "engiepack",
		slot_r_hand_str = "engiepack",
		)

/obj/item/storage/backpack/satchel/med
	name = "medical satchel"
	desc = "A sterile satchel designed for use in the sterile confines of the infirmary."
	icon_state = "satchel-med"
	item_state_slots = list(
		slot_l_hand_str = "medicalpack",
		slot_r_hand_str = "medicalpack",
		)

/obj/item/storage/backpack/satchel/corpsci
	name = "corporate science satchel"
	desc = "It's a sterile satchel, rated for use in laboratory settings."
	icon_state = "satchel-corpsci"
	item_state_slots = list(
		slot_l_hand_str = "satchel-corpsci",
		slot_r_hand_str = "satchel-corpsci"
	)

/obj/item/storage/backpack/satchel/chem
	name = "pharmacy satchel"
	desc = "It's a sterile orange satchel, designed to hold beakers, pill bottles, and other reagent containers."
	icon_state = "satchel-chem"

/obj/item/storage/backpack/satchel/gen
	name = "genetics satchel"
	desc = "A green satchel, filled with slots for diskettes and other workplace tools."
	icon_state = "satchel-gen"

/obj/item/storage/backpack/satchel/sec
	name = "militarum satchel"
	desc = "A robust satchel for security-related needs."
	icon_state = "satchel-sec"
	item_state_slots = list(
		slot_l_hand_str = "securitypack",
		slot_r_hand_str = "securitypack",
		)

/obj/item/storage/backpack/satchel/sec/exo
	name = "corporate militarum satchel"
	desc = "A robust satchel for imperial security-related needs. This one is in EXO colors."
	icon_state = "satchel-sec_exo"

/obj/item/storage/backpack/satchel/hyd
	name = "hydroponics satchel"
	desc = "A green satchel for plant related work."
	icon_state = "satchel_hyd"

/obj/item/storage/backpack/satchel/com
	name = "command satchel"
	desc = "An exclusive satchel for senior officers."
	icon_state = "satchel-cap"
	item_state_slots = list(
		slot_l_hand_str = "satchel-cap",
		slot_r_hand_str = "satchel-cap",
		)

/obj/item/storage/backpack/satchel/sci
	name = "science satchel"
	desc = "It's a stain-resistant satchel, modeled for use by Dauntless science personnel in laboratories and other scientific settings."
	icon_state = "satchel-sci"
	item_state_slots = list(
		slot_l_hand_str = "satchel-sci",
		slot_r_hand_str = "satchel-sci",
		)



//ERT backpacks.
/obj/item/storage/backpack/tau
	name = "xenos backpack"
	desc = "A spacious backpack with lots of pockets, used by members of the tau empire."
	icon_state = "ert_commander"
	item_state_slots = list(
		slot_l_hand_str = "securitypack",
		slot_r_hand_str = "securitypack",
		)

//Commander
/obj/item/storage/backpack/tau/commander
	name = "xenos backpack"
	desc = "A spacious backpack with lots of pockets, worn by the veterans of the tau empire."

//Security
/obj/item/storage/backpack/tau/security
	name = "xenos backpack"
	desc = "A spacious backpack with lots of pockets, worn by militarum members of the tau empire."
	icon_state = "ert_security"

//Engineering
/obj/item/storage/backpack/tau/engineer
	name = "xenos backpack"
	desc = "A spacious backpack with lots of pockets, worn by engineering members of the tau empire."
	icon_state = "ert_engineering"

//Medical
/obj/item/storage/backpack/tau/medical
	name = "xenos backpack"
	desc = "A spacious backpack with lots of pockets, worn by the corpsmen of the tau empire."
	icon_state = "ert_medical"

/*
 * Messenger Bags
 */

/obj/item/storage/backpack/messenger
	name = "messenger bag"
	desc = "A small, sturdy backpack, worn over one shoulder."
	icon_state = "courierbag"

/obj/item/storage/backpack/messenger/chem
	name = "pharmacy messenger bag"
	desc = "A small, sterile backpack, worn over one shoulder. This one was designed to hold beakers, pill bottles, and other reagent containers."
	icon_state = "courierbagchem"

/obj/item/storage/backpack/messenger/med
	name = "medical messenger bag"
	desc = "A small, sterile backpack worn over one shoulder. This one was designed for use in the sterile confines of the infirmary."
	icon_state = "courierbagmed"

/obj/item/storage/backpack/messenger/corpsci
	name = "corporate science messenger bag"
	desc = "A small, sterile backpack worn over one shoulder. This one was designed for work in laboratory settings."
	icon_state = "courierbagcorpsci"

/obj/item/storage/backpack/messenger/com
	name = "command messenger bag"
	desc = "A small backpack worn over one shoulder. This one was made specifically for senior officers."
	icon_state = "courierbagcom"

/obj/item/storage/backpack/messenger/engi
	name = "industrial messenger bag"
	desc = "A small, tough backpack worn over one shoulder. This one was designed for industrial work."
	icon_state = "courierbagengi"

/obj/item/storage/backpack/messenger/hyd
	name = "hydroponics messenger bag"
	desc = "A small backpack worn over one shoulder. This one was designed for plant-related work."
	icon_state = "courierbaghyd"

/obj/item/storage/backpack/messenger/sec
	name = "militarum messenger bag"
	desc = "A small, tactical backpack worn over one shoulder."
	icon_state = "courierbagsec"

/obj/item/storage/backpack/messenger/sec/exo
	name = "corporate militarum messenger bag"
	desc = "A small, tactical backpack worn over one shoulder. This one is in EXO colors."
	icon_state = "courierbagsec_exo"


/obj/item/storage/backpack/messenger/sci
	name = "science messenger bag"
	desc = "A small, stain-resistant backpack worn over one shoulder. This one was modeled for use by Dauntless science personnel in laboratories and other scientific settings."
	icon_state = "courierbagsci"


/obj/item/storage/backpack/messenger/black
	name = "black messenger bag"
	icon_state = "courierbag-black"


/obj/item/storage/backpack/messenger/brown
	name = "brown messenger bag"
	icon_state = "courierbag-brown"


// prevents consumption by dept versions
/obj/item/storage/backpack/messenger/grey
	name = "grey messenger bag"



// WARHAMMER
// WARHAMMER
//Smuggler's satchel
/obj/item/storage/backpack/satchel/flat
	name = "light satchel"
	desc = "A very slim satchel, that can easily fit into tight spaces."
	icon_state = "satchel-flat"
	item_state = "satchel-norm"
	level = ATOM_LEVEL_UNDER_TILE
	w_class = ITEM_SIZE_NORMAL //Can fit in backpacks itself.
	storage_slots = 5
	max_w_class = ITEM_SIZE_LARGE
	max_storage_space = DEFAULT_BACKPACK_STORAGE-1
	contents_banned = list(/obj/item/storage/backpack/satchel/flat)
	startswith = list(
		/obj/item/crowbar
		)

/obj/item/storage/backpack/satchel/flat/MouseDrop(obj/over_object)
	var/turf/T = get_turf(src)
	if(hides_under_flooring() && isturf(T) && !T.is_plating())
		return
	..()

/obj/item/storage/backpack/satchel/flat/hide(i)
	set_invisibility(i ? INVISIBILITY_ABSTRACT : 0)
	anchored = i ? TRUE : FALSE
	alpha = i ? 128 : initial(alpha)

/obj/item/storage/backpack/satchel/deserter
	startswith = list(
		/obj/item/clothing/mask/gas/half/cadianrespirator,
		/obj/item/clothing/shoes/jackboots/cadian,
		/obj/item/grenade/frag/high_yield/krak/detpack,
		/obj/item/clothing/gloves/thick/swat/cadian,
	)

/obj/item/storage/backpack/satchel/thief1
	startswith = list(
		/obj/item/device/multitool/hacktool,
		/obj/item/device/radio_jammer,
		/obj/item/device/uplink_service/fake_rad_storm,
		/obj/item/card/id/syndicate,
		/obj/item/device/cosmetic_surgery_kit,
		/obj/item/storage/backpack/chameleon/sydie_kit,
		/obj/item/clothing/mask/fakemoustache,
		/obj/item/device/radio/headset/headset_service,
	)

/obj/item/storage/backpack/satchel/thief2
	startswith = list(
		/obj/item/card/emag,
		/obj/item/clothing/mask/chameleon/voice,
		/obj/item/device/chameleon,
		/obj/item/device/uplink_service/fake_command_report,
		/obj/item/card/id/syndicate,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/shoes/jackboots/pilgrim_boots,
	)

/obj/item/storage/backpack/satchel/thief3
	startswith = list(
		/obj/item/device/multitool/hacktool,
		/obj/item/device/cosmetic_surgery_kit,
		/obj/item/card/id/torch/crew,
		/obj/item/device/radio/headset/headset_service,
		/obj/item/clothing/shoes/jackboots/pilgrim_boots,
		/obj/item/clothing/accessory/armor_plate/bodyglove,
	)

/obj/item/storage/backpack/satchel/interrogator1
	startswith = list(
		/obj/item/card/emag,
		/obj/item/storage/box/contraband/toxin,
		/obj/item/device/uplink_service/fake_command_report,
		/obj/item/card/id/syndicate,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/clothing/suit/armor/grim/agent,
		/obj/item/clothing/head/helmet/inquisition/acolyte,
		/obj/item/clothing/head/helmet/inquisition/stealth,
	)

/obj/item/storage/backpack/satchel/interrogator2
	startswith = list(
		/obj/item/card/emag,
		/obj/item/storage/box/contraband/toxin,
		/obj/item/device/uplink_service/fake_command_report,
		/obj/item/card/id/syndicate,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/clothing/suit/armor/grim/witch,
		/obj/item/clothing/head/helmet/pilgrimhelm/witch,
		/obj/item/clothing/head/helmet/inquisition/shrouded,
	)

/obj/item/storage/backpack/satchel/warfare
	name = "light satchel"
	desc = "Fit for war, and not much else."
	icon_state = "warfare_satchel"
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	slowdown_general = 0.015
	max_w_class = ITEM_SIZE_HUGE

/obj/item/storage/backpack/satchel/warfare/heavy
	name = "heavy rucksack"
	desc = "A heavy rucksack."
	icon_state = "warfare_satchel"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+3
	slowdown_general = 0.03
	max_w_class = ITEM_SIZE_HUGE

/obj/item/storage/backpack/satchel/krieger
	desc = "Field ready kit, tried and tested through countless encounters."
	icon_state = "kriegpack"
	item_state = "kriegpack"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+2
	slowdown_general = 0.023
	max_w_class = ITEM_SIZE_HUGE

/obj/item/storage/backpack/satchel/krieger/grenadier
	desc = "An assembled kit for air filtration, weapon power supply, and basic storage. Perfect to bring with you into no man's land."
	icon_state = "grenpack"
	item_state = "grenpack"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+1
	slowdown_general = 0.015

/obj/item/storage/backpack/satchel/maccabian
	desc = "Field ready kit, tried and tested through countless encounters."
	icon_state = "M_Backpack-Icon"
	item_state = "M_Backpack-Icon"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+1
	slowdown_general = 0.015

/obj/item/storage/backpack/satchel/maccabian/sergeant
	desc = "Field ready kit, tried and tested through countless encounters."
	icon_state = "M_SBackpack-Icon"
	item_state = "M_SBackpack-Icon"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+1
	slowdown_general = 0.015

/obj/item/storage/backpack/satchel/ordinate
	name = "Administratum Ink Pack"
	desc = "Burocracy on the go"
	icon_state = "ordinate"
	item_state = "ordinate"

/obj/item/storage/backpack/satchel/warfare/techpriest
	desc = "BZZZRRRRT."
	icon_state = "warfare_satchel"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+3
	canremove = FALSE
	max_w_class = ITEM_SIZE_HUGE
	// var/can_toggle = 1


/obj/item/storage/backpack/satchel/warfare/sisterofbattle
	name = "Order of the Sacred Rose Powerpack"
	desc = "A Powerpack belongs to the Battle Sister of the Order Of The Sacred Rose. It bears the Sigil of the Adepta Sororitas.</i>"
	icon_state = "sister"
	item_state = "sister"
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	max_w_class = ITEM_SIZE_HUGE
	canremove = 1

/obj/item/storage/backpack/satchel/warfare/sisterofbattle/mlsister
	name = "Order of Our Martyred Lady Powerpack"
	desc = "A Powerpack for the consecrated power armor of the Adeptas Sororitas. It has the colors of the Order of Our Martyred Lady.</i>"
	icon_state = "mlsister"
	item_state = "mlsister"
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	canremove = 1


/obj/item/storage/backpack/satchel/warfare/sisterofbattle/brsister
	name = "Order of the Bloody Rose Powerback"
	desc = "A Powerpack for the consecrated power armor of the Adeptas Sororitas. It has the colors of the Order of the Bloody Rose.</i>"
	icon_state = "brsister"
	item_state = "brsister"
	max_storage_space = DEFAULT_BACKPACK_STORAGE
	canremove = 1

/obj/item/storage/backpack/satchel/astartes
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings."
	item_icons = list(slot_back_str = 'icons/mob/32x40/storage.dmi')
	icon_state = "ultrapack"
	item_state = "ultrapack"
	canremove = 1
	max_w_class = ITEM_SIZE_HUGE
	max_storage_space = DEFAULT_BACKPACK_STORAGE+2

/obj/item/storage/backpack/satchel/astartes/ultramarine
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XIIIth Chapter, Ultramarines."
	icon_state = "ultrapack"
	item_state = "ultrapack"

/obj/item/storage/backpack/satchel/astartes/ultramarinenew
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XIIIth Chapter, Ultramarines."
	icon_state = "ultrab"
	item_state = "ultrab"

/obj/item/storage/backpack/satchel/astartes/nightlords
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the IIIrd Legion, Night Lords."
	icon_state = "nightlordb"
	item_state = "nightlordb"

/obj/item/storage/backpack/satchel/astartes/alphalegion
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XXth Legion, Alpha Legion."
	icon_state = "alphalegb"
	item_state = "alphalegb"

/obj/item/storage/backpack/satchel/astartes/worldbearers
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XXth Legion, World Bearers."
	icon_state = "worldbb"
	item_state = "worldbb"

/obj/item/storage/backpack/satchel/astartes/plaguemarines
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XXth Legion, Alpha Legion."
	icon_state = "plaguemb"
	item_state = "plaguemb"

/obj/item/storage/backpack/satchel/astartes/ravenguard
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XIXth Chapter, Raven Guards."
	icon_state = "ravpack"
	item_state = "ravpack"

/obj/item/storage/backpack/satchel/astartes/bloodangel
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the IXth Chapter, Blood Angels."
	icon_state = "bravpack"
	item_state = "bravpack"

/obj/item/storage/backpack/satchel/astartes/bloodangel/lamenter
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the IXth Chapter, Blood Angels."
	icon_state = "lamenterb"
	item_state = "lamenterb"

/obj/item/storage/backpack/satchel/astartes/salamander
	name = "Astartes Mark VII Powerpack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This one bears the marking of the XVIIIth Chapter, Salamanders."
	icon_state = "salpack"
	item_state = "salpack"

/obj/item/storage/backpack/satchel/astartes/apothecary
	name = "Astartes Mark VII Medipack"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This Powerpack has been upgraded with additional spotlight and surgical arms to serve medical purposes."
	icon_state = "salpack"
	item_state = "salpack"

/obj/item/storage/backpack/satchel/warfare/techpriest/techmarine //because it uses techpriest stuff.
	name = "Astartes Mark VII Servo-Harness"
	desc = "Standard powerpack, issued to Adeptus Astartes to store their belongings. This Powerpack has been equipped with additional Servo-Arms to serve engineering purposes."
	item_icons = list(slot_back_str = 'icons/mob/32x40/storage.dmi')
	icon_state = "techpack"
	item_state = "techpack"
	max_storage_space = DEFAULT_BACKPACK_STORAGE+2

/obj/item/storage/backpack/satchel/warfare/kroot
	desc = "Fit for war, and not much else."
	icon_state = "krootbag"

/*
/obj/item/storage/backpack/satchel/warfare/techpriest/verb/toggleallen()
	set name = "Pull Out Allen Wrench"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out the holy Wrench of Allen!")
		usr.put_in_hands(new /obj/item/device/allenwrench(usr))



/obj/item/storage/backpack/satchel/warfare/techpriest/verb/toggleoils()
	set name = "Pull Out Holy Oils"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out a bottle of holy oil.")
		usr.put_in_hands(new /obj/item/device/holyoils(usr))



/obj/item/storage/backpack/satchel/warfare/techpriest/verb/togglechisel()
	set name = "Activate Chisel"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out the auto-chisel and activate it in a single motion.")
		usr.put_in_hands(new /obj/item/device/autochisel(usr))


/obj/item/storage/backpack/satchel/warfare/techpriest/verb/togglecutter()
	set name = "Activate Laser Cutter"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out a small laser cutter and prepare to cut stuff.")
		usr.put_in_hands(new /obj/item/device/lasercutter(usr))


/obj/item/storage/backpack/satchel/warfare/techpriest/magos
	name = "Combat Servo-Satchel"

/obj/item/storage/backpack/satchel/warfare/techpriest/magos/verb/toggle_axe()
	set name = "Pull Out Omnissian Axe"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out giant power axe from under your robes and activate it! For the omnissiah!.")
		usr.put_in_hands(new /obj/item/melee/omnissiah_axe(usr))

/obj/item/storage/backpack/satchel/warfare/techpriest/techmarine
	name = "Combat Servo-Satchel"

/obj/item/storage/backpack/satchel/warfare/techpriest/techmarine/verb/toggle_aaxe()
	set name = "Pull Out Omnissian Axe"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out giant power axe from under your robes and activate it! For the Emperor!")
		usr.put_in_hands(new /obj/item/melee/omnissiah_axe/astartes(usr))


/obj/item/storage/backpack/satchel/warfare/techpriest/biologis
	name = "Medical Servo-Satchel"
	icon_state = "warfare_satchel"
	canremove = FALSE

/obj/item/storage/backpack/satchel/warfare/techpriest/biologis/verb/toggleneural()
	set name = "Configure Neural Adapter"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You pull out a Neural Adapter and activate it quickly in a single brief motion.")
		usr.put_in_hands(new /obj/item/device/neuraladapter(usr))


/obj/item/storage/backpack/satchel/warfare/chestrig
	name = "Chestrig"
	desc = "Holds ammo and other goodies. But not a lot of it."
	icon_state = "chestrig"

/obj/item/storage/backpack/satchel/warfare/ruststalker
	var/can_toggle = 1
	var/is_toggled = 1
	canremove = FALSE

/obj/item/storage/backpack/satchel/warfare/ruststalker/verb/toggleclaw()
	set name = "Extend Claws"
	set category = "Tools"
	set src in usr
	if(!usr.canmove || usr.stat || usr.restrained())
		return
	if(!can_toggle)
		to_chat(usr,"This tool cannot be toggled!")
	else
		to_chat(usr,"You extend your power claws.")
		usr.put_in_hands(new /obj/item/melee/energy/powersword/claw/integrated(usr))




*/
