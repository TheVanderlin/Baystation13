/obj/item/stock_parts/circuitboard/floodlight
	name = "circuit board (emergency floodlight)"
	build_path = /obj/machinery/floodlight
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 1)
	req_components = list(
		/obj/item/stack/cable_coil = 10)
	additional_spawn_components = list(
		/obj/item/stock_parts/capacitor = 1,
		/obj/item/stock_parts/power/battery/buildable/crap = 1,
		/obj/item/cell/crap = 1)

/obj/item/stock_parts/circuitboard/pipedispensor
	name = "circuit board (pipe dispenser)"
	build_path = /obj/machinery/pipedispenser
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_MATERIAL = 2)
	req_components = list(
		/obj/item/stock_parts/manipulator = 1,
		/obj/item/stock_parts/matter_bin = 2,
		/obj/item/rcd_ammo/large = 2)
	additional_spawn_components = list(
		/obj/item/stock_parts/keyboard = 1,
		/obj/item/stock_parts/power/apc/buildable = 1)

/obj/item/stock_parts/circuitboard/pipedispensor/disposal
	name = "circuit board (disposal pipe dispenser)"
	build_path = /obj/machinery/pipedispenser/disposal
