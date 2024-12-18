/datum/job/guard_captain
	title = "Head of Security"
	head_position = 1
	department = "Security"
	department_flag = SEC|COM

	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#8e2929"
	req_admin_notify = 1
	economic_power = 10
	access = list(access_restricted, access_eva, access_sec_doors, access_brig, access_restricted_command, access_heads,
			            access_forensics_lockers, access_medical_command, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_mechanicus, access_mining, access_medical, access_construction, access_mailsorting,
			            access_bridge, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_player_age = 14
	outfit_type = /singleton/hierarchy/outfit/job/security/hos

/datum/job/guard_captain/equip(mob/living/carbon/human/H)
	. = ..()
	if(.)
		H.implant_loyalty(H)

/datum/job/enforcer_sergeant
	title = "Warden"
	department = "Security"
	department_flag = SEC

	total_positions = 1
	spawn_positions = 1
	supervisors = "the head of security"
	selection_color = "#601c1c"
	economic_power = 5
	access = list(access_restricted, access_eva, access_sec_doors, access_brig, access_restricted_command, access_maint_tunnels, access_medical_command, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /singleton/hierarchy/outfit/job/security/warden

/datum/job/guardsman
	title = "Detective"
	department = "Security"
	department_flag = SEC
	total_positions = 2
	spawn_positions = 2
	supervisors = "the head of security"
	selection_color = "#601c1c"
	alt_titles = list("Forensic Technician" = /singleton/hierarchy/outfit/job/security/detective/forensic)
	economic_power = 5
	access = list(access_restricted, access_sec_doors, access_forensics_lockers, access_medical_command, access_maint_tunnels)
	minimal_player_age = 7
	outfit_type = /singleton/hierarchy/outfit/job/security/detective

/datum/job/security
	title = "Security Officer"
	department = "Security"
	department_flag = SEC

	total_positions = 4
	spawn_positions = 4
	supervisors = "the head of security"
	selection_color = "#601c1c"
	alt_titles = list("Junior Officer")
	economic_power = 4
	access = list(access_restricted, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_medical_command, access_external_airlocks)
	minimal_player_age = 7
	outfit_type = /singleton/hierarchy/outfit/job/security/officer
