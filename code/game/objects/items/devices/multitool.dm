/**
 * Multitool -- A multitool is used for hacking electronic devices.
 *
 */

/obj/item/device/multitool
	name = "multitool"
	desc = "This small, handheld device is made of durable, insulated plastic, and tipped with electrodes, perfect for interfacing with numerous machines."
	icon = 'icons/obj/tools/multitool.dmi'
	icon_state = "multitool"
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	force = 11
	w_class = ITEM_SIZE_SMALL
	throwforce = 5.0
	throw_range = 15
	throw_speed = 3

	matter = list(MATERIAL_PLASTIC = 50, MATERIAL_GLASS = 20, MATERIAL_STEEL = 5)

	origin_tech = list(TECH_MAGNET = 1, TECH_ENGINEERING = 1)

	var/buffer_name
	var/atom/buffer_object

/obj/item/device/multitool/Destroy()
	unregister_buffer(buffer_object)
	return ..()

/obj/item/device/multitool/proc/get_buffer(typepath)
	// Only allow clearing the buffer name when someone fetches the buffer.
	// Means you cannot be sure the source hasn't been destroyed until the very moment it's needed.
	get_buffer_name(TRUE)
	if(buffer_object && (!typepath || istype(buffer_object, typepath)))
		return buffer_object

/obj/item/device/multitool/proc/get_buffer_name(null_name_if_missing = FALSE)
	if(buffer_object)
		buffer_name = buffer_object.name
	else if(null_name_if_missing)
		buffer_name = null
	return buffer_name

/obj/item/device/multitool/proc/set_buffer(atom/buffer)
	if(!buffer || istype(buffer))
		buffer_name = buffer ? buffer.name : null
		if(buffer != buffer_object)
			unregister_buffer(buffer_object)
			buffer_object = buffer
			if(buffer_object)
				GLOB.destroyed_event.register(buffer_object, src, /obj/item/device/multitool/proc/unregister_buffer)

/obj/item/device/multitool/proc/unregister_buffer(atom/buffer_to_unregister)
	// Only remove the buffered object, don't reset the name
	// This means one cannot know if the buffer has been destroyed until one attempts to use it.
	if(buffer_to_unregister == buffer_object && buffer_object)
		GLOB.destroyed_event.unregister(buffer_object, src)
		buffer_object = null


/obj/item/device/multitool/use_before(atom/target, mob/living/user, click_parameters)
	if (!isobj(target))
		return ..()

	var/obj/target_obj = target
	var/datum/extension/interactive/multitool/multiool_interaction = get_extension(target_obj, /datum/extension/interactive/multitool)
	if (!multiool_interaction)
		return ..()

	user.AddTopicPrint(src)
	multiool_interaction.interact(src, user)
	return TRUE
