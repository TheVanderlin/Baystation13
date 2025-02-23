/obj/structure/bed/chair	//YES, chairs are a type of bed, which are a type of stool. This works, believe me.	-Pete
	name = "chair"
	desc = "You sit in this, either by will or force."
	icon_state = "chair_preview"
	color = "#666666"
	base_icon = "chair"
	buckle_dir = 0
	buckle_stance = BUCKLE_FORCE_STAND
	obj_flags = OBJ_FLAG_ROTATABLE
	var/propelled = 0 // Check for fire-extinguisher-driven chairs
	buckle_movable = TRUE

/obj/structure/bed/chair/do_simple_ranged_interaction(mob/user)
	if(!buckled_mob && user)
		rotate(user)
	return TRUE


/obj/structure/bed/chair/use_tool(obj/item/tool, mob/user, list/click_params)
	// Shock Kit - Attach shock kit
	if (istype(tool, /obj/item/assembly/shock_kit))
		if (padding_material)
			USE_FEEDBACK_FAILURE("\The [src]'s [padding_material.display_name] must be removed before you can attach \the [tool].")
			return TRUE
		if (!user.unEquip(tool))
			FEEDBACK_UNEQUIP_FAILURE(user, tool)
			return TRUE
		var/obj/item/assembly/shock_kit/shock_kit = tool
		if (!shock_kit.status)
			USE_FEEDBACK_FAILURE("\The [tool] is not ready to be attached to \the [src].")
			return TRUE
		var/obj/structure/bed/chair/e_chair/electric_chair = new (loc, material.name)
		playsound(src, 'sound/items/Deconstruct.ogg', 50, TRUE)
		electric_chair.set_dir(dir)
		electric_chair.part = shock_kit
		shock_kit.forceMove(electric_chair)
		shock_kit.master = electric_chair
		transfer_fingerprints_to(electric_chair)
		user.visible_message(
			SPAN_NOTICE("\The [user] attaches \a [tool] to \the [src], creating \a [electric_chair]."),
			SPAN_NOTICE("You attach \the [tool] to \the [src], creating \a [electric_chair].")
		)
		qdel_self()
		return TRUE

	return ..()


/obj/structure/bed/chair/post_buckle_mob()
	update_icon()
	return ..()

/obj/structure/bed/chair/on_update_icon()
	..()
	var/cache_key = "[base_icon]-[material.name]-over"
	if(isnull(stool_cache[cache_key]))
		var/image/I = image(icon, "[base_icon]_over")
		if(material_alteration & MATERIAL_ALTERATION_COLOR)
			I.color = material.icon_colour
		I.layer = ABOVE_HUMAN_LAYER
		stool_cache[cache_key] = I
	AddOverlays(stool_cache[cache_key])
	// Padding overlay.
	if(padding_material)
		var/padding_cache_key = "[base_icon]-padding-[padding_material.name]-over"
		if(isnull(stool_cache[padding_cache_key]))
			var/image/I =  image(icon, "[base_icon]_padding_over")
			if(material_alteration & MATERIAL_ALTERATION_COLOR)
				I.color = padding_material.icon_colour
			I.layer = ABOVE_HUMAN_LAYER
			stool_cache[padding_cache_key] = I
		AddOverlays(stool_cache[padding_cache_key])

	if(buckled_mob)
		if(padding_material)
			cache_key = "[base_icon]-armrest-[padding_material.name]"
		if(isnull(stool_cache[cache_key]))
			var/image/I = image(icon, "[base_icon]_armrest")
			I.layer = ABOVE_HUMAN_LAYER
			if(material_alteration & MATERIAL_ALTERATION_COLOR)
				I.color = material.icon_colour
			stool_cache[cache_key] = I
		AddOverlays(stool_cache[cache_key])
		if(padding_material)
			cache_key = "[base_icon]-padding-armrest-[padding_material.name]"
			if(isnull(stool_cache[cache_key]))
				var/image/I = image(icon, "[base_icon]_padding_armrest")
				I.layer = ABOVE_HUMAN_LAYER
				if(material_alteration & MATERIAL_ALTERATION_COLOR)
					I.color = padding_material.icon_colour
				stool_cache[cache_key] = I
			AddOverlays(stool_cache[cache_key])

/obj/structure/bed/chair/rotate(mob/user)
	if(!CanPhysicallyInteract(user))
		to_chat(user, SPAN_NOTICE("You can't interact with \the [src] right now!"))
		return

	set_dir(turn(dir, 90))
	update_icon()

/obj/structure/bed/chair/set_dir()
	..()
	if(buckled_mob)
		buckled_mob.set_dir(dir)


/obj/structure/bed/chair/warhammer/padded/red/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_CARPET)
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/brown/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_LEATHER_GENERIC)
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/teal/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "teal")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/black/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "black")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/green/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "green")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/purple/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "purple")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/blue/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "blue")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/beige/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "beige")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/lime/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "lime")
	name = "chair"

/obj/structure/bed/chair/warhammer/padded/yellow/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "yellow")
	name = "chair"

// Leaving this in for the sake of compilation.
/obj/structure/bed/chair/comfy
	name = "comfy chair"
	desc = "It's a chair. It looks comfy."
	icon_state = "comfychair_preview"
	base_icon = "comfychair"

/obj/structure/bed/chair/comfy/brown/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_LEATHER_GENERIC)
	name = "comfy chair"

/obj/structure/bed/chair/comfy/red/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_CARPET)
	name = "comfy chair"

/obj/structure/bed/chair/comfy/teal/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "teal")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/black/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "black")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/green/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "green")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/purple/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "purple")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/blue/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "blue")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/beige/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "beige")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/lime/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "lime")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/yellow/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "yellow")
	name = "comfy chair"

/obj/structure/bed/chair/comfy/captain
	name = "officer's chair"
	desc = "It's a chair. Only for the highest ranked asses."
	icon_state = "capchair_preview"
	base_icon = "capchair"

/obj/structure/bed/chair/comfy/captain/on_update_icon()
	..()
	var/image/I = image(icon, "[base_icon]_special")
	I.layer = ABOVE_HUMAN_LAYER
	AddOverlays(I)

/obj/structure/bed/chair/comfy/captain/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc,MATERIAL_STEEL,"blue")

/obj/structure/bed/chair/armchair
	name = "armchair"
	desc = "It's an armchair. It looks comfy."
	icon_state = "armchair_preview"
	base_icon = "armchair"
	buckle_movable = FALSE

/obj/structure/bed/chair/armchair/brown/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_LEATHER_GENERIC)

/obj/structure/bed/chair/armchair/red/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_CARPET)

/obj/structure/bed/chair/armchair/teal/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "teal")

/obj/structure/bed/chair/armchair/black/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "black")

/obj/structure/bed/chair/armchair/green/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "green")

/obj/structure/bed/chair/armchair/purple/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "purple")

/obj/structure/bed/chair/armchair/blue/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "blue")

/obj/structure/bed/chair/armchair/beige/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "beige")

/obj/structure/bed/chair/armchair/lime/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "lime")

/obj/structure/bed/chair/armchair/yellow/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "yellow")

/obj/structure/bed/chair/office
	name = "office chair"
	icon_state = "officechair_preview"
	base_icon = "officechair"
	anchored = FALSE

/obj/structure/bed/chair/office/Move()
	. = ..()
	if(buckled_mob)
		var/mob/living/occupant = buckled_mob
		if (occupant && (src.loc != occupant.loc))
			if (propelled)
				for (var/mob/O in src.loc)
					if (O != occupant)
						Bump(O)
			else
				unbuckle_mob()

/obj/structure/bed/chair/office/Bump(atom/A)
	..()
	if(!buckled_mob)	return

	if(propelled)
		var/mob/living/occupant = unbuckle_mob()

		var/def_zone = ran_zone()
		var/blocked = 100 * occupant.get_blocked_ratio(def_zone, DAMAGE_BRUTE, damage = 10)
		occupant.throw_at(A, 3, propelled)
		occupant.apply_effect(6, EFFECT_STUN, blocked)
		occupant.apply_effect(6, EFFECT_WEAKEN, blocked)
		occupant.apply_effect(6, EFFECT_STUTTER, blocked)
		occupant.apply_damage(10, DAMAGE_BRUTE, def_zone)
		playsound(src.loc, 'sound/weapons/punch1.ogg', 50, 1, -1)
		if(istype(A, /mob/living))
			var/mob/living/victim = A
			def_zone = ran_zone()
			blocked = 100 * victim.get_blocked_ratio(def_zone, DAMAGE_BRUTE, damage = 10)
			victim.apply_effect(6, EFFECT_STUN, blocked)
			victim.apply_effect(6, EFFECT_WEAKEN, blocked)
			victim.apply_effect(6, EFFECT_STUTTER, blocked)
			victim.apply_damage(10, DAMAGE_BRUTE, def_zone)
		occupant.visible_message(SPAN_DANGER("[occupant] crashed into \the [A]!"))

/obj/structure/bed/chair/office/light/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_CLOTH)

/obj/structure/bed/chair/office/dark/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "black")

/obj/structure/bed/chair/office/comfy
	name = "comfy office chair"
	desc = "It's an office chair. It looks comfy."
	icon_state = "comfyofficechair_preview"
	base_icon = "comfyofficechair"

/obj/structure/bed/chair/office/comfy/brown/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_LEATHER_GENERIC)

/obj/structure/bed/chair/office/comfy/red/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, MATERIAL_CARPET)

/obj/structure/bed/chair/office/comfy/teal/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "teal")

/obj/structure/bed/chair/office/comfy/black/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "black")

/obj/structure/bed/chair/office/comfy/green/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "green")

/obj/structure/bed/chair/office/comfy/purple/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "purple")

/obj/structure/bed/chair/office/comfy/blue/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "blue")

/obj/structure/bed/chair/office/comfy/beige/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "beige")

/obj/structure/bed/chair/office/comfy/lime/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "lime")

/obj/structure/bed/chair/office/comfy/yellow/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc, newmaterial, "yellow")

/obj/structure/bed/chair/shuttle
	name = "shuttle seat"
	desc = "A comfortable, secure seat. It has a sturdy-looking buckling system for smoother flights."
	base_icon = "shuttle_chair"
	icon_state = "shuttle_chair_preview"
	buckle_sound = 'sound/effects/metal_close.ogg'
	buckle_movable = FALSE

/obj/structure/bed/chair/shuttle/post_buckle_mob()
	if(buckled_mob)
		base_icon = "shuttle_chair-b"
	else
		base_icon = "shuttle_chair"
	..()

/obj/structure/bed/chair/shuttle/on_update_icon()
	..()
	if(!buckled_mob)
		var/image/I = image(icon, "[base_icon]_special")
		I.layer = ABOVE_HUMAN_LAYER
		if(material_alteration & MATERIAL_ALTERATION_COLOR)
			I.color = material.icon_colour
		AddOverlays(I)

/obj/structure/bed/chair/shuttle/blue/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc,MATERIAL_STEEL,"blue")

/obj/structure/bed/chair/shuttle/black/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc,MATERIAL_STEEL,"black")

/obj/structure/bed/chair/shuttle/white/New(newloc, newmaterial = DEFAULT_FURNITURE_MATERIAL)
	..(newloc,MATERIAL_STEEL,MATERIAL_CLOTH)

/obj/structure/bed/chair/wood
	name = "classic chair"
	desc = "Old is never too old to not be in fashion."
	base_icon = "wooden_chair"
	icon_state = "wooden_chair_preview"
	color = WOOD_COLOR_GENERIC
	/// String (One of `MATERIAL_*`). Base material for the chair. Only used if `New()` is not passed a material.
	var/chair_material = MATERIAL_WOOD
	buckle_movable = FALSE
	bed_flags = BED_FLAG_CANNOT_BE_PADDED

/obj/structure/bed/chair/wood/New(newloc, _material)
	..(newloc, _material? _material : chair_material)
	set_color(material.icon_colour)

/obj/structure/bed/chair/wood/mahogany
	color = WOOD_COLOR_RICH
	chair_material = MATERIAL_MAHOGANY

/obj/structure/bed/chair/wood/maple
	color = WOOD_COLOR_PALE
	chair_material = MATERIAL_MAPLE

/obj/structure/bed/chair/wood/ebony
	color = WOOD_COLOR_BLACK
	chair_material = MATERIAL_EBONY

/obj/structure/bed/chair/wood/walnut
	color = WOOD_COLOR_CHOCOLATE
	chair_material = MATERIAL_WALNUT

/obj/structure/bed/chair/wood/wings
	name = "winged chair"
	base_icon = "wooden_chair_wings"
	icon_state = "wooden_chair_wings_preview"

/obj/structure/bed/chair/wood/wings/mahogany
	color = WOOD_COLOR_RICH
	chair_material = MATERIAL_MAHOGANY

/obj/structure/bed/chair/wood/wings/maple
	color = WOOD_COLOR_PALE
	chair_material = MATERIAL_MAPLE

/obj/structure/bed/chair/wood/wings/ebony
	color = WOOD_COLOR_BLACK
	chair_material = MATERIAL_EBONY

/obj/structure/bed/chair/wood/wings/walnut
	color = WOOD_COLOR_CHOCOLATE
	chair_material = MATERIAL_WALNUT

/obj/structure/bed/chair/warhammer/on_update_icon()
	icon_state = "[icon_state]"

/obj/structure/bed/chair/warhammer/pew
	name = "pew"
	desc = "A long, simple bench with a backboard, commonly found in places of worship, courtrooms and so on. Not known for being particularly comfortable."
	buckle_movable = FALSE
	base_icon = "pewchair_center"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "pewchair_center"

/obj/structure/bed/chair/warhammer/pew/rotate()//Can't rotate it.
	return

/obj/structure/bed/chair/warhammer/stoolw
	name = "\the bar stool"
	desc = "An old steel stool."
	base_icon = "bar_black"
	icon_state = "bar_black"

/obj/structure/bed/chair/warhammer/stoolw/wood
	desc = "An old wood stool."
	base_icon = "barstool"
	icon_state = "barstool"

/obj/structure/bed/chair/warhammer/stoolw/rotate()//Can't rotate it.
	return

/obj/structure/bed/chair/warhammer/throne
	name = "\the rogue throne"
	desc = "Fit for baron, count, or even duke. Surely fit for your sorry rear end."
	icon = 'icons/map_project/furniture_and_decor.dmi'
	base_icon = "cave_throne"
	icon_state = "cave_throne"
	health_max = 1500

/obj/structure/bed/chair/warhammer/throne/rotate()//Can't rotate it.
	return

/obj/structure/bed/chair/warhammer/throne/two
	name = "imperial throne"
	desc = "An expensive and serious looking chair to use on an office."
	base_icon = "comm"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "comm"

/obj/structure/bed/chair/warhammer/throne/three
	name = "imperial throne"
	desc = "An expensive and serious looking chair to use on an office."
	base_icon = "chair"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "chair"

/obj/structure/bed/chair/warhammer/throne/giant
	name = "rogue throne"
	desc = "A grand stone throne belonging to the Rogue House."
	base_icon = "throne"
	icon = 'icons/map_project/96x96.dmi'
	icon_state = "throne"
	health_max = 3500
	var/cooldown = 0

/obj/structure/bed/chair/warhammer/throne/giant/proc/process_cooldowns()
	return

/obj/structure/bed/chair/warhammer/throne/giant/process_cooldowns()
	cooldown--
	if(cooldown <= 0)	return 0
	spawn(30)
		process_cooldowns()
	return 1

/obj/structure/bed/chair/warhammer/throne/giant/attack_hand(mob/living/user)
	var/input = sanitize(input(usr, "Please enter anything you want. Anything. Serious.", "What?", "") as message|null, extra = 0)
	var/customname = sanitizeSafe(input(usr, "Pick a title for the report.", "Title") as text|null)
	if(!input)
		return
	if(!customname)
		customname = "Astropathic Communiqué"

	//New message handling
	post_comm_message(customname, replacetext(input, "\n", "<br/>"))

	switch(alert("Should this be announced to the general population?",,"Compliance","No"))
		if("Compliance")
			command_announcement.Announce(input, customname, new_sound = GLOB.using_map.command_report_sound, msg_sanitized = 1);
			for (var/mob/T as mob in SSmobs.mob_list)
				if(prob(30))
					sound_to(T, 'sound/items/cult/praise.ogg')
				else if(prob(30))
					sound_to(T, 'sound/items/cult/skvor.ogg')
				else
					sound_to(T, 'sound/items/cult/tesa.ogg')
		if("No")
			minor_announcement.Announce(message = "New Update available at all communication consoles.")

	log_admin("[key_name(src)] has created a command report: [input]")
	message_admins("[key_name_admin(src)] has created a command report", 1)
	cooldown = 2
	spawn(30)
		process_cooldowns()

/obj/structure/bed/chair/warhammer/ancient_throne
	name = "ancient throne"
	desc = "An old throne that seems to be made out of metal, how long it's been there is unknown."
	base_icon = "Chair"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "Chair"

/obj/structure/bed/chair/warhammer/wood
	name = "simple wood chair"
	desc = "A simple wooden chair."
	base_icon = "cave_wooden_chair"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "cave_wooden_chair"

/obj/structure/bed/chair/warhammer/wood/fancy
	name = "fancy wood chair"
	desc = "An elegant and well crafted chair."
	base_icon = "wooden_chair"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "wooden_chair"

/obj/structure/bed/chair/warhammer/wood/fancy/comfy1
	name = "expensive chair"
	desc = "A chair that was possibly done by imperial war orphans, the materials seem of very high quality though."
	base_icon = "comfychair_brown"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "comfychair_brown"

/obj/structure/bed/chair/warhammer/wood/fancy/comfy2
	name = "antique chair"
	desc = "This chairs very old, possibly dating from 100-200 years old with the state of it, seems it's been mantained quite properly."
	base_icon = "comfychair2"
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "comfychair2"

/obj/structure/bed/chair/warhammer/cage
	name = "cage"
	desc = "A horrible cramped cage."
	icon = 'icons/obj/furniture.dmi'
	base_icon = "cage1"
	icon_state = "cage1"

/obj/structure/bed/chair/warhammer/altar
	name = "altar"
	desc = "A disgusting stone altar."
	icon = 'icons/obj/furniture.dmi'
	base_icon = "altar_empty"
	icon_state = "altar_empty"
