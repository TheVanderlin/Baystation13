/obj/structure/sign/dedicationplaque
	name = "\improper Dauntless dedication plaque"
	icon_state = "lightplaque"

/obj/structure/sign/dedicationplaque/Initialize()
	. = ..()
	desc = "Dauntless - Mako Class - Sol Explorator Registry 95519 - Shiva Imperial Navy Yards, Sancor - First Vessel To Bear The Name - Launched [GLOB.using_map.game_year - 5] - Imperial Government - 'Never was anything great achieved without danger.'"


/obj/floor_decal/scglogo
	alpha = 230
	icon = 'maps/torch/icons/obj/solgov_floor.dmi'
	icon_state = "center"

/obj/structure/sign/solgov
	name = "\improper Imperial Seal"
	desc = "A sign which signifies who this vessel belongs to."
	icon = 'icons/obj/structures/decals.dmi'
	icon_state = "imperial"

/obj/structure/sign/double/solgovflag
	name = "\improper Imperial Flag"
	desc = "The flag of the Imperial Government, a symbol of many things to many people."
	icon = 'icons/obj/structures/decals.dmi'

/obj/structure/sign/double/solgovflag/left
	icon_state = "imperials"

/obj/structure/sign/double/solgovflag/right
	icon_state = "imperials"

/obj/structure/sign/memorial
	name = "memorial rock"
	desc = "A large stone slab, engraved with the names of uniformed personnel who gave their lives for scientific progress. Not a list you'd want to make. Add the dog tags of the fallen to the monument to memorialize them."
	icon = 'maps/torch/icons/obj/solgov-64x.dmi'
	icon_state = "memorial"
	density = TRUE
	anchored = TRUE
	pixel_x = -16
	pixel_y = -16
	unacidable = TRUE
	var/list/fallen = list()
	var/list/accepted_branches = list(
		"Explorator",
		"Fleet"
	)


/obj/structure/sign/memorial/use_tool(obj/item/tool, mob/user, list/click_params)
	// Dog Tags - Add dog tag
	if (istype(tool, /obj/item/clothing/accessory/badge/solgov/tags))
		var/obj/item/clothing/accessory/badge/solgov/tags/dog_tags = tool
		if (!(dog_tags.owner_branch in accepted_branches))
			USE_FEEDBACK_FAILURE("\The [src] only accepts dog tags from the [english_list(accepted_branches, and_text = " or ")] branches.")
			return TRUE
		if (!user.unEquip(tool, src))
			FEEDBACK_UNEQUIP_FAILURE(user, tool)
			return TRUE
		fallen += "[dog_tags.owner_rank] [dog_tags.owner_name] | [dog_tags.owner_branch]"
		user.visible_message(
			SPAN_NOTICE("\The [user] adds \a [tool] to \the [src]."),
			SPAN_NOTICE("You add \the [dog_tags.owner_name]'s [tool.name] to \the [src].")
		)
		qdel(dog_tags)
		return TRUE

	return ..()


/obj/structure/sign/memorial/examine(mob/user, distance)
	. = ..()
	if (distance <= 2 && length(fallen))
		to_chat(user, "<b>The fallen:</b> [jointext(fallen, "<br>")]")

// Disallow trader to sell unique memorial
/datum/trader/trading_beacon/manufacturing/New()
	possible_trading_items[/obj/structure/sign/memorial] = TRADER_BLACKLIST_ALL
