//Makes sure we don't get any merchant antags as a balance concern. Can also be used for future Torch specific antag restrictions.
/datum/antagonist/genestealer
	blacklisted_jobs = list()
	restricted_jobs = list()

/datum/antagonist/godcultist
	blacklisted_jobs = list()
	restricted_jobs = list()

/datum/antagonist/cultist
	blacklisted_jobs = list()
	restricted_jobs = list()

/datum/antagonist/loyalists
	blacklisted_jobs = list()
	restricted_jobs = list()

/datum/antagonist/revolutionary
	blacklisted_jobs = list()
	restricted_jobs = list()

/datum/antagonist/traitor
	blacklisted_jobs = list()
	restricted_jobs = list()

/datum/antagonist/ert
	var/sic //Second-In-Command
	leader_welcome_text = "As leader of the Emergency Response Team, you are part of the Sol Central Government Fleet, and are there with the intention of restoring normal operation to the vessel or the safe evacuation of crew and passengers. You should, to this effect, aid the Commanding Officer or ranking officer aboard in their endeavours to achieve this."

/datum/antagonist/ert/equip(mob/living/carbon/human/player)

	if(!..())
		return 0

	player.char_branch = GLOB.mil_branches.get_branch("Fleet")
	if(player.mind == leader)
		player.char_rank = GLOB.mil_branches.get_rank("Fleet", "Lieutenant")
	else if(!sic)
		sic = player.mind
		player.char_rank = GLOB.mil_branches.get_rank("Fleet", "Chief Petty Officer")
	else if(prob(50))
		player.char_rank = GLOB.mil_branches.get_rank("Fleet", "Petty Officer Second Class")
	else
		player.char_rank = GLOB.mil_branches.get_rank("Fleet", "Petty Officer First Class")

	var/singleton/hierarchy/outfit/ert_outfit = outfit_by_type((player.mind == leader) ? /singleton/hierarchy/outfit/job/torch/ert/leader : /singleton/hierarchy/outfit/job/torch/ert)
	ert_outfit.equip(player)

	if(player.char_rank && player.char_rank.accessory)
		for(var/accessory_path in player.char_rank.accessory)
			var/list/accessory_data = player.char_rank.accessory[accessory_path]
			if(islist(accessory_data))
				var/amt = accessory_data[1]
				var/list/accessory_args = accessory_data.Copy()
				accessory_args[1] = src
				for(var/i in 1 to amt)
					player.equip_to_slot_or_del(new accessory_path(arglist(accessory_args)), slot_tie)
			else
				for(var/i in 1 to (isnull(accessory_data)? 1 : accessory_data))
					player.equip_to_slot_or_del(new accessory_path(src), slot_tie)

	return 1
