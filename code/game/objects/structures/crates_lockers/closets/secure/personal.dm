/obj/structure/closet/warhammer/secure_closet/personal
	name = "personal closet"
	desc = "It's a secure locker for personnel."
	icon = 'icons/map_project/furniture_and_decor.dmi'
	icon_state = "metal_locker_closed"
	icon_opened = "metal_locker_open"
	icon_closed = "metal_locker_closed"
	req_access = list(access_restricted_command)
	locked = FALSE
	var/registered_name = null

/obj/structure/closet/warhammer/secure_closet/personal/WillContain()
	return list(
		new /datum/atom_creator/weighted(list(/obj/item/storage/backpack, /obj/item/storage/backpack/satchel/grey)),
		/obj/item/device/radio/headset
	)

/obj/structure/closet/warhammer/secure_closet/personal/empty/WillContain()
	return

/obj/structure/closet/warhammer/secure_closet/personal/patient
	name = "patient's closet"
/obj/structure/closet/warhammer/secure_closet/personal/patient/WillContain()
	return list(/obj/item/clothing/suit/hospital/blue, /obj/item/clothing/suit/hospital/green, /obj/item/clothing/suit/hospital/pink)

/obj/structure/closet/warhammer/secure_closet/personal/cabinet
	closet_appearance = /singleton/closet_appearance/cabinet/secure

/obj/structure/closet/warhammer/secure_closet/personal/cabinet/WillContain()
	return list(/obj/item/storage/backpack/satchel/grey/withwallet, /obj/item/device/radio/headset)

/obj/structure/closet/warhammer/secure_closet/personal/CanToggleLock(mob/user, obj/item/card/id/id_card)
	return ..() || (istype(id_card) && id_card.registered_name && (!registered_name || (registered_name == id_card.registered_name)))

/obj/structure/closet/warhammer/secure_closet/personal/togglelock(mob/user, obj/item/card/id/id_card)
	if (..())
		if(locked)
			id_card = istype(id_card) ? id_card : user.GetIdCard()
			if (id_card)
				set_owner(id_card.registered_name)
		else
			set_owner(null)

/obj/structure/closet/warhammer/secure_closet/personal/proc/set_owner(registered_name)
	if (registered_name)
		src.registered_name = registered_name
		src.SetName(name + " ([registered_name])")
		src.desc = "Currently used by [registered_name]."
	else
		src.registered_name = null
		src.SetName(initial(name))
		src.desc = initial(desc)
