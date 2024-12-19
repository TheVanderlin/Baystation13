/turf/simulated/floor/ship_floor
	name = "old steel floor"
	icon = 'icons/map_project/ship/shiptiles.dmi'
	icon_state = "oldsteel"

/turf/simulated/floor/ship_floor/ramp
	name = "ship ramp"
	icon_state = "fancy_stairs"

/turf/simulated/floor/ship_floor/steel
	name = "polished steel floor"
	icon_state = "oldsteelf"

/turf/simulated/floor/ship_floor/white
	name = "old white floor"
	icon_state = "whitel"

/turf/simulated/floor/ship_floor/evil
	name = "horror"
	icon_state = "evil"

/turf/simulated/floor/ship_floor/brown
	name = "old white floor"
	icon_state = "brownl"

/turf/simulated/floor/ship_floor/engines
	name = "engine floor"
	icon_state = "warningf"

/turf/simulated/floor/ship_floor/platform
	name = "platform"
	icon_state = "south3"

// Walls

/turf/unsimulated/oldship // As someone who's done dungeons on an stalker server & Fallout, not making a wall like this means peep will take tools and rush into the loot without doing the dungeon, here's the fix
	name = "Ancient Wall"
	desc = "The wall of this ship is something you've never seen before in your life."
	icon = 'icons/map_project/ship/ref_walls.dmi'
	icon_state = "rwall0"
	opacity = 1
	density = 1

// DOORS

/obj/machinery/door/unpowered/shuttle/hatch
	name = "old hatch"
	icon_state = "door_closed"
	icon = 'icons/obj/doors/hatch.dmi'
	autoclose = 1
	normalspeed = 0

/obj/machinery/door/unpowered/shuttle/hatch2
	icon_state = "door_closed"
	icon = 'icons/obj/doors/escotilha.dmi'
	autoclose = 1
	normalspeed = 0

/obj/machinery/door/airlock/ancient_ship
	name = "Ancient Ship Door"
	icon_state = "normal"
	icon = 'icons/obj/doors/individual_1.dmi'


/obj/machinery/door/airlock/ancient_ship/maint
	name = "Old Maintenance Door"
	icon_state = "maint"
	icon = 'icons/obj/doors/maintdoor.dmi'


/obj/machinery/door/airlock/ancient_ship/med
	name = "Ancient Ship Door"
	icon_state = "door_closed"
	icon = 'icons/obj/doors/met_door.dmi'


/obj/machinery/door/airlock/ancient_ship/command
	name = "Bridge Ship Door"
	icon_state = "door_closed"
	desc = "You can feel some kind of evil presence behind that door, is it really wise to open it ?" // Giving them a warning, before they die possibly
	icon = 'icons/obj/doors/command_door.dmi'

	secured_wires = 1 // Find the key to open it, dumbass

/obj/machinery/door/airlock/ancient_ship/command/capitan
	name = "Capitan's Quarters"
	icon_state = "door_closed"
	desc = "The whispers and noises are more and more loud behind it."
	icon = 'icons/obj/doors/command_door.dmi'

	secured_wires = 1 // Not letting you just hack it and open it, dumbass.

// 'Decoration'

/obj/structure/shipdecor
	name = "Ship Computer"
	icon = 'icons/map_project/ship/ship_equipment.dmi'
	layer = 4
	icon_state = ""
	desc = "A computer, it seems it's not recieving power."
	anchored = 1
	density = 1

/obj/structure/shipdecor/cryochamber
	name = "Ship Computer"
	icon = 'icons/map_project/ship/ship_equipment.dmi'
	icon_state = "cryochamber1"
	desc = "A closed cryochamber, it seems to be empty on the inside."

/obj/structure/shipdecor/generator
	name = "Power Generator"
	icon = 'icons/map_project/ship/ship_equipment.dmi'
	icon_state = "cryochamber1"
	desc = "An old power generator, how it's still almost intact is something to wonder."

/obj/structure/sign/ship
	name = "\improper screen"
	icon = 'icons/map_project/ship/ship_equipment.dmi'
	desc = "An small screen, it's constantly transmitting static."
	icon_state = "science1"

/obj/structure/sign/ship/hell
	name = "\improper Capitan's screen"
	icon = 'icons/map_project/ship/pillars.dmi'
	desc = "A large screen, the words it's spewing constantly make your eyes and mind hurt the more you try to read them."
	icon_state = "p"

/obj/structure/sign/ship/blood_signs
	name = "\improper blood signs"
	icon = 'icons/map_project/ship/blood_signs.dmi'
	desc = "Signs drawn in human blood."
	icon_state = "graffiti"

/obj/structure/sign/ship/manufactorum
	name = "\improper screen"
	icon = 'icons/map_project/ship/ship_equipment.dmi'
	desc = "An small screen, it's constantly transmitting..."
	icon_state = "off"

// Effects

/obj/effect/floor_decal/turf/sigil
	name = "demonic sigil"
	icon = 'icons/map_project/ship/sigils.dmi'
	icon_state = "center"

/obj/effect/floor_decal/turf/sun
	name = "SUN OF ETERNAL NIGHT"
	icon = 'icons/map_project/ship/sun_of_eternal_night.dmi'
	icon_state = "sun"

/obj/structure/shipdecor/warp // Meant to make a mini fight with the player being brought inside of it, but i dont have the time to do this + This 40k nerds dont seem to like PVE content that much
	name = "Warp Portal"
	icon = 'icons/obj/warpstorm.dmi'
	icon_state = "ws2"
	desc = "<span class='danger'>The more you look at it, the more whispers and voices you hear on your head.</span>"

/obj/structure/shipdecor/warp2 // This is the animated version.
	name = "Warp Portal"
	icon = 'icons/obj/warpstorm.dmi'
	icon_state = "ws22"
	desc = "<span class='danger'>The more you look at it, the more whispers and voices you hear on your head.</span>"

/*

/mob/living/simple_animal/hostile/cpt_miller // Boss of the 'dungeon', slow but heavy hitter & high HP, you'll need a party for this or cheese it, had an arm removal code (ripping arms off players when in crit) & weapon blocking chance, but it's possibly gonna be nerfed or such (unrobust peep), so might aswell just make it a simple mob of sorts.
	name = "Unholy Angel"
	real_name = "Captain Miller" // Event Horizon reference baby
	desc = "<span class='danger'>This creature was possibly once human, now it's something completely different, his skin seems to have been boiled, scratched, and burned, his eyes missing and oozing some sort of ink-like liquid, and two pair of flesh-like wings are on his back</span>."
	icon = 'icons/map_project/ship/angel.dmi'
	icon_state = "angel"
	icon_living = "angel"
	icon_dead = "tzantz2"
	maxhealth = 2200 // Strong enemy, should be taken down by multiple enemies, has High HP to hold the
	health = 2200
	speed = 3 // Slow to give players a chance, although they're fucked honestly if they try to attack it without a proper team
	emote_see = list("whimpers uncontrollably", "peels his own face", "furiously scratches his skin off", "rips his own flesh", "whispers in an unknown language")
	melee_damage_lower = 60
	melee_damage_upper = 60
	attacktext = "cuts"
	attack_sound = 'sound/weapons/bladeslice.ogg'
*/
// Dungeon armors & Loot - Most of this will be loot and equipment you can obtain from the dungeon basically, these come from lifeweb

/obj/item/reagent_containers/glass/bottle/panacea
	name = "Liquid Panacea"
	desc = "A suspicious looking bottle which seems to contain the solution to cure all diseases and prolong life indefinitely."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "panacea"
	volume = 5 // 5u can heal a 70-80% dmg, excluding bone fractures.
	sales_price = 50 // A decent price for ahealing juice

/obj/item/reagent_containers/glass/bottle/panacea/New()
	..()
	reagents.add_reagent(/datum/reagent/adminordrazine, 5)

/obj/item/rnd/demonic_grimorie // A big R&D toy, possibly the only thing worth it for most people to try and get, due the sheer knowledge, it's behind a big dangerous dungeon.
	name = "Demonic Grimorie"
	desc = "<span class='danger'>An ancient grimorie, it's surface is made out of human skin and the words are written in human blood, the knowledge this book has is from millenia ago, right from the dark age of technology , is it really worth it to study such cursed artifact ?</span>"
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "grimoire1"
	origin_tech = list(TECH_MATERIAL = 5, TECH_ILLEGAL = 9, TECH_ARCANE = 9)
	sales_price = 300 // The price for knowledge


/obj/item/clothing/suit/armor/leper
	name = "leper armour"
	desc = "An ancient armor from millenia ago, it's state is very much pristine and looks like it was masterfully crafted."
	icon_state = "leper"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(melee = 5, bullet = 40, laser = 40, energy = 30, bomb = 40, bio = 90, rad = 90) // For skirmish combat, player is fast and can endure shots, but at CQC he's fucked, hit and run is more fitting for the armor user.
	sales_price = 0 // Only 1 in the map

/obj/item/clothing/head/leper
	name = "leper's helmet"
	desc = "To be precise, it's a piece of cloth over your head, but it does seem that it's been reinforced with chainmail beneath the cloth."
	icon_state = "leper_dungeon"
	item_state = "leper_dungeon"
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	flags_inv = BLOCKHAIR
	armor = list(melee = 5, bullet = 40, laser = 40, energy = 30, bomb = 90, rad = 100) // It's to prevent the user being brutally hit on the head and making the armor worthless.
	sales_price = 0 // Only 1 in the map

/obj/item/clothing/suit/armor/cerb
	name = "cerberus armour"
	desc = "A questionable armor of unknown origin, it does seem familiar though.."
	icon_state = "TrustworthyCerberus"
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|ARMS|LEGS
	cold_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	heat_protection = UPPER_TORSO|LOWER_TORSO|ARMS
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	armor = list(melee = 10, bullet = 46, laser = 46, energy = 30, bomb = 40, bio = 90, rad = 90)
	sales_price = 0 // Only 1 in the map

/obj/item/clothing/head/cerb
	name = "cerberus helmet"
	desc = "A heavy combat helmet that seems almost part of some sort of power armor."
	icon_state = "cerbhelm"
	item_state = "cerbhelm"
	cold_protection = HEAD
	min_cold_protection_temperature = SPACE_SUIT_MIN_COLD_PROTECTION_TEMPERATURE
	flags_inv = BLOCKHAIR
	armor = list(melee = 10, bullet = 46, laser = 46, energy = 30, bomb = 90, rad = 100) // It's to prevent the user being brutally hit on the head and making the armor worthless.
	sales_price = 0 // Only 1 in the map

/obj/item/paper/cpt_diary // Lore about the ship's demise, obtained only when the boss dies, as i thought it would be more proper.
	name = "Capitan Miller's Diary"
	desc = "The diary of what was once the capitan of the ship, it's extremly old and seems most of the cover and pages are covered in an ink-like substance."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "old_diary"
	info = "​<p><strong>11 July M21, 839 <br /></strong> <p><em>My cogitator seems to have issues currently, so i will write the transcripts of the operation here and later upload them once the computer's fixed. After 4 months of travel from Terra we're almost there to colonize the planet of Messina. It is an ocean world that seems to have more than enough resources to supply Terra and prosper, specially some ores that are in high demand right now. The crew and me are finally happy that we're a few hours away from the planet with the warp drive. The Tynedale and the Agamemnon, there's two other colony ships that have been with us on this journey, however their crew is not as good as ours it seems as they're 4 hours late, apparently the Tynedale had engine problems by the looks of it. We'll wait for them and continue.</p><hr /><p><strong>12 July M21, 839 <br /></strong> <p><em>There's been a huge incident, the Tynedale's Gellar field malfunctioned for a few seconds as we were reaching for the destination, all we could hear on the bridge was static and the screams of their command crew before communications went down 10 minutes ago, we're still on the Aether. I have told the command crew to not tell ANYONE else about this incident, we cannot have the crew panicking right when we're so close. I've heard of things like this happening, but i thought these were tales by old miners and retired capitans, but i did not expect that to even happen, there were around 148 men in that ship..</p><hr /><p><strong>13 July M21, 839 <br /></strong> <p><em>As soon as we got out of the warp, we landed right infront of an asteroid field, the space debris was too big and we suffered severe damage on the ship's rear engines and communications, we could see how the Agamemnon was burning and crashing towards the planet. Our main engine is failing and we've got 4 enginieers dead from the promethium explosion on the enginieering bay, i need to go.</p><hr /><p><strong>14 July M21, 839<br /></strong> <p><em>We crashed into the planet's ocean, no hull breaches have been present on the monitors and the water pressure is nothing to worry about thanks to the alloys of our hull, based on what our specialists on the ship said, we're around.. 3566 feet below from the surface. We had only 12 deaths on the ship and we've got yet 34 people on hibernation and 86 awake. We are going to evaluate the damage once again, then attempt to fix communications and contact the Agamemnon for assistance, the crew is clearly afraid but i've told them to not worry, we've got the finest enginieers and officers from Terra, we're gonna get out of this.</p><hr /><p><strong>23 July M21, 839<br /></strong><p><em> Nothing, we've got nothing, long range communications are busted and we do not have any sort of replacement parts for them to work, last day we decided on bringing 6 of our finest scouts and a pregnant crewmember on the escape pods, we've given them enough food and supplies to reach the surface using the pods, even if the rest of us are trapped down. The volunteers will have to reach what we assume is the location of the Agamemnon, they should be there in a week and we may recieve help, i just hope they can infact reach them in time.</p><hr /><p><strong>26 August M21, 839<br /></strong> <p><em>The team we sent weeks ago has not been heard from again, some of the men have become desperate, we take turns to simply be on the garden. Two men last night tried to escape using the airlocks, but they realized that our space suits do not protect from the pressure of such depths below.. So their bodies exploded, the rest of crewmembers are anxious and saying that we're not gonna ever leave this place. I've been hearing a familiar voice, the doctors have me on antipsychotics when i told them about this..I know it's due the stress, but this voice does not stop talking to me, it does not matter how many drugs i take or how long i sleep, it keeps talking on that strange language.</p><hr /><p><strong>11 November M21, 839<br /></strong> <p><em>I was naive, ignorant and unwilling back then, the words it spoke to me soon made sense. The voice has promised me salvation, it has given me instructions on how we can get out of here.. Most of us. I have ordered security to execute the men and women who are sick as we cannot spare more food and supplies on these useless beings. Some of the crew are taking sides and threatened me of a mutiny once they seen the first executions, but they wont, once they sleep i will bring the security forces and execute them for questioning my command.</p><hr /><p><strong>22<br /></strong> <p><em>Time does not matter anymore, neither is writing this, but i keep going to keep my sanity. Food is running low on the ship, i instructed the chef to begin butchering the bodies of the men and women who are executed. What is taboo is now saving us, it has been months since i ate something so delicious and tasty. Some of the crew has begun to hear the same voice as i do, but theirs is different..we're going to show our gratitude to the voice. As long as i do as it says, i will survive</p><hr /><p><strong>4<br /></strong> <p><em>I cant sleep anymore, my eyes cant stop crying, my body burns i want to die. i dont want to do this anymore i dont want to hear them</p>"

/obj/item/paper/cpt_diary/update_icon()
	return

/*
*/
