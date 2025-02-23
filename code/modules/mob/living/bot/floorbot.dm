/mob/living/bot/floorbot
	name = "Floorbot"
	desc = "A little floor repairing robot, he looks so excited!"
	icon = 'icons/mob/bot/floorbot.dmi'
	icon_state = "floorbot0"
	wait_if_pulled = 1
	min_target_dist = 0

	var/amount = 10 // 1 for tile, 2 for lattice
	var/maxAmount = 60
	var/tilemake = 0 // When it reaches 100, bot makes a tile
	var/improvefloors = 0
	var/eattiles = 0
	var/maketiles = 0
	var/floor_build_type = /singleton/flooring/tiling // Basic steel floor.
	var/boxtype = "blue"

/mob/living/bot/floorbot/premade
	name = "Rusty"
	boxtype = "yellow"
	on = 0

/mob/living/bot/floorbot/Initialize()
	. = ..()
	var/image/B = image(src, boxtype)
	src.underlays += B


/mob/living/bot/floorbot/update_icons()
	if(busy)
		icon_state = "floorbot-c"
	else if(amount > 0)
		icon_state = "floorbot[on]"
	else
		icon_state = "floorbot[on]e"

/mob/living/bot/floorbot/GetInteractTitle()
	. = "<head><title>Repairbot v1.0 controls</title></head>"
	. += "<b>Automatic Floor Repairer v1.0</b>"

/mob/living/bot/floorbot/GetInteractStatus()
	. = ..()
	. += "<br>Tiles left: [amount]"

/mob/living/bot/floorbot/GetInteractPanel()
	. = "Improves floors: <a href='?src=\ref[src];command=improve'>[improvefloors ? "Compliance" : "No"]</a>"
	. += "<br>Finds tiles: <a href='?src=\ref[src];command=tiles'>[eattiles ? "Compliance" : "No"]</a>"
	. += "<br>Make single pieces of metal into tiles when empty: <a href='?src=\ref[src];command=make'>[maketiles ? "Compliance" : "No"]</a>"

/mob/living/bot/floorbot/GetInteractMaintenance()
	. = "Disassembly mode: "
	switch(emagged)
		if(0)
			. += "<a href='?src=\ref[src];command=emag'>Off</a>"
		if(1)
			. += "<a href='?src=\ref[src];command=emag'>On (Caution)</a>"
		if(2)
			. += "ERROROROROROR-----"

/mob/living/bot/floorbot/ProcessCommand(mob/user, command, href_list)
	..()
	if(CanAccessPanel(user))
		switch(command)
			if("improve")
				improvefloors = !improvefloors
			if("tiles")
				eattiles = !eattiles
			if("make")
				maketiles = !maketiles

	if(CanAccessMaintenance(user))
		switch(command)
			if("emag")
				if(emagged < 2)
					emagged = !emagged


/mob/living/bot/floorbot/get_construction_info()
	return list(
		"Add <b>10 Floor Tiles</b> to a <b>Toolbox</b>.",
		"Add a <b>Proximity Sensor</b>.",
		"Add a robotic <b>Left Arm</b> or <b>Right Arm</b> to finish the floorbot."
	)


/mob/living/bot/floorbot/get_antag_interactions_info()
	. = ..()
	.[CODEX_INTERACTION_EMAG] += "<p>Causes \the [initial(name)] to tear up and remove floors instead of build them.</p>"


/mob/living/bot/floorbot/emag_act(remaining_charges, mob/user)
	. = ..()
	if(!emagged)
		emagged = TRUE
		if(user)
			to_chat(user, SPAN_NOTICE("The [src] buzzes and beeps."))
		return 1

/mob/living/bot/floorbot/handleRegular()
	++tilemake
	if(tilemake >= 100)
		tilemake = 0
		addTiles(1)

	if(prob(1))
		custom_emote(2, "makes an excited booping beeping sound!")

/mob/living/bot/floorbot/handleAdjacentTarget()
	if(get_turf(target) == src.loc)
		UnarmedAttack(target)

/mob/living/bot/floorbot/lookForTargets()
	for(var/turf/simulated/floor/T in view(src))
		if(confirmTarget(T))
			target = T
			return

	if(amount < maxAmount && (eattiles || maketiles))
		for(var/obj/item/stack/S in view(src))
			if(confirmTarget(S))
				target = S
				return

/mob/living/bot/floorbot/confirmTarget(atom/A) // The fact that we do some checks twice may seem confusing but remember that the bot's settings may be toggled while it's moving and we want them to stop in that case
	anchored = FALSE
	if(!..())
		return 0

	if(istype(A, /obj/item/stack/tile/floor))
		return (amount < maxAmount && eattiles)
	if(istype(A, /obj/item/stack/material/steel))
		return (amount < maxAmount && maketiles)

	if(A.loc.name == "Space")
		return 0

	var/turf/simulated/floor/T = A
	if(istype(T))
		if(emagged)
			return 1
		else
			return (amount && (T.broken || T.burnt || (improvefloors && !T.flooring)))

/mob/living/bot/floorbot/UnarmedAttack(atom/A, proximity)
	if(!..())
		return

	if(busy)
		return

	if(get_turf(A) != loc)
		return

	if(emagged && istype(A, /turf/simulated/floor))
		var/turf/simulated/floor/F = A
		busy = 1
		update_icons()
		if(F.flooring)
			visible_message(SPAN_WARNING("[src] begins to tear the floor tile from the floor."))
			if(do_after(src, 5 SECONDS, F, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS))
				F.break_tile_to_plating()
				addTiles(1)
		else
			visible_message(SPAN_DANGER("[src] begins to tear through the floor!"))
			if(do_after(src, 15 SECONDS, F, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS)) // Extra time because this can and will kill.
				F.ReplaceWithLattice()
				addTiles(1)
		target = null
		update_icons()
	else if(istype(A, /turf/simulated/floor))
		var/turf/simulated/floor/F = A
		if(F.broken || F.burnt)
			busy = 1
			update_icons()
			visible_message(SPAN_NOTICE("[src] begins to remove the broken floor."))
			anchored = TRUE
			if(do_after(src, 5 SECONDS, F, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS))
				if(F.broken || F.burnt)
					F.make_plating()
			anchored = FALSE
			target = null
			busy = 0
			update_icons()
		else if(!F.flooring && amount)
			busy = 1
			update_icons()
			visible_message(SPAN_NOTICE("[src] begins to improve the floor."))
			anchored = TRUE
			if(do_after(src, 5 SECONDS, F, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS))
				if(!F.flooring)
					F.set_flooring(GET_SINGLETON(floor_build_type))
					addTiles(-1)
			anchored = FALSE
			target = null
			update_icons()
	else if(istype(A, /obj/item/stack/tile/floor) && amount < maxAmount)
		var/obj/item/stack/tile/floor/T = A
		visible_message(SPAN_NOTICE("\The [src] begins to collect tiles."))
		busy = 1
		update_icons()
		anchored = TRUE
		if(do_after(src, 2 SECONDS, T, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS))
			if(T)
				var/eaten = min(maxAmount - amount, T.get_amount())
				T.use(eaten)
				addTiles(eaten)
		anchored = FALSE
		target = null
		update_icons()
	else if(istype(A, /obj/item/stack/material) && amount + 4 <= maxAmount)
		var/obj/item/stack/material/M = A
		if(M.get_material_name() == MATERIAL_STEEL)
			visible_message(SPAN_NOTICE("\The [src] begins to make tiles."))
			busy = 1
			anchored = TRUE
			update_icons()
			if(do_after(src, 5 SECONDS, M, DO_DEFAULT | DO_USER_UNIQUE_ACT | DO_PUBLIC_PROGRESS))
				if(M)
					M.use(1)
					addTiles(4)
			anchored = FALSE

/mob/living/bot/floorbot/explode()
	turn_off()
	visible_message(SPAN_DANGER("[src] blows apart!"))
	var/turf/Tsec = get_turf(src)


	var/list/things = list()
	for(var/atom/A in orange(5, src.loc))
		things += A

	var/list/shrapnel = list()

	for(var/I = 3, I<3 , I++) //Toolbox shatters.
		shrapnel += new /obj/item/material/shard/shrapnel/steel(Tsec)

	for(var/Amt = amount, Amt>0, Amt--) //Why not just spit them out in a disorganized jumble?
		shrapnel += new /obj/item/stack/tile/floor(Tsec)

	if(prob(50))
		shrapnel += new /obj/item/robot_parts/l_arm(Tsec)
	shrapnel += new /obj/item/device/assembly/prox_sensor(Tsec)

	var/datum/effect/spark_spread/s = new /datum/effect/spark_spread
	s.set_up(3, 1, src)
	s.start()

	for(var/atom/movable/AM in shrapnel)
		AM.throw_at(pick(things),5)

	qdel(src)

/mob/living/bot/floorbot/proc/addTiles(am)
	amount += am
	if(amount < 0)
		amount = 0
	else if(amount > maxAmount)
		amount = maxAmount
	busy = FALSE
