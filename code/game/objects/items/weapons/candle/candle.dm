/obj/item/flame/candle
	name = "candle"
	desc = "A small pillar candle. Its specially-formulated fuel-oxidizer wax mixture allows continued combustion in airless environments."
	icon = 'icons/obj/candle.dmi'
	icon_state = "candle1"
	item_state = "candle1"
	w_class = ITEM_SIZE_TINY
	light_color = "#e09d37"

	var/available_colours = list(COLOR_ORANGE, COLOR_YELLOW)
	var/wax
	var/last_lit
	var/icon_set = "candle"
	var/candle_range = CANDLE_LUM
	var/candle_power

/obj/item/flame/candle/Initialize()
	wax = rand(30 MINUTES, 43 MINUTES) / SSobj.wait // Enough for 27-33 minutes. 30 minutes on average, adjusted for subsystem tickrate.
	if(available_colours)
		color = pick(available_colours)
	. = ..()

/obj/item/flame/candle/on_update_icon()
	switch(wax)
		if(1500 to INFINITY)
			icon_state = "[icon_set]1"
		if(800 to 1500)
			icon_state = "[icon_set]2"
		else
			icon_state = "[icon_set]3"

	if(lit != last_lit)
		last_lit = lit
		ClearOverlays()
		if(lit)
			AddOverlays(overlay_image(icon, "[icon_state]_lit", flags=RESET_COLOR))

/obj/item/flame/candle/use_tool(obj/item/tool, mob/living/user, list/click_params)
	// Light the candle
	if (isFlameOrHeatSource(tool))
		if (lit)
			USE_FEEDBACK_FAILURE("\The [src] is already lit.")
			return TRUE
		light()
		user.visible_message(
			SPAN_NOTICE("\The [user] lights \a [src] with \a [tool]."),
			SPAN_NOTICE("You light \the [src] with \the [tool].")
		)
		return TRUE

	return ..()

/obj/item/flame/candle/proc/light()
	if (!lit)
		lit = TRUE
		set_light(candle_range, candle_power)
		START_PROCESSING(SSobj, src)

/obj/item/flame/candle/Process()
	if(!lit)
		return
	wax--
	if(!wax)
		var/obj/item/trash/candle/C = new(loc)
		C.color = color
		qdel(src)
		return
	update_icon()
	if(istype(loc, /turf)) //start a fire if possible
		var/turf/T = loc
		T.hotspot_expose(700, 5)

/obj/item/flame/candle/attack_self(mob/user as mob)
	if(lit)
		lit = 0
		update_icon()
		set_light(0)
		remove_extension(src, /datum/extension/scent)

/obj/item/storage/candle_box
	name = "candle pack"
	desc = "A pack of unscented candles in a variety of colours."
	icon = 'icons/obj/candle.dmi'
	icon_state = "candlebox"
	throwforce = 2
	w_class = ITEM_SIZE_SMALL
	max_w_class = ITEM_SIZE_TINY
	max_storage_space = 7
	slot_flags = SLOT_BELT

	startswith = list(/obj/item/flame/candle = 15)
