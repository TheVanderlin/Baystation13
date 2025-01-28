#define WEBHOOK_SUBMAP_LOADED_CHAOS "webhook_submap_chaos"

#include "chaosraider_areas.dm"


/datum/map_template/ruin/away_site/raidership
	name = "Chaos Raider Ship"
	id = "awaysite_raidership2"
	description = "Chaos Raider Ship."
	suffixes = list("chaosship/chaosraider.dmm")
	spawn_cost = 2.5
	player_cost = 0
	shuttles_to_initialise = list(/datum/shuttle/autodock/overmap/chaos_raider, /datum/shuttle/autodock/overmap/chaos_lander)
	area_usage_test_exempted_root_areas = list(/area/chaosship)
	spawn_weight = 2.5

/obj/overmap/visitable/sector/chaos_raider
	name = "small asteroid cluster"
	desc = "Sensor array detects a small asteroid cluster."
	icon_state = "meteor4"
	hide_from_reports = TRUE
	sensor_visibility = 10
	initial_generic_waypoints = list(
		"nav_chaosbase_1"
	)

	initial_restricted_waypoints = list(
		"Chaos Raider Ship" = list("nav_hangar_chaosraider")
	)

/datum/shuttle/autodock/overmap/chaos_raider
	name = "Chaos Raider Ship"
	move_time = 10
	shuttle_area = list(
		/area/chaosship/engineering,
		/area/chaosship/thrusters,
		/area/chaosship/fore,
		/area/chaosship/raidership
	)
	dock_target = "chaos_raider"
	current_location = "nav_hangar_chaosraider"
	landmark_transition = "nav_transit_chaosraider"
	range = 1
	fuel_consumption = 0.5
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	defer_initialisation = TRUE

/obj/shuttle_landmark/chaos_base/hangar/chaos_raider
	name = "Chaos Ship Docked"
	landmark_tag = "nav_hangar_chaosraider"

/obj/machinery/computer/shuttle_control/explore/chaos_raider
	name = "landing control console"
	shuttle_tag = "Chaos Raider Ship"

/obj/overmap/visitable/ship/landable/chaos_raider
	name = "Alien Vessel"
	shuttle = "Chaos Raider Ship"
	desc = "Sensor array detects a medium-sized vessel of irregular shape. Unknown origin."
	color = "#233012"
	icon_state = "ship"
	moving_state = "ship_moving"
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL

//Ship's little lander defined here
/datum/shuttle/autodock/overmap/chaos_lander
	name = "Blood-Ra"
	move_time = 10
	shuttle_area = list(/area/chaosship/shuttle)
	dock_target = "chaosshuttle"
	current_location = "nav_hangar_chaosshuttle"
	landmark_transition = "nav_transit_chaosshuttle"
	range = 1
	fuel_consumption = 0.5
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	defer_initialisation = TRUE
	flags = SHUTTLE_FLAGS_PROCESS
	mothershuttle = "Chaos Raider Ship"

/obj/shuttle_landmark/chaos_base/hangar/chaosshuttle
	name = "Dock"
	landmark_tag = "nav_hangar_chaosshuttle"
	base_turf = /turf/space
	base_area = /area/chaosship/raidership
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/shuttle_landmark/chaos_base/hangar/chaosshuttle/start
	name = "Dock"
	landmark_tag = "nav_hangar_chaosshuttle_start"
	base_area = /area/chaosship/raidership
	base_turf = /turf/space
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

/obj/machinery/computer/shuttle_control/explore/chaos_lander
	name = "landing control console"
	shuttle_tag = "Blood-Ra"

/obj/overmap/visitable/ship/landable/chaosshuttle
	name = "Chaos Raider"
	shuttle = "Blood-Ra"
	desc = "Sensor array detects a small, chaos vessel."
	fore_dir = WEST
	vessel_size = SHIP_SIZE_SMALL
	max_speed = 1/(1 SECONDS)
	burn_delay = 1 SECONDS
	vessel_mass = 2500

/obj/submap_landmark/joinable_submap/chaos/raidership
	archetype = /singleton/submap_archetype/derelict/chaosraider
	movable_flags = MOVABLE_FLAG_EFFECTMOVE

//shuttle APC terminal kept being deleted by z level changes

/singleton/webhook/submap_loaded/vox
	id = WEBHOOK_SUBMAP_LOADED_CHAOS

/singleton/submap_archetype/derelict/chaosraider
	descriptor = "Chaos Raider Vessel"
	map = "Chaos Raider Ship"
	call_webhook = WEBHOOK_SUBMAP_LOADED_CHAOS
#undef WEBHOOK_SUBMAP_LOADED_CHAOS
