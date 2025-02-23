#include "../../../torch/items/weapons.dm"

/datum/map_template/ruin/exoplanet/icarus
	name = "Icarus"
	id = "icarus"
	description = "The crash of the infamous Icarus."
	suffixes = list("icarus/icarus.dmm")
	spawn_cost = 1
	ruin_tags = RUIN_HUMAN|RUIN_WRECK
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS | TEMPLATE_FLAG_RUIN_STARTS_DISALLOWED
	apc_test_exempt_areas = list(
		/area/map_template/icarus = NO_SCRUBBER|NO_VENT|NO_APC
	)

//Radiation death spawner thing from old Icarus

/obj/icarus_irradiate
	name = "Icarus Radiation Spawner"
	icon = 'icons/effects/landmarks.dmi'
	icon_state = "x2"
	var/radiation_power = 10 //Dangerous but survivable for 20-25 minutes if crew is too lazy to read away map description
	var/datum/radiation_source/S
	var/req_range = 20 //to cover part of the ruin

/obj/icarus_irradiate/Initialize()
	. = ..()

	name = null
	icon = null
	icon_state = null

	S = new()
	S.flat = TRUE
	S.range = req_range
	S.respect_maint = FALSE
	S.decay = FALSE
	S.source_turf = get_turf(src)
	S.update_rad_power(radiation_power)
	SSradiation.add_source(S)

	loc.set_light(req_range, 0.4, l_color = COLOR_LIME) //The goo doesn't last, so this is another indicator

/obj/icarus_irradiate/Destroy()
	. = ..()
	QDEL_NULL(S)

//Areas

/area/map_template/icarus
	name = "Icarus"
	icon = 'maps/random_ruins/exoplanet_ruins/icarus/icarus.dmi'
	icon_state = "icarus"
	turfs_airless = TRUE

/area/map_template/icarus/bridge
	name = "Icarus Bridge"
	icon_state = "bridge"

/area/map_template/icarus/eng
	name = "Icarus Engineering Bay"
	icon_state = "engine"

/area/map_template/icarus/sec
	name = "Icarus Brig"
	icon_state = "brig"

/area/map_template/icarus/armory
	name = "Icarus Tactical Armory"
	icon_state = "armory"

/area/map_template/icarus/sci
	name = "Icarus Research Division"
	icon_state = "research"

/area/map_template/icarus/driver
	icon_state = "driver"

/area/map_template/icarus/driver/west
	name = "Icarus Port Mass Driver"

/area/map_template/icarus/driver/east
	name = "Icarus Starboard Mass Driver"


//Objects

/obj/item/icarus_disk
	name = "disk"
	desc = "A dusty disk. Its label says: \"Deliver to Imperium Explorator Command!\". Its content is encrypted with quantum cryptography methods."
	icon = 'icons/obj/datadisks.dmi'
	icon_state = "nucleardisk"
	item_state = "card-id"
	w_class = ITEM_SIZE_TINY

/obj/item/toy/icarus_model
	name = "table-top Icarus model"
	desc = "A small model of a spaceship mounted on a wooden stand. On the stand is engraved: \"Icarus 1:278th scale\". The small lights on the hull and the engine exhaust still light up and blink."
	icon = 'maps/random_ruins/exoplanet_ruins/icarus/icarus.dmi'
	icon_state = "model"

/obj/item/gun/projectile/pistol/m22f/icarus
	name = "rusty military pistol"
	desc = "A Vostroyan M22F. A large pistol issued as an ImperiumDF service weapon. This one has seen better days, and has the name \"Alex\" engraved into it."

//Imperium deco

/obj/structure/sign/icarus_dedicationplaque
	name = "\improper Icarus dedication plaque"
	icon_state = "lightplaque"
	desc = " Icarus - Lexington Class - Sol Explorator Registry 95498 - Tennessee Imperial Navy Yards, Sancor - First Vessel To Bear The Name - Launched 2302 - Imperial Government - 'Never was anything great achieved without danger.'"

/obj/structure/sign/icarus_ecplaque
	name = "\improper Expeditionary Directives"
	desc = "A plaque with Explorator logo etched in it. It looks faded and is illegible."
	icon = 'maps/random_ruins/exoplanet_ruins/icarus/icarus.dmi'
	icon_state = "ecplaque"

/obj/structure/sign/double/icarus_solgovflag
	name = "Imperial Government Flag"
	desc = "A faded Imperium flag. It appears to have been radiation bleached."
	icon = 'maps/random_ruins/exoplanet_ruins/icarus/icarus.dmi'

/obj/structure/sign/double/icarus_solgovflag/left
	icon_state = "solgovflag-left"

/obj/structure/sign/double/icarus_solgovflag/right
	icon_state = "solgovflag-right"

/obj/structure/sign/icarus_solgov
	name = "\improper Faded Imperium seal"
	desc = "A sign which signifies who this vessel belongs to. This one is faded."
	icon = 'maps/random_ruins/exoplanet_ruins/icarus/icarus.dmi'
	icon_state = "solgovseal"

/obj/floor_decal/icarus_scglogo
	alpha = 230
	icon = 'maps/random_ruins/exoplanet_ruins/icarus/icarus_scglogo.dmi'
	icon_state = "center"

//Paper

/obj/item/paper/icarus_log
	name = "Printed log"
	info = "\[LOG\]: Orbit stabilized. Next correction burst, est.: 2 hrs 12 m<br>\
			\[LOG\]: Orbit stabiliztion. Announcing...<br>\
			\[ANN\]: Attention all hands, Icarus is stabilizing orbit in 30 seconds. Prepare for possible gravitational spikes.<br>\
			\[LOG\]: Announcing complete.<br>\
			\[LOG\]: Preparing for burst: heating up impulse mass.<br>\
			\[WARN\]: Minor pressure alert, Reactor Cooling Loop 3.<br>\
			\[LOG\]: Burst ready. Bursting in 5 seconds.<br>\
			\[LOG\]: Orbit stabilized. Next correction burst, est.: 1 hr 47 m.<br>\
			\[ADM\]: Preparing shuttles for landing. Current status: required refuilling. <br>\
			\[REQ\]: Request to Engineering, Please refuel Shuttle #2... Sent.<br>\
			\[WARN\]: Minor pressure alert, Reactor Cooling Loop 1.<br>\
			\[RET\]: Request completed.<br>\
			\[LOG\]: Manual correction {Engine->Cooling->Pumps}: calculating new trend.<br>\
			\[LOG\]: Calculating complete. Notify ADMIN...<br>\
			\[ERR\]: Positive feedback loop in Engine Core! Prepare for emergency procedures.<br>\
			\[ERR\]: Positive feedback loop in Engine Core! Prepare for emergency procedures.<br>\
			\[ERR\]: Positive feedback loop in Engine Core! Prepare for emergency procedures.<br>\
			\[ERR\]: Positive feedback loop in Engine Core! Prepare for emergency procedures.<br>\
			\[ERR\]: Positive feedback loop in Engine Core! Prepare for emergency procedures.<br>\
			\[LOG\]: This error was muted for 120 seconds.<br>\
			\[WARN\]: Multiple hull breaches detected.<br>\
			\[WARN\]: Unexepected orbit change, calculating corrective burst.<br>\
			\[LOG\]: Preparing for burst: heating up impulse mass.<br>\
			\[ERR\]: Impulse mass: not found<br>\
			\[LOG\]: Orbit stabilizing: failed.<br>\
			\[WARN\]: Impact imminent... Preparing blackbox backup... Ready.<br>\
			\[LOG\]: Emergency shutdown!<br>\
			\[LOG\]: Now you can you safely turn off your computer.<br>"

/obj/item/paper/icarus_roster
	name = "Printed crew manifest"
	info = "<center>\[solcrest]<BR>\
			<b>Icarus</b><br>\
			Crew roster</center><br>\
			<b>Command</b><br>\
			\[list]\
			\[*]Commanding Officer: Cmd. Alex Peterson\
			\[*]Executive Officer: Lt. Semyon Andors \
			\[*]CMO: Lt. Toko Nashamura\
			\[*]CE: Ens. Anna Lawrence\
			\[*]COS: Lt. Rand Forbarra\
			\[*]CSO: Dr. Carl Jozziliny\
			\[*]BO: Ens. Gordon Johnson\
			\[/list]<br>\
			<b>Medical dept.</b><br>\
			\[list]\
			\[*]Physician: S. Expl. John Fors\
			\[*]Nurse: Expl. Antony Laffer\
			\[/list]<br>\
			<b>Engineering dept.</b><br>\
			\[list]\
			\[*]Engineer: Expl. Ronda Atkins\
			\[*]Engineer: Expl. Peter Napp\
			\[/list]<br>\
			<b>Security dept.</b><br>\
			\[list]\
			\[*]SO: S. Expl. Nuri Batyam\
			\[*]SO: Expl. Benjamin Tho\
			\[*]SO: Expl. Tetha-12-Alpha\
			\[/list]<br>\
			<b>Exploration team.</b><br>\
			\[list]\
			\[*]Ch. Expl. Alex Warda\
			\[*]S. Expl. William Lions\
			\[*]Expl. Hope Bafflow\
			\[*]Expl. Yuri Fenrisian Aleows\
			\[*]Dr. Tetha-12-Beta\
			\[list]"
