/obj/decal/cleanable/generic
	name = "clutter"
	desc = "Someone should clean that up."
	gender = PLURAL
	icon = 'icons/obj/materials/shards.dmi'
	icon_state = "shards"

/obj/decal/cleanable/ash
	name = "ashes"
	desc = "Ashes to ashes, dust to dust, and into space."
	gender = PLURAL
	icon = 'icons/obj/ash.dmi'
	icon_state = "ash"

/obj/decal/cleanable/ash/attack_hand(mob/user)
	to_chat(user, SPAN_NOTICE("[src] sifts through your fingers."))
	var/turf/simulated/floor/F = get_turf(src)
	if (istype(F))
		F.dirt += 4
	qdel(src)

/obj/decal/cleanable/greenglow/Initialize()
	. = ..()
	QDEL_IN(src, 2 MINUTES)

/obj/decal/cleanable/dirt
	name = "dirt"
	desc = "Someone should clean that up."
	gender = PLURAL
	icon = 'icons/effects/effects.dmi'
	icon_state = "dirt"
	mouse_opacity = 0
	persistent = TRUE

/obj/decal/cleanable/poo
	name = "..."
	desc = "It's still good. Four second rule!"
	gender = PLURAL
	icon = 'icons/effects/pooeffect.dmi'
	icon_state = "drip1"
	random_icon_states = list("floor1", "floor2", "floor3", "floor4", "floor5", "floor6", "floor7", "floor8")
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/poo/Initialize()
	. = ..()
	create_reagents(5)
	reagents.add_reagent(/datum/reagent/toxin/poo,5)
	for(var/obj/decal/cleanable/poo/shit in src.loc)
		if(shit != src)
			qdel(shit)

/obj/decal/cleanable/poo/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living/carbon))
		var/mob/living/carbon/M =	AM

		if(prob(3))
			M.slip("poo")

/obj/item/reagent_containers/food/snacks/poo
	name = "poo"
	desc = "A chocolately surprise!"
	icon = 'icons/obj/poop.dmi'
	icon_state = "poop2"
	item_state = "poop"
	nutriment_desc  = list("shit" = 4)

/obj/item/reagent_containers/food/snacks/poo/New()
	..()
	icon_state = pick("poop1", "poop2", "poop3", "poop4", "poop5", "poop6", "poop7")
	reagents.add_reagent(/datum/reagent/toxin/poo, 10)
	bitesize = 3

/obj/item/reagent_containers/food/snacks/poo/throw_impact(atom/hit_atom)
	playsound(src.loc, "sound/effects/squishy.ogg", 40, 1)
	var/turf/T = src.loc
	if(!istype(T, /turf/space))
		new /obj/decal/cleanable/poo(T)
	qdel(src)

/obj/item/reagent_containers/food/snacks/poo/decker
	name = "decker's gelato"
	desc = "A chocolately gelato surprise!"
	icon = 'icons/obj/food/food.dmi'
	icon_state = "icecream_cone_waffle"
	nutriment_desc  = list("shit gelato" = 4)

/obj/item/reagent_containers/food/snacks/poo/decker/New()
	..()
	icon_state = "icecream_cone_waffle"
	AddOverlays("icecream_chocolate")
	reagents.add_reagent(/datum/reagent/toxin/poo, 5)
	bitesize = 3

//SHIT
/datum/reagent/toxin/poo
	name = "poo"
	description = "It's poo."
	reagent_state = LIQUID
	color = "#643200"
	taste_description = "literal shit"
	strength = 0.5

/datum/reagent/toxin/poo/touch_turf(var/turf/T)
	if(!istype(T, /turf/space))
		new /obj/decal/cleanable/poo(T)
	qdel(src)

//URINE
/datum/reagent/toxin/urine
	name = "urine"
	description = "It's pee."
	reagent_state = LIQUID
	color = COLOR_YELLOW
	taste_description = "urine"
	strength = 0.3

/obj/effect/decal/cleanable/urine/Initialize()
	. = ..()
	create_reagents(5)
	reagents.add_reagent(/datum/reagent/toxin/urine,5)
	for(var/obj/effect/decal/cleanable/urine/piss in src.loc)
		if(piss != src)
			qdel(piss)

/datum/reagent/toxin/urine/touch_turf(var/turf/T)
	if(!istype(T, /turf/space))
		new /obj/effect/decal/cleanable/urine(T)
	qdel(src)

/obj/decal/cleanable/urine
	name = "..."
	desc = "It's still good. Four second rule!"
	gender = PLURAL
	icon = 'icons/effects/pooeffect.dmi'
	icon_state = "pee1"
	random_icon_states = list("pee1", "pee2", "pee3")
	persistent = TRUE
	generic_filth = TRUE

/obj/effect/decal/cleanable/urine/Crossed(AM as mob|obj)
	if (istype(AM, /mob/living/carbon))
		var/mob/living/carbon/M =	AM

		if(prob(4))
			M.slip("pee")

/obj/decal/cleanable/flour
	name = "flour"
	desc = "It's still good. Four second rule!"
	gender = PLURAL
	icon = 'icons/effects/effects.dmi'
	icon_state = "flour"
	persistent = TRUE

/obj/decal/cleanable/greenglow
	name = "glowing goo"
	desc = "Jeez. I hope that's not for lunch."
	gender = PLURAL
	light_range = 1
	icon = 'icons/effects/effects.dmi'
	icon_state = "greenglow"
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/cobweb
	name = "cobweb"
	desc = "Somebody should remove that."
	layer = ABOVE_HUMAN_LAYER
	icon = 'icons/effects/effects.dmi'
	icon_state = "cobweb1"

/obj/decal/cleanable/molten_item
	name = "gooey grey mass"
	desc = "It looks like a melted... something."
	icon = 'icons/obj/chemical_storage.dmi'
	icon_state = "molten"
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/cobweb2
	name = "cobweb"
	desc = "Somebody should remove that."
	layer = ABOVE_HUMAN_LAYER
	icon = 'icons/effects/effects.dmi'
	icon_state = "cobweb2"

//Vomit (sorry)
/obj/decal/cleanable/vomit
	name = "vomit"
	desc = "Gosh, how unpleasant."
	gender = PLURAL
	icon = 'icons/effects/blood2.dmi'
	icon_state = "vomittox_1"
	random_icon_states = list("vomittox_1", "vgibup1", "vgibbl1", "vgibbl4")
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/vomit/New()
	..()
	atom_flags |= ATOM_FLAG_OPEN_CONTAINER
	create_reagents(30, src)
	if(prob(75))
		SetTransform(rotation = pick(90, 180, 270))

/obj/decal/cleanable/vomit/on_update_icon()
	color = reagents.get_color()

/obj/decal/cleanable/vomitold
	name = "vomit"
	desc = "Gosh, how unpleasant."
	gender = PLURAL
	icon = 'icons/effects/pooeffect.dmi'
	icon_state = "vomit1"
	random_icon_states = list("vomit1", "vomit2", "vomit3")
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/tomato_smudge
	name = "tomato smudge"
	desc = "It's red."
	icon = 'icons/effects/tomatodecal.dmi'
	random_icon_states = list("tomato_floor1", "tomato_floor2", "tomato_floor3")
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/egg_smudge
	name = "smashed egg"
	desc = "Seems like this one won't hatch."
	icon = 'icons/effects/tomatodecal.dmi'
	random_icon_states = list("smashed_egg1", "smashed_egg2", "smashed_egg3")
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/pie_smudge //honk
	name = "smashed pie"
	desc = "It's pie cream from a cream pie."
	icon = 'icons/effects/tomatodecal.dmi'
	random_icon_states = list("smashed_pie")
	persistent = TRUE
	generic_filth = TRUE

/obj/decal/cleanable/fruit_smudge
	name = "smudge"
	desc = "Some kind of fruit smear."
	icon = 'icons/effects/blood.dmi'
	icon_state = "mfloor1"
	random_icon_states = list("mfloor1", "mfloor2", "mfloor3", "mfloor4", "mfloor5", "mfloor6", "mfloor7")
	persistent = TRUE
	generic_filth = TRUE
