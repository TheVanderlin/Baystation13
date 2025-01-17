GLOBAL_DATUM_INIT(provocateurs, /datum/antagonist/provocateur, new)

/datum/antagonist/provocateur
	id = MODE_MISC_AGITATOR
	role_text = "Deuteragonist"
	role_text_plural = "Deuteragonists"
	antaghud_indicator = "hud_traitor"
	flags = ANTAG_RANDOM_EXCEPTED
	antag_text = "..."
	welcome_text = "You are a character within the timeline of 41st millenium."
	blacklisted_jobs = list()
	min_player_age = 0
	skill_setter = null

	var/antag_text_updated
	no_prior_faction = TRUE

/datum/antagonist/provocateur/get_antag_text(mob/recipient)
	if (!antag_text_updated)
		antag_text = replacetext(antag_text, "%WORLD_NAME%", station_name())
		antag_text_updated = TRUE
	return antag_text
