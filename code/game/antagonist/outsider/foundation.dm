GLOBAL_DATUM_INIT(foundation_agents, /datum/antagonist/foundation, new)

/datum/antagonist/foundation
	id = MODE_FOUNDATION
	role_text = "Inquisitorial Agent"
	antag_indicator = "hudfoundation"
	role_text_plural = "Foundation Agents"
	welcome_text = "<span class='info'>You are a field agent of the Imperial Inquisition, \
	The secret police of the Imperium. You have a free pass to anywhere \
	you like, a pistol <b>Borrowed</b> from the Culexus temple, with anti-psi nullglass rounds, and a clear duty.</span>"
	antag_text = "You are an <b>anti</b> antagonist! Within the rules, \
		try to save the installation and its inhabitants from the ongoing crisis. \
		Try to make sure other players have <i>fun</i>! If you are confused or at a loss, always adminhelp, \
		and before taking extreme actions, please try to also contact the administration! \
		Think through your actions and make the roleplay immersive! <b>Please remember all \
		rules aside from those without explicit exceptions apply to Inquisitorial Agents.</b>"

	flags = ANTAG_OVERRIDE_JOB | ANTAG_OVERRIDE_MOB | ANTAG_CLEAR_EQUIPMENT | ANTAG_CHOOSE_NAME | ANTAG_SET_APPEARANCE
	antaghud_indicator = "hudfoundation"
	landmark_id = "Response Team"
	hard_cap = 3
	hard_cap_round = 3
	initial_spawn_req = 1
	initial_spawn_target = 2
	min_player_age = 14
	faction = "foundation"
	id_type = /obj/item/card/id/foundation

/datum/antagonist/foundation/equip(mob/living/carbon/human/player)

	if(!..())
		return 0

	player.set_psi_rank(PSI_BIOMANCY,     3, defer_update = TRUE)
	player.set_psi_rank(PSI_TELEPATHY,      3, defer_update = TRUE)
	player.set_psi_rank(PSI_TELEKINESIS, 3, defer_update = TRUE)
	player.set_psi_rank(PSI_PYROMANCY,   3, defer_update = TRUE)
	player.psi.update(TRUE)

	var/singleton/hierarchy/outfit/foundation = outfit_by_type(/singleton/hierarchy/outfit/foundation)
	foundation.equip(player)

	create_id("Foundation Agent", player)
