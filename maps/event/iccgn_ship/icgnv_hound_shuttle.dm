/datum/shuttle/autodock/overmap/icgnv_hound
	name = "Tau Hound"
	warmup_time = 5
	shuttle_area = list(/area/map_template/icgnv_hound)
	current_location = "nav_icgnv_hound_start"
	dock_target = "icgnv_hound_shuttle"
	range = 2
	fuel_consumption = 0
	ceiling_type = /turf/simulated/floor/shuttle_ceiling
	flags = SHUTTLE_FLAGS_PROCESS
	defer_initialisation = TRUE
	knockdown = FALSE

/turf/simulated/floor/shuttle_ceiling/iccgn
	color = COLOR_DARK_GUNMETAL

/obj/paint/iccgn
	color = COLOR_DARK_GUNMETAL

/obj/shuttle_landmark/icgnv_hound/start
	landmark_tag = "nav_icgnv_hound_start"
	name = "Start Point"

/obj/shuttle_landmark/icgnv_hound/nav1
	landmark_tag = "nav_icgnv_hound_1"

/obj/shuttle_landmark/icgnv_hound/nav2
	landmark_tag = "nav_icgnv_hound_2"

/obj/shuttle_landmark/icgnv_hound/nav3
	landmark_tag = "nav_icgnv_hound_3"

/obj/shuttle_landmark/icgnv_hound/nav4
	landmark_tag = "nav_icgnv_hound_4"

/obj/shuttle_landmark/icgnv_hound/dock
	name = "4th Deck, Fore Airlock"
	landmark_tag = "nav_icgnv_hound_dock"
	docking_controller = "admin_shuttle_dock_airlock"

/obj/shuttle_landmark/transit/iccgn
	name = "In transit"
	landmark_tag = "nav_transit_iccgn"


//Machinery
/obj/machinery/computer/shuttle_control/explore/icgnv_hound_shuttle
	name = "Tau Hound Control Console"
	req_access = list(access_syndicate)
	shuttle_tag = "Tau Hound"

/obj/machinery/power/apc/debug/iccgn
	cell_type = /obj/item/cell/infinite
	req_access = list(access_syndicate)

/obj/machinery/telecomms/allinone/iccgn
	listening_freqs = list(TAU_FREQ)
	channel_color = COMMS_COLOR_ICCG
	channel_name = "Tau Empire"
	circuitboard = /obj/item/stock_parts/circuitboard/telecomms/allinone/iccgn


//Items
/obj/item/device/radio/headset/iccgn
	name = "iccgn headset"
	desc = "Headset belonging to an Tau operative."
	icon_state = "syndie_headset"
	item_state = "headset"
	ks1type = /obj/item/device/encryptionkey/iccgn

/obj/item/device/radio/headset/iccgn/Initialize()
	. = ..()
	set_frequency(TAU_FREQ)

/obj/item/device/encryptionkey/iccgn
	name = "\improper Tau radio encryption key"
	channels = list("Tau Empire" = 1)

/obj/item/stock_parts/circuitboard/telecomms/allinone/iccgn
	build_path = /obj/machinery/telecomms/allinone/iccgn
