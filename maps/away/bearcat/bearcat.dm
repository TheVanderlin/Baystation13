#include "bearcat_areas.dm"
#include "bearcat_jobs.dm"
#include "bearcat_access.dm"
#include "bearcat_radio.dm"

/datum/map_template/ruin/away_site/demeter_wreck
	name = "Demeter Wreck"
	id = "awaysite_bearcat_wreck"
	description = "A wrecked light freighter."
	suffixes = list("bearcat/bearcat-1.dmm", "bearcat/bearcat-2.dmm")
	spawn_cost = 2
	player_cost = 0
	shuttles_to_initialise = list(/datum/shuttle/autodock/ferry/lift)
	// ban_ruins = list(/datum/map_template/ruin/exoplanet/playablecolony, /datum/map_template/ruin/exoplanet/playablecolony2)
	area_usage_test_exempted_root_areas = list(/area/ship)
	apc_test_exempt_areas = list(
		/area/ship/scrap/maintenance/engine/port = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/engine/starboard = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/crew/hallway/port= NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/crew/hallway/starboard= NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/hallway = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/lower = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/maintenance/atmos = NO_SCRUBBER,
		/area/ship/scrap/escape_port = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/escape_star = NO_SCRUBBER|NO_VENT,
		/area/ship/scrap/shuttle/lift = NO_SCRUBBER|NO_VENT|NO_APC,
		/area/ship/scrap/command/hallway = NO_SCRUBBER|NO_VENT
	)

/obj/overmap/visitable/ship/demeter
	name = "The Demeter"
	color = "#00ffff"
	vessel_mass = 5500
	burn_delay = 2 SECONDS
	fore_dir = NORTH
	skill_needed = SKILL_TRAINED
	vessel_size = SHIP_SIZE_LARGE

/obj/overmap/visitable/ship/demeter/New()
	for(var/area/ship/scrap/A)
		A.name = "\improper [name] - [A.name]"
		GLOB.using_map.area_purity_test_exempt_areas += A.type
	..()

/datum/shuttle/autodock/overmap/demeter
	name = "The Demeter"
	move_time = 20
	warmup_time = 5
	shuttle_area = list(
	/area/ship/scrap, /area/ship/scrap/crew, /area/ship/scrap/crew/hallway/port, /area/ship/scrap/crew/hallway/starboard,
	/area/ship/scrap/crew/kitchen, /area/ship/scrap/crew/cryo, /area/ship/scrap/crew/dorms1, /area/ship/scrap/crew/dorms2,
	/area/ship/scrap/crew/dorms3, /area/ship/scrap/crew/saloon, /area/ship/scrap/crew/toilets, /area/ship/scrap/crew/wash,
	/area/ship/scrap/crew/medbay, /area/ship/scrap/cargo, /area/ship/scrap/cargo/lower, /area/ship/scrap/dock,
	/area/ship/scrap/fire, /area/ship/scrap/tcomms, /area/ship/scrap/hidden, /area/ship/scrap/escape_port,
	/area/ship/scrap/escape_star, /area/ship/scrap/broken1, /area/ship/scrap/broken2, /area/ship/scrap/gambling,
	/area/ship/scrap/maintenance, /area/ship/scrap/maintenance/hallway, /area/ship/scrap/maintenance/lower,
	/area/ship/scrap/maintenance/storage, /area/ship/scrap/maintenance/techstorage, /area/ship/scrap/maintenance/eva,
	/area/ship/scrap/maintenance/engineering, /area/ship/scrap/maintenance/atmos, /area/ship/scrap/maintenance/power,
	/area/ship/scrap/maintenance/engine, /area/ship/scrap/maintenance/engine/aft, /area/ship/scrap/maintenance/engine/port,
	/area/ship/scrap/maintenance/engine/starboard, /area/ship/scrap/command/hallway, /area/ship/scrap/command/bridge,
	/area/ship/scrap/command/captain, /area/ship/scrap/comms, /area/ship/scrap/shuttle/lift
	)
	current_location = "nav_demeter_start"
	landmark_transition = "nav_transit_demeter"
	range = 1
	knockdown = FALSE
	fuel_consumption = 0.5
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE

/obj/submap_landmark/joinable_submap/demeter
	name = "The Demeter"
	archetype = /singleton/submap_archetype/derelict/demeter

/singleton/submap_archetype/derelict/demeter
	descriptor = "The Demeter"
	map = "Bearcat Wreck"
	crew_jobs = list(
		/datum/job/submap/kasrkin,
		/datum/job/submap/merchant,
		/datum/job/submap/noble,
		/datum/job/submap/pdf,
		/datum/job/submap/demeter_crew,
		/datum/job/submap/demeter_detective
	)

/obj/shuttle_landmark/demeter/start
	landmark_tag = "nav_demeter_start"
	name = "The Demeter"

/datum/shuttle/autodock/ferry/lift
	name = "Cargo Lift"
	shuttle_area = /area/ship/scrap/shuttle/lift
	warmup_time = 3	//give those below some time to get out of the way
	waypoint_station = "nav_bearcat_lift_bottom"
	waypoint_offsite = "nav_bearcat_lift_top"
	sound_takeoff = 'sound/effects/lift_heavy_start.ogg'
	sound_landing = 'sound/effects/lift_heavy_stop.ogg'
	ceiling_type = null
	knockdown = 0
	defer_initialisation = TRUE

/obj/machinery/computer/shuttle_control/lift
	name = "cargo lift controls"
	shuttle_tag = "Cargo Lift"
	ui_template = "shuttle_control_console_lift.tmpl"
	icon_state = "tiny"
	icon_keyboard = "tiny_keyboard"
	icon_screen = "lift"
	density = FALSE

/obj/shuttle_landmark/lift/top
	name = "Top Deck"
	landmark_tag = "nav_bearcat_lift_top"
	flags = SLANDMARK_FLAG_AUTOSET

/obj/shuttle_landmark/lift/bottom
	name = "Lower Deck"
	landmark_tag = "nav_bearcat_lift_bottom"
	base_area = /area/ship/scrap/cargo/lower
	base_turf = /turf/simulated/floor

/obj/machinery/power/apc/derelict
	cell_type = /obj/item/cell/crap/empty
	locked = 0
	coverlocked = 0

/obj/machinery/door/airlock/autoname/command
	door_color = COLOR_COMMAND_BLUE

/obj/machinery/door/airlock/autoname/engineering
	door_color = COLOR_AMBER

/obj/landmark/deadcap
	name = "Dead Captain"

/obj/landmark/deadcap/Initialize()
	..()
	return INITIALIZE_HINT_LATELOAD

/obj/landmark/deadcap/LateInitialize(mapload)
	var/turf/T = get_turf(src)
	var/mob/living/carbon/human/corpse = new(T)
	scramble(1, corpse, 100)
	corpse.real_name = "Captain"
	corpse.name = "Captain"
	var/singleton/hierarchy/outfit/outfit = outfit_by_type(/singleton/hierarchy/outfit/deadcap)
	outfit.equip(corpse)
	corpse.adjustOxyLoss(corpse.maxhealth)
	corpse.setBrainLoss(corpse.maxhealth)
	var/obj/structure/bed/chair/C = locate() in T
	if (C)
		C.buckle_mob(corpse)
	qdel(src)

/singleton/hierarchy/outfit/deadcap
	name = "Derelict Captain"
	uniform = /obj/item/clothing/under/casual_pants/classicjeans
	suit = /obj/item/clothing/suit/armor/grim/storage/hooded/wintercoat
	shoes = /obj/item/clothing/shoes/black
	r_pocket = /obj/item/device/radio/map_preset/demeter

/singleton/hierarchy/outfit/deadcap/post_equip(mob/living/carbon/human/H)
	..()
	var/obj/item/clothing/uniform = H.w_uniform
	if(uniform)
		var/obj/item/clothing/accessory/toggleable/hawaii/random/eyegore = new()
		if(uniform.can_attach_accessory(eyegore))
			uniform.attach_accessory(null, eyegore)
		else
			qdel(eyegore)
	var/obj/item/cell/super/C = new()
	H.put_in_any_hand_if_possible(C)
