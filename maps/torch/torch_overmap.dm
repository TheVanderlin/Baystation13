/obj/overmap/visitable/ship/torch
	name = "Dauntless"
	desc = "A frankensteined imperial corvette-class explorer vessel, broadcasting Imperial codes and the designation \"Dauntless, HSC-4-13-X\"."
	fore_dir = WEST
	vessel_mass = 10000
	burn_delay = 1 SECONDS
	sector_flags = OVERMAP_SECTOR_KNOWN|OVERMAP_SECTOR_IN_SPACE|OVERMAP_SECTOR_BASE
	known_ships = list(
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/guppy
	)

	initial_restricted_waypoints = list(
		"Charon" = list("nav_hangar_charon"), 	//can't have random shuttles popping inside the ship
		"Guppy" = list("nav_hangar_guppy"),
		"Aquila" = list("nav_hangar_aquila"),
		"Tau Scout" = list("nav_tauscout_dock"), //restricts Skrell Scoutship specific docking waypoint on deck 4 portside
		"Tau Shuttle" = list("nav_tauscoutsh_altdock"),
		"Rescue" = list("nav_ert_dock"), //restricts ERT Shuttle specific docking waypoint on deck 4 portside
		"ITV The Reclaimer" = list("nav_hangar_gantry_torch"), //gantry shuttles
		"ITV Vulcan" = list("nav_hangar_gantry_torch_two"),
		"ITV Spiritus" = list("nav_hangar_gantry_torch_three"),
		"SRV Venerable Catfish" = list("nav_verne_5"), //docking location for verne shuttle
		"Cyclopes" = list("nav_merc_dock"),
		"Tau Hound" = list("nav_hound_dock"),
		"SFV Arbiter" = list("nav_sfv_arbiter_dock")
	)

	initial_generic_waypoints = list(
		//start Bridge Deck
		"nav_merc_deck5",
		"nav_ninja_deck5",
		"nav_skipjack_deck5",
		"nav_ert_deck5",
		"nav_bridge_charon",
		"nav_bridge_guppy",
		"nav_bridge_aquila",

		//start First Deck
		"nav_merc_deck1",
		"nav_ninja_deck1",
		"nav_skipjack_deck1",
		"nav_ert_deck4",
		"nav_deck4_charon",
		"nav_deck4_guppy",
		"nav_deck4_aquila",

		//start Second Deck
		"nav_merc_deck2",
		"nav_ninja_deck2",
		"nav_skipjack_deck2",
		"nav_ert_deck3",
		"nav_deck3_charon",
		"nav_deck3_guppy",
		"nav_deck3_aquila",

		//start Third Deck
		"nav_merc_deck3",
		"nav_ninja_deck3",
		"nav_skipjack_deck3",
		"nav_ert_deck2",
		"nav_deck2_charon",
		"nav_deck2_guppy",
		"nav_deck2_aquila",

		//start Forth Deck
		"nav_merc_deck4",
		"nav_ninja_deck4",
		"nav_skipjack_deck4",
		"nav_ert_deck1",
		"nav_deck1_charon",
		"nav_deck1_guppy",
		"nav_deck1_aquila",
		"nav_vox_raider_dock",

		//start Hanger Deck
		"nav_merc_hanger",
		"nav_ninja_hanger",
		"nav_skipjack_hanger",
		"nav_ert_hanger",
	)

/obj/overmap/visitable/ship/landable/exploration_shuttle
	name = "Charon"
	desc = "An SSE-U11 long range shuttle, broadcasting ImperialEC codes and the callsign \"Dauntless-2 Charon\"."
	shuttle = "Charon"
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS
	vessel_mass = 2000
	fore_dir = NORTH
	skill_needed = SKILL_TRAINED
	vessel_size = SHIP_SIZE_SMALL
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/aquila,
		/obj/overmap/visitable/ship/landable/guppy
	)

/obj/overmap/visitable/ship/landable/aquila
	name = "Aquila"
	desc = "A PM-24 modular transport, broadcasting ImperialEC codes and the callsign \"Dauntless-1 Aquila\"."
	shuttle = "Aquila"
	vessel_mass = 3000
	max_speed = 1/(1 SECONDS)
	burn_delay = 0.5 SECONDS //spammable, but expensive
	fore_dir = NORTH
	vessel_size = SHIP_SIZE_SMALL
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/guppy
	)

/obj/overmap/visitable/ship/landable/guppy
	name = "Guppy"
	desc = "An SSE-U3 utility pod, broadcasting ImperialEC codes and the callsign \"Dauntless-3 Guppy\"."
	shuttle = "Guppy"
	max_speed = 1/(3 SECONDS)
	burn_delay = 0.2 SECONDS
	vessel_mass = 900
	fore_dir = SOUTH
	skill_needed = SKILL_BASIC
	vessel_size = SHIP_SIZE_TINY
	known_ships = list(
		/obj/overmap/visitable/ship/torch,
		/obj/overmap/visitable/ship/landable/exploration_shuttle,
		/obj/overmap/visitable/ship/landable/aquila
	)

/obj/machinery/computer/shuttle_control/explore/aquila
	name = "aquila control console"
	shuttle_tag = "Aquila"
	req_access = list(access_restricted)

/obj/machinery/computer/shuttle_control/explore/exploration_shuttle
	name = "shuttle control console"
	shuttle_tag = "Charon"
	req_access = list(access_dauntless)

/obj/machinery/computer/shuttle_control/explore/guppy
	name = "guppy control console"
	shuttle_tag = "Guppy"
	req_access = null
