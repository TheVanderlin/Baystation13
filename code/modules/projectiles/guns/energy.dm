/obj/item/gun/energy
	name = "energy gun"
	desc = "A basic energy-based gun."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "energy"
	fire_sound = 'sound/weapons/Taser.ogg'
	fire_sound_text = "laser blast"
	accuracy = 1
	slowdown_general = 0.03
	slot_flags = SLOT_BELT|SLOT_HOLSTER

	var/obj/item/cell/power_supply //What type of power cell this uses. Currently used cell.
	var/charge_cost = 20 //How much energy is needed to fire.
	var/max_shots = 10 //Determines the capacity of the weapon's power cell. Specifying a cell_type overrides this value.
	var/cell_type = /obj/item/cell/device/high
	var/projectile_type = /obj/item/projectile/beam/practice
	var/ammotype = /obj/item/cell/device // Restrict powercell to only this type.
	var/modifystate
	var/charge_meter = 1	//if set, the icon state will be chosen based on the current charge
	var/disposable = FALSE //If set, this weapon cannot be recharged

	//self-recharging
	var/self_recharge = 0	//if set, the weapon will recharge itself
	var/use_external_power = 0 //if set, the weapon will look for an external power source to draw from, otherwise it recharges magically
	var/recharge_time = 9
	var/charge_tick = 0
	calibration_penalty = 2

/obj/item/gun/energy/switch_firemodes()
	. = ..()
	if(.)
		update_icon()

/obj/item/gun/energy/emp_act(severity)
	..()
	update_icon()

/obj/item/gun/energy/Initialize()
	. = ..()
	if(cell_type)
		power_supply = new cell_type(src)
	else
		power_supply = new /obj/item/cell/device/variable(src, max_shots*charge_cost)
	update_icon()

/obj/item/gun/energy/get_cell()
	return power_supply

/obj/item/gun/energy/Process()
	if(self_recharge) //Every [recharge_time] ticks, recharge a shot for the cyborg
		charge_tick++
		if(charge_tick < recharge_time) return 0
		charge_tick = 0
	if (!power_supply || power_supply.charge >= power_supply.maxcharge)
		return PROCESS_KILL
	if (++charge_tick < recharge_time)
		return

	var/obj/item/cell/external = get_external_power_supply()
	charge_tick = 0
	if (use_external_power && (!external || !external.use(charge_cost))) //Take power from the borg to recharge.
		return

	power_supply.give(charge_cost) //... to recharge the shot
	update_icon()


/obj/item/gun/energy/consume_next_projectile()
	if(!power_supply) return null
	if(!ispath(projectile_type)) return null
	if(!power_supply.checked_use(charge_cost)) return null
	if(calibrated == 0 && prob(calibration_penalty)) // Check if uncalibrated
		src.visible_message(SPAN_DANGER("\The [src] energy coils overheat and fails to fire!"))
		playsound(src, 'sound/warhammer/ds/detonator_fire.ogg', 40, 1)
		calibration_penalty += 5
		return null
	return new projectile_type(src)

/obj/item/gun/energy/proc/get_external_power_supply()
	if(isrobot(loc) || istype(loc, /obj/item/rig_module) || istype(loc, /obj/item/mech_equipment))
		return loc.get_cell()

/obj/item/gun/energy/examine(mob/user)
	. = ..(user)
	if(!power_supply)
		to_chat(user, "Seems like it's dead.")
		return
	if (charge_cost == 0)
		to_chat(user, "This gun seems to have an unlimited number of shots.")
	else
		var/shots_remaining = round(power_supply.charge / charge_cost)
		to_chat(user, "Has [shots_remaining] shot\s remaining.")

/obj/item/gun/energy/on_update_icon()
	..()
	if(charge_meter && power_supply)
		var/ratio = power_supply.percent()

		//make sure that rounding down will not give us the empty state even if we have charge for a shot left.
		// Also make sure cells adminbussed with higher-than-max charge don't break sprites
		if(power_supply.charge < charge_cost)
			ratio = 0
		else
			ratio = clamp(round(ratio, 25), 25, 100)

		if(modifystate)
			icon_state = "[modifystate][ratio]"
		else
			icon_state = "[initial(icon_state)][ratio]"
		update_held_icon()

/obj/item/gun/energy/attack_hand(mob/user as mob)
	if (user.get_inactive_hand() == src)
		if (power_supply)
			playsound(src, 'sound/weapons/guns/interaction/pistol_magout.ogg', 70)
			power_supply.update_icon()
			user.put_in_hands(power_supply)
			power_supply = null
			to_chat(user, SPAN_NOTICE("You remove the cell from [src]."))
			update_icon()
			return TRUE
	return ..()

/obj/item/gun/energy/use_tool(obj/item/I, mob/living/user, list/click_params)
	if(istype(I, /obj/item/cell/device))
		if(!istype(I, ammotype))
			to_chat(user, "<span class='warning'>[src] can't use that power cell.</span>") // Restrict powercell to only this type.
			return
		if(!power_supply && user.unEquip(I)) // The powercell currently in the weapon.
			I.forceMove(src)
			power_supply = I
			playsound(src, 'sound/weapons/guns/interaction/pistol_magin.ogg', 70)
			to_chat(user, SPAN_NOTICE("You install \the cell into \the [src]."))
			update_icon()
			return TRUE
		else
			to_chat(user, SPAN_NOTICE("\The [src] already has a battery installed."))
	return ..()
