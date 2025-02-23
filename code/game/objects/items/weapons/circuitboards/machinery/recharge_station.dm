/obj/item/stock_parts/circuitboard/recharge_station
	name = "circuit board (servitor recharging station)"
	build_path = /obj/machinery/recharge_station
	board_type = "machine"
	origin_tech = list(TECH_DATA = 3, TECH_ENGINEERING = 3)
	req_components = list(
		/obj/item/stack/cable_coil = 5,
		/obj/item/stock_parts/capacitor = 2,
		/obj/item/stock_parts/manipulator = 2)
	additional_spawn_components = list(
		/obj/item/stock_parts/power/apc/buildable = 1,
		/obj/item/stock_parts/power/battery/buildable/turbo = 1,
		/obj/item/cell/super = 1,
		/obj/item/stock_parts/capacitor = 2
	)
