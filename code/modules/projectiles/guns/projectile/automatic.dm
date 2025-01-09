/obj/item/gun/projectile/automatic
	name = "Necromundan SMG"
	desc = "A necromundan lightweight, fast firing submachine gun chambered in a small needle caliber."
	icon = 'icons/obj/guns/40kproj.dmi'
	icon_state = "machinepistol"
	item_state = "machinepistol"
	wielded_item_state = "machinepistol-wielded"
	w_class = ITEM_SIZE_NORMAL
	bulk = 0
	load_method = MAGAZINE
	caliber = CALIBER_SLUG_FLECHETTE
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/flechette
	magazine_type = /obj/item/ammo_magazine/proto_smg
	allowed_magazines = /obj/item/ammo_magazine/proto_smg
	multi_aim = 0
	burst_delay = 1.5
	one_hand_penalty = 1.5
	fire_delay = 3
	mag_insert_sound = 'sound/weapons/guns/interaction/smg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/smg_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/gunshot_4mm.ogg'
	slowdown_general = 0.04

	//machine pistol, easier to one-hand with
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=3,    move_delay=null, one_hand_penalty=0, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3, burst_delay = 1.5, move_delay=4,    one_hand_penalty=1, burst_accuracy=list(0,0,-1,-1),       dispersion=null),
		)

/obj/item/gun/projectile/automatic/machine_pistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "machinepistol"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"
	else
		icon_state = "machinepistol-e"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"

/obj/item/gun/projectile/automatic/machine_pistol
	name = "Rugged Autogun"
	desc = "A mass-produced slum forged autogun with a simple folding stock, this design loosely based on standard patterns of autogun lacks the embroidery or reliability of it's militarum sisters."
	icon_state = "machinepistol"
	item_state = "machinepistol"
	wielded_item_state = "machinepistol-wielded"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_NORMAL
	one_hand_penalty = 1
	accuracy = -1
	fire_delay = 2.8
	sales_price = 8
	caliber = CALIBER_SLUG // before doing all mattguns, we need to dupe all the calibers first -- but merge calibers that fit. then add variants as in Eipharius.

	fire_sound = 'sound/warhammer/guns/fire/smg_fire.ogg' // reminder sounds are under warhammer/
	ammo_type = /obj/item/ammo_casing/pistol
	magazine_type = /obj/item/ammo_magazine/machine_pistol
	allowed_magazines = /obj/item/ammo_magazine/machine_pistol
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.3, burst_delay=1.8, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.3, burst_delay=1.8, burst_accuracy=list(-1,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/machine_pistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "machinepistol"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"
	else
		icon_state = "machinepistol-e"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"

/obj/item/gun/projectile/automatic/merc_smg
	name = "Raptor Autogun"
	desc = "The Valhalla Raptor Pattern is a lightweight and rapid firing SMG. In production since the 2280s, the Raptor Pattern has proliferated across human space, in some part due to it being issued to smaller Tau vessels."
	icon = 'icons/obj/guns/merc_smg.dmi'
	icon_state = "c20r"
	item_state = "c20r"
	safety_icon = "safety"
	w_class = ITEM_SIZE_LARGE
	force = 10
	caliber = CALIBER_SLUG
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2, TECH_ESOTERIC = 2)
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	magazine_type = /obj/item/ammo_magazine/smg
	allowed_magazines = /obj/item/ammo_magazine/smg
	fire_sound = 'sound/warhammer/gunshot/auto2.ogg'
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	accuracy = -1
	one_hand_penalty = 1.5

	//SMG
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3, burst_delay=2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3, burst_delay=2, burst_accuracy=list(-1,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/merc_smg/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "c20r-[round(length(ammo_magazine.stored_ammo),4)]"
	else
		icon_state = "c20r"

/obj/item/gun/projectile/automatic/assault_rifle
	name = "Revenant Autogun"
	desc = "The rugged Revenant Pattern is a durable automatic weapon of a make popular on the frontier worlds. Originally designed in the mid Pre-Heresy, today variants are made by most firearm producers. This one appears to be HI made, with the serial number conveniently absent."
	icon = 'icons/obj/guns/assault_rifle.dmi'
	icon_state = "arifle"
	item_state = null
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_AUTOGUN
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 1, TECH_ESOTERIC = 2)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/autogun
	one_hand_penalty = 4
	allowed_magazines = /obj/item/ammo_magazine/autogun
	accuracy = -1
	bulk = GUN_BULK_HEAVY_RIFLE
	wielded_item_state = "arifle-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'
	fire_sound = 'sound/warhammer/gunshot/auto2.ogg'

	//Assault rifle, burst fire degrades quicker than SMG, worse one-handing penalty, slightly increased move delay
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.2, burst_delay=2.2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.2, burst_delay=2.2, burst_accuracy=list(0,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/assault_rifle/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "arifle"
		wielded_item_state = "arifle-wielded"
	else
		icon_state = "arifle-empty"
		wielded_item_state = "arifle-wielded-empty"

/obj/item/gun/projectile/automatic/sec_smg
	name = "submachine gun"
	desc = "The Goliath Pattern is a cheap self-defense weapon, mass-produced by Vostroya for paramilitary and private use."
	icon = 'icons/obj/guns/sec_smg.dmi'
	icon_state = "smg"
	item_state = "wt550"
	safety_icon = "safety"
	w_class = ITEM_SIZE_NORMAL
	caliber = CALIBER_SLUG_SMALL
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/pistol/tech
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/smg_top
	allowed_magazines = /obj/item/ammo_magazine/smg_top
	one_hand_penalty = 2
	fire_sound = 'sound/warhammer/gunshot/auto2.ogg'

	//machine pistol, like SMG but easier to one-hand with
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3, burst_delay=2.2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3, burst_delay=2.2, burst_accuracy=list(0,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/sec_smg/on_update_icon()
	..()
	if(ammo_magazine)
		AddOverlays(image(icon, "mag-[round(length(ammo_magazine.stored_ammo),5)]"))
	if(ammo_magazine && LAZYLEN(ammo_magazine.stored_ammo))
		AddOverlays(image(icon, "ammo-ok"))
	else
		AddOverlays(image(icon, "ammo-bad"))

/obj/item/gun/projectile/automatic/sec_smg/empty
	starts_loaded = FALSE

/obj/item/gun/projectile/automatic/bullpup_rifle
	name = "bullpup autogun"
	desc = "The Vostroyan Z8 is one of the oldest weapons currently in service with the ImperiumDF. Despite its age, it still remains the de-facto rifle of the Imperium Guard, due to its ease of handling, cheap production costs, reliability, and plentiful surplus stock."
	icon = 'icons/obj/guns/bullpup_rifle.dmi'
	icon_state = "carbine"
	item_state = "z8carbine"
	w_class = ITEM_SIZE_HUGE
	force = 10
	caliber = CALIBER_AUTOGUN
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 3)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/autogun
	allowed_magazines = /obj/item/ammo_magazine/autogun
	auto_eject = 1
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'
	accuracy = 2
	one_hand_penalty = 4
	bulk = GUN_BULK_RIFLE
	burst_delay = 2.3
	wielded_item_state = "z8carbine-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/batrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/batrifle_magout.ogg'
	fire_sound = 'sound/warhammer/gunshot/auto3.ogg'
	firemodes = list(
		list(mode_name="semi auto",       burst=1,    fire_delay=3.3,    move_delay=null, use_launcher=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3,    fire_delay=3.3, move_delay=6,    use_launcher=null, one_hand_penalty=9, burst_accuracy=list(0,-1,-1), dispersion=list(0.0, 0.6, 1.0)),
		list(mode_name="fire grenades",  burst=null, fire_delay=3.3, move_delay=null, use_launcher=1,    one_hand_penalty=10, burst_accuracy=null, dispersion=null)
		)

	var/use_launcher = 0

	///Determines if bullpup spawns with launcher, used in Initialize()
	var/has_launcher = TRUE
	var/obj/item/gun/launcher/grenade/underslung/launcher

/obj/item/gun/projectile/automatic/bullpup_rifle/Initialize()
	. = ..()
	if (has_launcher)
		launcher = new(src)


/obj/item/gun/projectile/automatic/bullpup_rifle/use_tool(obj/item/tool, mob/user, list/click_params)
	// Grenade - Load launcher
	if (istype(tool, /obj/item/grenade) && launcher)
		launcher.load(tool, user)
		return TRUE

	return ..()

/obj/item/gun/projectile/automatic/bullpup_rifle/toggle_safety(mob/user)
	..()
	if(launcher)
		launcher.safety_state = safety_state //Set the launcher's safety to be equivalent to the bullpup's.

/obj/item/gun/projectile/automatic/bullpup_rifle/attack_hand(mob/user)
	if(user.get_inactive_hand() == src && launcher && use_launcher)
		launcher.unload(user)
	else
		..()

/obj/item/gun/projectile/automatic/bullpup_rifle/Fire(atom/target, mob/living/user, params, pointblank=0, reflex=0)
	if(launcher && use_launcher)
		launcher.Fire(target, user, params, pointblank, reflex)
		if(!launcher.chambered)
			switch_firemodes() //switch back automatically
	else
		..()

/obj/item/gun/projectile/automatic/bullpup_rifle/on_update_icon()
	..()
	if(ammo_magazine)
		if(length(ammo_magazine.stored_ammo))
			icon_state = "carbine-loaded"
		else
			icon_state = "carbine-empty"
	else
		icon_state = "carbine"

/obj/item/gun/projectile/automatic/bullpup_rifle/examine(mob/user)
	. = ..()
	if(!launcher)
		return
	if(launcher.chambered)
		to_chat(user, "\The [launcher] has \a [launcher.chambered] loaded.")
	else
		to_chat(user, "\The [launcher] is empty.")

/obj/item/gun/projectile/automatic/bullpup_rifle/light
	name = "light bullpup autogun"
	desc = "The Z9 Pitbull is the modern answer to violence's question. It has been given a blued finish with a Sol yellow stripe for easy identification of its owner. It's slightly more accurate than its larger cousin, the Z8."
	icon = 'icons/obj/guns/bullpup_rifle_light.dmi'
	item_state = "z9carbine"
	magazine_type = /obj/item/ammo_magazine/autogun
	one_hand_penalty = 3 //Slightly lighter than the Z8. Still don't try it.
	bulk = GUN_BULK_LIGHT_RIFLE
	has_launcher = FALSE
	wielded_item_state = "z9carbine-wielded"
	firemodes = list( //Two round bursts. More accurate than the Z8 due to less maximum dispersion. More delay between shots, however, so slower.
		list(mode_name="semi auto",       burst=1,    fire_delay=3,    move_delay=null, use_launcher=null, one_hand_penalty=6, burst_accuracy=null, dispersion=null),
		list(mode_name="2-round bursts", burst=2,    fire_delay=3, move_delay=6,    use_launcher=null, one_hand_penalty=7, burst_accuracy=list(0,-1), dispersion=list(0.0, 0.6))
		)

/obj/item/gun/projectile/automatic/l6_saw
	name = "light stubber"
	desc = "An unbranded stubber, based off a design made long ago."
	icon = 'icons/obj/guns/saw.dmi'
	icon_state = "l6closed50"
	item_state = "l6closedmag"
	wielded_item_state = "l6closed-wielded"
	w_class = ITEM_SIZE_HUGE
	bulk = 3
	force = 10
	slot_flags = 0
	burst_delay = 2
	caliber = CALIBER_AUTOGUN
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 1, TECH_ESOTERIC = 2)
	slot_flags = 0 //need sprites for SLOT_BACK
	ammo_type = /obj/item/ammo_casing/rifle
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/machinegun
	allowed_magazines = list(/obj/item/ammo_magazine/box/machinegun, /obj/item/ammo_magazine/autogun)
	one_hand_penalty = 4
	mag_insert_sound = 'sound/weapons/guns/interaction/lmg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/lmg_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/gunshot3.ogg'
	can_special_reload = FALSE

	//LMG, better sustained fire accuracy than assault rifles (comparable to SMG), higer move delay and one-handing penalty
	//No single-shot or 3-round-burst modes since using this weapon should come at a cost to flexibility.
	firemodes = list(
		list(mode_name="short bursts",	can_autofire=0, burst=5, fire_delay=3.7, move_delay=12, one_hand_penalty=8, burst_accuracy = list(0,-1,-1,-2,-2),          dispersion = list(0.6, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="long bursts",	can_autofire=0, burst=8, fire_delay=3.7, one_hand_penalty=12, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		list(mode_name="full auto",		can_autofire=1, burst=1, fire_delay=1, one_hand_penalty=12, burst_accuracy = list(0,-1,-1,-2,-2,-2,-3,-3), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

	var/cover_open = 0

/obj/item/gun/projectile/automatic/l6_saw/mag
	magazine_type = /obj/item/ammo_magazine/autogun

/obj/item/gun/projectile/automatic/l6_saw/special_check(mob/user)
	if(cover_open)
		to_chat(user, SPAN_WARNING("[src]'s cover is open! Close it before firing!"))
		return 0
	return ..()

/obj/item/gun/projectile/automatic/l6_saw/proc/toggle_cover(mob/user)
	cover_open = !cover_open
	to_chat(user, SPAN_NOTICE("You [cover_open ? "open" : "close"] [src]'s cover."))
	update_icon()
	user.update_inv_l_hand()
	user.update_inv_r_hand()

/obj/item/gun/projectile/automatic/l6_saw/attack_self(mob/user as mob)
	if(cover_open)
		toggle_cover(user) //close the cover
		update_icon()
		user.update_inv_l_hand()
		user.update_inv_r_hand()

	else
		return ..() //once closed, behave like normal

/obj/item/gun/projectile/automatic/l6_saw/attack_hand(mob/user as mob)
	if(!cover_open && user.get_inactive_hand() == src)
		toggle_cover(user) //open the cover
		update_icon()
		user.update_inv_l_hand()
		user.update_inv_r_hand()

	else
		return ..() //once open, behave like normal

/obj/item/gun/projectile/automatic/l6_saw/on_update_icon()
	..()
	if(istype(ammo_magazine, /obj/item/ammo_magazine/box))
		icon_state = "l6[cover_open ? "open" : "closed"][round(length(ammo_magazine.stored_ammo), 10)]"
		item_state = "l6[cover_open ? "open" : "closed"]"
		wielded_item_state = "l6[cover_open ? "open" : "closed"]-wielded"
	else if(ammo_magazine)
		icon_state = "l6[cover_open ? "open" : "closed"]mag"
		item_state = "l6[cover_open ? "open" : "closed"]mag"
		wielded_item_state = "l6[cover_open ? "open" : "closed"]mag-wielded"
	else
		icon_state = "l6[cover_open ? "open" : "closed"]-empty"
		item_state = "l6[cover_open ? "open" : "closed"]-empty"
		wielded_item_state = "l6[cover_open ? "open" : "closed"]-empty-wielded"

/obj/item/gun/projectile/automatic/l6_saw/load_ammo(obj/item/A, mob/user)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the cover to load that into [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/l6_saw/unload_ammo(mob/user, allow_dump=1)
	if(!cover_open)
		to_chat(user, SPAN_WARNING("You need to open the cover to unload [src]."))
		return
	..()

/obj/item/gun/projectile/automatic/battlerifle
	name = "battle rifle"
	desc = "The battle rifle hasn't changed much since its inception in the mid Pre-Heresy. Built to last in the toughest conditions, the select fire rifle is well reguarded as a dependable weapon."
	icon = 'icons/obj/guns/battlerifle.dmi'
	icon_state = "battlerifle"
	item_state = null
	w_class = ITEM_SIZE_HUGE
	force = 12
	caliber = CALIBER_AUTOGUN
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 1, TECH_ESOTERIC = 3)
	slot_flags = SLOT_BACK
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/autogun
	allowed_magazines = /obj/item/ammo_magazine/autogun
	one_hand_penalty = 4
	accuracy_power = 9
	accuracy = 1
	bulk = GUN_BULK_HEAVY_RIFLE
	wielded_item_state = "battlerifle-wielded"
	mag_insert_sound = 'sound/weapons/guns/interaction/ltrifle_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/ltrifle_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/gunshot3.ogg'

	//Battle Rifle is only accurate in semi-automatic fire.
	firemodes = list(
		list(mode_name="semi auto",       burst=1, fire_delay=3.6,    move_delay=null, one_hand_penalty=8, burst_accuracy=null, dispersion=null),
		list(mode_name="full auto",		can_autofire=1, burst=1, fire_delay=1, one_hand_penalty=12, burst_accuracy = list(0,-1,-2,-3,-4,-4,-4,-4,-4), dispersion = list(1.0, 1.0, 1.0, 1.0, 1.2)),
		)

/obj/item/gun/projectile/automatic/battlerifle/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "battlerifle"
		wielded_item_state = "battlerifle-wielded"
	else
		icon_state = "battlerifle-empty"
		wielded_item_state = "battlerifle-wielded-empty"

/obj/item/gun/projectile/automatic/autocannon
	name = "Autocannon"
	desc = "A man-portable autocannon lacking any branding on it. It fires small 7mm projectiles at an obscene rate of fire. Six barrels of fun."
	icon = 'icons/obj/guns/minigun.dmi'
	icon_state = "minigun"
	item_state = "l6closedmag" /// Onmob is WIP sprite
	w_class = ITEM_SIZE_HUGE
	force = 15
	caliber = CALIBER_SLUG_SMALL
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_ESOTERIC = 3)
	slot_flags = 0
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/box/minigun
	allowed_magazines = /obj/item/ammo_magazine/box/minigun
	accuracy = 1
	one_hand_penalty = 5
	mag_insert_sound = 'sound/weapons/guns/interaction/lmg_magin.ogg'
	mag_remove_sound = 'sound/weapons/guns/interaction/lmg_magout.ogg'
	fire_sound = 'sound/weapons/gunshot/minigun.ogg'
	can_special_reload = FALSE

	firemodes = list(
		list(mode_name="full auto",		can_autofire=1, burst=1, fire_delay=2, move_delay=1, burst_accuracy = list(0,-1,-2,-3,-4,-4,-4,-4,-4), dispersion = list(1.0, 1.0, 2.0, 2.0, 2.5), burst_delay = 1),
		list(mode_name="long bursts",	can_autofire=0, burst=10, fire_delay=2, burst_accuracy = list(0,-1,-2,-3,-4,-8,-8,-16,-16), dispersion = list(1.0, 2.0, 3.0, 3.0, 4.0), burst_delay = 1)
		)

/obj/item/gun/projectile/automatic/autocannon/mounted
	name = "mounted autocannon"
	accuracy = 0 /// Less accurate than a full-sized autocannon and only fires in bursts, but has no one-hand penalty.
	one_hand_penalty = 0
	has_safety = FALSE
	auto_eject = TRUE
	auto_eject_sound = 'sound/weapons/smg_empty_alarm.ogg'

	firemodes = list(
		list(mode_name="long bursts",			can_autofire=0, burst=5, fire_delay=2, burst_accuracy = list(0,-1,-2,-3,-4,-4,-4,-4,-4), dispersion = list(1.0, 1.0, 2.0, 2.0, 2.5), burst_delay = 1),
		list(mode_name="longer bursts",		can_autofire=0, burst=10, fire_delay=2, burst_accuracy = list(0,-1,-2,-3,-4,-8,-8,-16,-16), dispersion = list(1.0, 2.0, 3.0, 3.0, 4.0), burst_delay = 1)
		)

/obj/item/gun/projectile/automatic/autocannon/mounted/load_ammo(obj/item/A, mob/user)
	var/obj/item/rig/rig = get_rig()
	if (istype(rig))
		if (!rig.offline && rig.suit_is_deployed())
			user.visible_message(SPAN_NOTICE("\The [user] begins the slow process of re-arming \The [src]."), range = 4)
			do_after(user, 10 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER)
			..()
		else
			to_chat(user, SPAN_DANGER("You can't reload your autocannon without deploying your hardsuit!"))
			return

/obj/item/gun/projectile/automatic/autocannon/mounted/unload_ammo(mob/user, allow_dump=0)
	var/obj/item/rig/rig = get_rig()
	if (istype(rig))
		if (!rig.offline && rig.suit_is_deployed())
			user.visible_message(SPAN_NOTICE("\The [user] begins ejecting the magazine from \The [src]."), range = 4)
			do_after(user, 2 SECONDS, src, DO_PUBLIC_UNIQUE | DO_BAR_OVER_USER)
			..()
		else
			to_chat(user, SPAN_DANGER("You can't unload your autocannon without deploying your hardsuit!"))
			return
