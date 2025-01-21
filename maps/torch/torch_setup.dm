/datum/map/torch/setup_map()
	..()
	system_name = generate_system_name()
	minor_announcement = new(new_sound = sound('sound/items/cult/tesa.ogg', volume = 55))

/datum/map/torch/get_map_info()
	. = list()
	. +=  "You're aboard the " + replacetext("<b>[station_name]</b>", "\improper", "") + ", a heavy corvette commanded by the Rogue Trader. Its primary objective in the coming years is the exploration and exploitation of uncharted space, seeking knowledge, power, and anything of value for the Rogue Trader and their benefactors..."
	. +=  "The sub-sector, known as the Eminent Domain, lies beyond Imperial territory on the fringes of a new colonial conquest spearheaded by the Tau Empire. You may encounter remote Imperial outposts, xenos, or even heretical factions, but no recognized power can truly claim ownership of The Ghoul Stars. By the will of the Emperor, the Rogue Trader's household seeks to claim dominion over this territory, though only time will reveal the potential of this ambition."
	. +=  "<hr><b>Current Location:</b><br /><b>Segmentum Ultima | Region: Ghoul Stars | Sub-Sector: The Eminent Domain</b><br /><br>"
	. +=  "Distance to Holy Terra: [pick(741,986,740,472,745,780)] light years</b><br /><br>"
	. +=  "<br /><b>It has been [pick(21,18,17)] months since the Dauntless was last in dry dock for repairs</b><br /><hr>"
	return jointext(., "<br>")

/datum/map/torch/send_welcome()
	var/obj/overmap/visitable/ship/torch = SSshuttle.ship_by_type(/obj/overmap/visitable/ship/torch)

	var/welcome_text = "<center><img src = sollogo.png /><br />[FONT_LARGE("<b>Dauntless</b> Sensor Readings:")]<br>"

	if (torch) //If the overmap is disabled, it's possible for there to be no torch.
		var/list/space_things = list()
		welcome_text += "Current Coordinates:<br /><b>[torch.x]:[torch.y]</b><br /><br>"
		welcome_text += "Scan results show the following points of interest:<br />"

		for(var/zlevel in map_sectors)
			var/obj/overmap/visitable/O = map_sectors[zlevel]
			if(O.name == torch.name)
				continue
			if(istype(O, /obj/overmap/visitable/ship/landable)) //Don't show shuttles
				continue
			if (O.hide_from_reports)
				continue
			space_things |= O

		for(var/obj/overmap/visitable/O in space_things)
			var/location_desc = " at present co-ordinates."
			if(O.loc != torch.loc)
				var/bearing = get_bearing(torch, O)
				location_desc = ", bearing [bearing]."
			welcome_text += "<li>\A <b>[O.name]</b>[location_desc]</li>"

		welcome_text += "<hr>"

	post_comm_message("Dauntless Sensor Readings", welcome_text)
	minor_announcement.Announce(message = "New Update available at all communication consoles.")
