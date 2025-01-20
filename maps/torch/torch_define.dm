/datum/map/torch
	name = "Dauntless"
	full_name = "The Dauntless"
	path = "torch"
	flags = MAP_HAS_BRANCH | MAP_HAS_RANK
	config_path = "config/torch_config.txt"

	admin_levels  = list(7)
	escape_levels = list(8)
	empty_levels  = list(9)
	accessible_z_levels = list("1"=1,"2"=3,"3"=1,"4"=1,"5"=1,"6"=1,"9"=30)
	overmap_size = 35
	overmap_event_areas = 34
	usable_email_tlds = list("dauntless.ecnet", "dauntless.astro", "astropathica.net", "dauntless.net")

	allowed_spawns = list("Cryogenic Storage", "Cyborg Storage")
	default_spawn = "Cryogenic Storage"

	station_name  = "The Dauntless"
	station_short = "Dauntless"
	dock_name     = "TBD"
	boss_name     = "Administratum"
	boss_short    = "RT"
	company_name  = "Imperium Of Man"
	company_short = "Imperium"

	map_admin_faxes = list(
		"High Command - General Staff",
		"Adeptus Mechanicus - Explorator Fleet",
		"Adeptus Administratum - Holy Terra",
		"The Holy Ordos - Code Vermillion"
	)

	//These should probably be moved into the evac controller...
	shuttle_docked_message = "Attention all hands: Jump preparation complete. The warp engine is now spooling up, prepare for transit through immaterial space. Time to jump: approximately %ETD%."
	shuttle_leaving_dock = "Attention all hands: Jump initiated, exiting into realspace in %ETA%."
	shuttle_called_message = "Attention all hands: Jump sequence initiated. Transit procedures are now in effect. Jump in %ETA%."
	shuttle_recall_message = "Attention all hands: Jump sequence aborted, return to normal operating conditions."

	evac_controller_type = /datum/evacuation_controller/starship

	default_law_type = /datum/ai_laws/solgov
	use_overmap = 1
	num_exoplanets = 1

	away_site_budget = 11
	min_offmap_players = 0

	id_hud_icons = 'maps/torch/icons/assignment_hud.dmi'

	welcome_sound = null

	use_bluespace_interlude = TRUE
