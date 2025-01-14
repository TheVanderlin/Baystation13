/obj/item/device/scanner/reagent
	name = "reagent scanner"
	desc = "A hand-held reagent scanner which identifies chemical agents."
	icon = 'icons/obj/tools/spectrometer.dmi'
	icon_state = "spectrometer"
	item_state = "analyzer"

	origin_tech = list(TECH_MAGNET = 2, TECH_BIO = 2)
	scan_sound = 'sound/effects/scanbeep.ogg'
	var/details = 0

/obj/item/device/scanner/reagent/is_valid_scan_target(obj/O)
	return istype(O)

/obj/item/device/scanner/reagent/scan(obj/O, mob/user)
	scan_data = reagent_scan_results(O, details)
	scan_data = jointext(scan_data, "<br>")
	user.show_message(SPAN_NOTICE(scan_data))

/proc/reagent_scan_results(obj/O, details = 0)
	RETURN_TYPE(/list)
	if(isnull(O.reagents))
		return list("No significant chemical agents found in [O].")
	if(length(O.reagents.reagent_list) == 0)
		return list("No active chemical agents found in [O].")
	. = list("Chemicals found in [O]:")
	var/one_percent = O.reagents.total_volume / 100
	for (var/datum/reagent/R in O.reagents.reagent_list)
		. += "[R][details ? ": [R.volume / one_percent]%" : ""]"

/obj/item/device/scanner/reagent/adv
	name = "advanced reagent scanner"
	icon = 'icons/obj/tools/spectrometer_advanced.dmi'
	icon_state = "adv_spectrometer"
	details = 1
	origin_tech = list(TECH_MAGNET = 3, TECH_BIO = 2)
