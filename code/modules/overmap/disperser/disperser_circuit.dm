/obj/item/stock_parts/circuitboard/disperser
	name = "circuit board (macrocannon control)"
	build_path = /obj/machinery/computer/ship/disperser
	origin_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)

/obj/item/stock_parts/circuitboard/disperserfront
	name = "circuit board (macrocannon beam generator)"
	build_path = /obj/machinery/disperser/front
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)
	req_components = list (
		/obj/item/stock_parts/manipulator/pico = 5
	)

/obj/item/stock_parts/circuitboard/dispersermiddle
	name = "circuit board (macrocannon fusor)"
	build_path = /obj/machinery/disperser/middle
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)
	req_components = list (
		/obj/item/stock_parts/subspace/crystal = 10
	)

/obj/item/stock_parts/circuitboard/disperserback
	name = "circuit board (macrocannon material deconstructor)"
	build_path = /obj/machinery/disperser/back
	board_type = "machine"
	origin_tech = list(TECH_ENGINEERING = 2, TECH_COMBAT = 2, TECH_BLUESPACE = 2)
	req_components = list (
		/obj/item/stock_parts/capacitor/super = 5
	)
