/obj/item/weldingtool/electric/crystal
	name = "crystalline arc welder"
	desc = "A crystalline welding tool of an alien make."
	icon_state = "crystal_welder"
	item_state = "crystal_tool"
	icon = 'icons/obj/tools/welder.dmi'
	matter = list(MATERIAL_CRYSTAL = 1250)
	cell = null
	fuel_cost_multiplier = 1
	atom_flags = ATOM_FLAG_NO_TEMP_CHANGE | ATOM_FLAG_NO_TOOLS

/obj/item/weldingtool/electric/crystal/on_update_icon()
	if(welding)
		icon_state = "crystal_welder_on"
		item_state = "crystal_tool_lit"
		set_light(0.6, 0.5, 2.5, l_color = COLOR_LIGHT_CYAN)
	else
		icon_state = "crystal_welder"
		item_state = "crystal_tool"
		set_light(0)
	var/mob/M = loc
	if(istype(M))
		M.update_inv_l_hand()
		M.update_inv_r_hand()

/obj/item/weldingtool/electric/crystal/get_available_charge()
	. = 0
	var/mob/living/carbon/human/adherent = loc
	if(istype(adherent))
		for(var/obj/item/organ/internal/cell/cell in adherent.internal_organs)
			if(!cell.is_broken())
				. += cell.get_charge()

/obj/item/weldingtool/electric/crystal/spend_charge(amount)
	var/mob/living/carbon/human/adherent = loc
	if(istype(adherent))
		for(var/obj/item/organ/internal/cell/cell in adherent.internal_organs)
			if(!cell.is_broken() && cell.get_charge() >= amount)
				var/spending = min(amount, cell.get_charge())
				cell.use(spending)
				amount -= spending
				if(amount <= 0)
					break

/obj/item/wirecutters/crystal
	name = "crystalline shears"
	desc = "A crystalline shearing tool of an alien make."
	icon_state = "crystal_wirecutter"
	item_state = "crystal_tool"
	icon = 'icons/obj/tools/wirecutter.dmi'
	matter = list(MATERIAL_CRYSTAL = 1250)
	build_from_parts = FALSE

/obj/item/wirecutters/crystal/Initialize()
	. = ..()
	icon_state = initial(icon_state)
	item_state = initial(item_state)

/obj/item/screwdriver/crystal
	name = "crystalline screwdriver"
	desc = "A crystalline screwdriving tool of an alien make."
	icon_state = "crystal_screwdriver"
	item_state = "crystal_tool"
	icon = 'icons/obj/tools/screwdriver.dmi'
	matter = list(MATERIAL_CRYSTAL = 1250)
	build_from_parts = FALSE

/obj/item/screwdriver/crystal/Initialize()
	. = ..()
	icon_state = initial(icon_state)
	item_state = initial(item_state)

/obj/item/crowbar/crystal
	name = "crystalline prytool"
	desc = "A crystalline prying tool of an alien make."
	icon_state = "crystal_crowbar"
	item_state = "crystal_tool"
	icon = 'icons/obj/tools/crowbar.dmi'
	matter = list(MATERIAL_CRYSTAL = 1250)

/obj/item/crowbar/crystal/Initialize()
	. = ..()
	icon_state = initial(icon_state)
	item_state = initial(item_state)

/obj/item/wrench/crystal
	name = "crystalline wrench"
	desc = "A crystalline wrenching tool of an alien make."
	icon_state = "crystal_wrench"
	item_state = "crystal_tool"
	icon = 'icons/obj/tools/wrench.dmi'
	matter = list(MATERIAL_CRYSTAL = 1250)

/obj/item/wrench/crystal/Initialize()
	. = ..()
	icon_state = initial(icon_state)
	item_state = initial(item_state)

/obj/item/device/multitool/crystal
	name = "crystalline multitool"
	desc = "A crystalline energy patterning tool of an alien make."
	icon_state = "crystal_multitool"
	item_state = "crystal_tool"
	icon = 'icons/obj/tools/multitool.dmi'
	matter = list(MATERIAL_CRYSTAL = 1250)

/obj/item/storage/belt/utility/crystal
	name = "crystalline tool harness"
	desc = "A segmented belt of strange crystalline material."
	icon = 'icons/obj/clothing/obj_belt.dmi'
	icon_state = "utilitybelt_crystal"
	item_state = "utilitybelt_crystal"

/obj/item/storage/belt/utility/crystal/Initialize()
	new /obj/item/device/multitool/crystal(src)
	new /obj/item/wrench/crystal(src)
	new /obj/item/crowbar/crystal(src)
	new /obj/item/screwdriver/crystal(src)
	new /obj/item/wirecutters/crystal(src)
	new /obj/item/weldingtool/electric/crystal(src)
	update_icon()
	. = ..()

/obj/item/storage/toolbox/crystal
	name = "crystalline toolbox"
	desc = "A translucent toolbox made out of an odd crystalline material that is surprisingly light."
	icon = 'icons/obj/tools/toolboxes.dmi'
	icon_state = "crystal"
	item_state = "toolbox_crystal"
	origin_tech = list(TECH_COMBAT = 1, TECH_MATERIAL = 3)

/obj/item/storage/toolbox/crystal/Initialize()
	new /obj/item/device/multitool/crystal(src)
	new /obj/item/wrench/crystal(src)
	new /obj/item/crowbar/crystal(src)
	new /obj/item/screwdriver/crystal(src)
	new /obj/item/wirecutters/crystal(src)
	new /obj/item/weldingtool/electric/crystal(src)
	update_icon()
	. = ..()
