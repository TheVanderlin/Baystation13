var/global/datum/announcement/minor/captain_announcement = new(do_newscast = 1)

/datum/job/rogue_trader
	title = "Rogue Trader"
	department = "Command"
	head_position = 1
	department_flag = COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "the God Emperor and your own ambition."
	selection_color = "#1d1d4f"
	req_admin_notify = 1
	access = list()
	minimal_player_age = 14
	economic_power = 20

	ideal_character_age = 70 // Old geezer captains ftw
	outfit_type = /singleton/hierarchy/outfit/job/captain

/datum/job/rogue_trader/equip(mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(src)

/datum/job/rogue_trader/get_access()
	return get_all_station_access()

/datum/job/seneschal
	title = "Head of Personnel"
	head_position = 1
	department_flag = COM|CIV

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#2f2f7f"
	req_admin_notify = 1
	minimal_player_age = 14
	economic_power = 10
	ideal_character_age = 50
	access = list(access_restricted, access_sec_doors, access_brig, access_forensics_lockers, access_heads,
			            access_medical, access_mechanicus, access_change_ids, access_ai_upload, access_eva, access_bridge,
			            access_all_personal_lockers, access_maint_tunnels, access_janitor, access_construction, access_medical_command,
			            access_crematorium, access_kitchen, access_cargo, access_cargo_bot, access_mailsorting, access_qm, access_hydroponics, access_lawyer,
			            access_chapel_office, access_dauntless, access_research, access_mining, access_heads_vault, access_mining_station,
			            access_hop, access_RC_announce, access_keycard_auth, access_gateway, access_research_storage)
	outfit_type = /singleton/hierarchy/outfit/job/hop
