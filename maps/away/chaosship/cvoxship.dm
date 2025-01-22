#define WEBHOOK_SUBMAP_LOADED_CVOX "webhook_submap_cvox"

/datum/map_template/ruin/away_site/cscavship
	name = "Chaos Scavenger Ship"
	id = "awaysite_cvoxship2"
	description = "Chaos Scavenger Ship."
	suffixes = list("chaosship/cvoxship-2.dmm")
	spawn_cost = 2.5
	player_cost = 0
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/cvox_ship, /datum/shuttle/autodock/overmap/cvox_lander)
	area_usage_test_exempted_root_areas = list(/area/cvoxship)
	spawn_weight = 3.5

/obj/overmap/visitable/sector/cvox_scav_ship
	name = "small asteroid cluster"
	desc = "Sensor array detects a small asteroid cluster."
	icon_state = "meteor4"
	hide_from_reports = TRUE
	sensor_visibility = 10
	initial_generic_waypoints = list(
		"nav_cvoxbase_1"
	)

	initial_restricted_waypoints = list(
		"Chaos Scavenger Ship" = list("nav_changar_voxship")
	)

/datum/shuttle/autodock/overmap/cvox_ship
	name = "Chaos Scavenger Ship"
	move_time = 10
	shuttle_area = list(
		/area/cvoxship/engineering,
		/area/cvoxship/thrusters,
		/area/cvoxship/fore,
		/area/cvoxship/scavship
	)
	dock_target = "cvox_ship"
	current_location = "nav_changar_voxship"
	landmark_transition = "nav_ctransit_voxship"
	range = 1
	fuel_consumption = 0.5
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	defer_initialisation = TRUE

/obj/shuttle_landmark/vox_base/hangar/cvox_ship
	name = "Xenos Ship Docked"
	landmark_tag = "nav_changar_voxship"

/obj/machinery/computer/shuttle_control/explore/cvox_ship
	name = "landing control console"
	shuttle_tag = "Chaos Scavenger Ship"

/obj/overmap/visitable/ship/landable/cvox_ship
	name = "Chaos Vessel"
	shuttle = "Chaos Scavenger Ship"
	desc = "Sensor array detects a medium-sized vessel of irregular shape. Unknown origin."
	color = "#233012"
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL

//Ship's little lander defined here
/datum/shuttle/autodock/overmap/cvox_lander
	name = "Amun-Rae"
	move_time = 10
	shuttle_area = list(/area/cvoxship/shuttle)
	dock_target = "vox_cscavshuttle"
	current_location = "nav_changar_scavshuttle"
	landmark_transition = "nav_ctransit_scavshuttle"
	range = 1
	fuel_consumption = 0.5
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	mothershuttle = "Chaos Scavenger Ship"

/obj/shuttle_landmark/vox_base/hangar/cvox_scavshuttle
	name = "Dock"
	landmark_tag = "nav_changar_scavshuttle"
	base_turf = /turf/space
	base_area = /area/cvoxship/scavship
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/shuttle_landmark/vox_base/hangar/cvox_scavshuttle/start
	name = "Dock"
	landmark_tag = "nav_changar_scavshuttle_start"
	base_area = /area/cvoxship/scavship
	base_turf = /turf/space
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/machinery/computer/shuttle_control/explore/cvox_lander
	name = "landing control console"
	shuttle_tag = "Amun-Ra"

/obj/overmap/visitable/ship/landable/cvox_scavshuttle
	name = "Unmarked Ship"
	shuttle = "Amun-Rae"
	desc = "Sensor array detects a small, unmarked vessel."
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL
	max_speed = 1/(1 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 2500

/obj/submap_landmark/joinable_submap/voxship/cscavship
	archetype = /singleton/submap_archetype/derelict/cvoxship
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

//shuttle APC terminal kept being deleted by z level changes
/obj/machinery/power/apc/debug/vox
	cell_type = /obj/item/cell/infinite

/obj/submap_landmark/joinable_submap/voxship/cscavship/New()
	var/datum/language/vox/pidgin = all_languages[LANGUAGE_VOX]
	name = "[pidgin.get_random_name()]-[pidgin.get_random_name()]"
	..()

/singleton/submap_archetype/derelict/cvoxship
	descriptor = "Chaos Scavenger Vessel"
	map = "Chaos Scavenger Ship"
	whitelisted_species = list(SPECIES_HUMAN,SPECIES_SPACER,SPECIES_GRAVWORLDER,SPECIES_KROOT)
	call_webhook = WEBHOOK_SUBMAP_LOADED_CVOX

#undef WEBHOOK_SUBMAP_LOADED_CVOX
