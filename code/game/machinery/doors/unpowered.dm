/obj/machinery/door/unpowered
	var/locked = 0
	autoset_access = FALSE
	health_resistances = DAMAGE_RESIST_PHYSICAL

/obj/machinery/door/unpowered/Bumped(atom/AM)
	if(src.locked)
		return
	..()
	return

/obj/machinery/door/unpowered/use_tool(obj/item/I, mob/living/user, list/click_params)
	if(locked)
		return TRUE
	return ..()

/obj/machinery/door/unpowered/emag_act()
	return -1

/obj/machinery/door/unpowered/shuttle
	icon = 'icons/turf/shuttle.dmi'
	name = "door"
	icon_state = "door1"
	opacity = 1
	density = TRUE

var/global/const/access_tavern = "ACCESS_TAVERN"
var/global/const/access_tavern1 = "ACCESS_TAVERN1"
var/global/const/access_tavern2 = "ACCESS_TAVERN2"
var/global/const/access_tavern3 = "ACCESS_TAVERN3"
var/global/const/access_tavern4 = "ACCESS_TAVERN4"
var/global/const/access_tavern5 = "ACCESS_TAVERN5"
var/global/const/access_tavernback = "ACCESS_TAVERNBACK"

/obj/machinery/door/unpowered/inn
	name = "Wooden Door"
	icon = 'icons/obj/doors/door_cave2.dmi'
	health_max = 1000
	autoclose = 0
	normalspeed = 0

/obj/machinery/door/unpowered/inn/red
	icon = 'icons/obj/doors/door_cave.dmi'
	health_max = 1500

/obj/machinery/door/unpowered/jail_door
	name = "Metal Door"
	icon = 'icons/obj/doors/door_prison.dmi'
	health_max = 2000
	autoclose = 0
	normalspeed = 0

/obj/machinery/door/unpowered/inn/bookcase
	name = "Bookcase"
	icon = 'icons/obj/doors/bookdoor.dmi'

/obj/machinery/door/unpowered/necron_door1
	icon = 'icons/obj/doors/necron_door.dmi'
	name = "necron door"
	desc = "An old ancient door, cold to the touch and highly resilient to any attack."
	opacity = 0
	req_access = list(access_necron1)

/obj/machinery/door/unpowered/necron_door2
	icon = 'icons/obj/doors/necron_door.dmi'
	name = "necron door"
	desc = "An old ancient door, cold to the touch and highly resilient to any attack."
	color = "blue"
	opacity = 0
	req_access = list(access_necron2)

/obj/machinery/door/unpowered/necron_door3
	icon = 'icons/obj/doors/necron_door.dmi'
	name = "necron door"
	color = "red"
	desc = "An old ancient door, cold to the touch and highly resilient to any attack."
	opacity = 0
	req_access = list(access_necron3)
