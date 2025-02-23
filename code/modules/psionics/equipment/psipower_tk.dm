/obj/item/psychic_power/telekinesis
	name = "telekinetic grip"
	maintain_cost = 6
	icon_state = "telekinesis"
	var/atom/movable/focus

/obj/item/psychic_power/telekinesis/Destroy()
	focus = null
	. = ..()

/obj/item/psychic_power/telekinesis/Process()
	if(!focus || !istype(focus.loc, /turf) || get_dist(get_turf(focus), get_turf(owner)) > owner.psi.get_rank(PSI_TELEKINESIS))
		owner.drop_from_inventory(src)
		return
	. = ..()

/obj/item/psychic_power/telekinesis/proc/set_focus(atom/movable/_focus)

	if(!_focus.simulated || !istype(_focus.loc, /turf))
		return FALSE

	var/check_paramount
	if(ismob(_focus))
		var/mob/victim = _focus
		check_paramount = (victim.mob_size >= MOB_MEDIUM)
	else if(isobj(_focus))
		var/obj/thing = _focus
		check_paramount = (thing.w_class >= 5)
	else
		return FALSE

	if(_focus.anchored || (check_paramount && owner.psi.get_rank(PSI_TELEKINESIS) < PSI_RANK_GAMMA))
		focus = _focus
		. = attack_self(owner)
		if(!.)
			to_chat(owner, SPAN_WARNING("\The [_focus] is too hefty for you to get a mind-grip on."))
		return FALSE

	focus = _focus
	ClearOverlays()
	var/image/I = image(icon = focus.icon, icon_state = focus.icon_state)
	I.color = focus.color
	I.CopyOverlays(focus)
	AddOverlays(I)
	return TRUE

/obj/item/psychic_power/telekinesis/attack_self(mob/user)
	user.visible_message(SPAN_NOTICE("\The [user] makes a strange gesture."))
	sparkle()
	return focus.do_simple_ranged_interaction(user)

/obj/item/psychic_power/telekinesis/afterattack(atom/target, mob/living/user, proximity)

	if(!target || !user || (isobj(target) && !isturf(target.loc)) || !user.psi || !user.psi.can_use() || !user.psi.spend_power(8))
		return

	user.setClickCooldown(DEFAULT_ATTACK_COOLDOWN * 2)
	user.psi.set_cooldown(8)

	var/user_psi_leech = user.do_psionics_check(5, user)
	if(user_psi_leech)
		to_chat(user, SPAN_WARNING("You reach for \the [target] but your telekinetic power is leeched away by \the [user_psi_leech]..."))
		return

	if(target.do_psionics_check(5, user))
		to_chat(user, SPAN_WARNING("Your telekinetic power skates over \the [target] but cannot get a grip..."))
		return

	var/distance = get_dist(get_turf(user), get_turf(focus ? focus : target))
	if(distance > user.psi.get_rank(PSI_TELEKINESIS))
		to_chat(user, SPAN_WARNING("Your telekinetic power won't reach that far."))
		return FALSE

	if(target == focus)
		attack_self(user)
	else
		user.visible_message(SPAN_DANGER("\The [user] gestures sharply!"))
		sparkle()
		if(!istype(target, /turf) && istype(focus,/obj/item) && target.Adjacent(focus))
			var/obj/item/I = focus
			var/resolved = I.resolve_attackby(target, user)
			if(!resolved && target && I)
				I.afterattack(target,user,1) // for splashing with beakers
		else
			if(!focus.anchored)
				var/user_rank = owner.psi.get_rank(PSI_TELEKINESIS)
				focus.throw_at(target, user_rank*2, user_rank*3, owner)
			sleep(1)
			sparkle()
		owner.drop_from_inventory(src)

/obj/item/psychic_power/telekinesis/proc/sparkle()
	set waitfor = 0
	if(focus)
		var/obj/overlay/O = new /obj/overlay(get_turf(focus))
		O.name = "sparkles"
		O.anchored = TRUE
		O.density = FALSE
		O.layer = FLY_LAYER
		O.set_dir(pick(GLOB.cardinal))
		O.icon = 'icons/effects/effects.dmi'
		O.icon_state = "nothing"
		flick("empdisable",O)
		sleep(5)
		qdel(O)
