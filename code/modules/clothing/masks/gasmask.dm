/obj/item/clothing/mask/gas
	name = "gas mask"
	desc = "A face-covering mask that can be connected to an air supply. Filters harmful gases from the air."
	icon_state = "fullgas"
	item_state = "fullgas"
	item_flags = ITEM_FLAG_BLOCK_GAS_SMOKE_EFFECT | ITEM_FLAG_AIRTIGHT
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	body_parts_covered = FACE|EYES
	w_class = ITEM_SIZE_NORMAL
	gas_transfer_coefficient = 0.01
	permeability_coefficient = 0.01
	siemens_coefficient = 0.9
	armor = list(
		bio = ARMOR_BIO_STRONG
		)
	filtered_gases = list(
		GAS_PHORON,
		GAS_N2O,
		GAS_CHLORINE,
		GAS_AMMONIA,
		GAS_CO,
		GAS_METHYL_BROMIDE,
		GAS_METHANE
	)
	var/clogged
	var/filter_water
	var/gas_filter_strength = 1			//For gas mask filters


/obj/item/clothing/mask/gas/examine(mob/user)
	. = ..()
	if(clogged)
		to_chat(user, SPAN_WARNING("The intakes are clogged with [clogged]! You should clean it..."))

/obj/item/clothing/mask/gas/filters_water()
	return (filter_water && !clogged)

/obj/item/clothing/mask/gas/attack_self(mob/user)
	if(clogged)
		user.visible_message(SPAN_NOTICE("\The [user] begins unclogging the intakes of \the [src]."))
		if(do_after(user, 10 SECONDS, src, DO_PUBLIC_UNIQUE) && clogged)
			user.visible_message(SPAN_NOTICE("\The [user] has unclogged \the [src]."))
			clogged = FALSE
		return
	. = ..()

/obj/item/clothing/mask/gas/filter_air(datum/gas_mixture/air)
	var/datum/gas_mixture/filtered = new

	for(var/g in filtered_gases)
		if(air.gas[g])
			filtered.gas[g] = air.gas[g] * gas_filter_strength
			air.gas[g] -= filtered.gas[g]

	air.update_values()
	filtered.update_values()

	return filtered

/obj/item/clothing/mask/gas/void
	name = "gas mask"
	desc = "A face-covering mask that can be connected to an air supply. Filters harmful gases from the air. This one has additional filters to remove radioactive particles."
	icon_state = "gas_mask"
	item_state = "gas_mask"
	body_parts_covered = FACE|EYES

/obj/item/clothing/mask/gas/budget
	name = "gas mask"
	desc = "A face-covering mask that can be connected to an air supply. Filters harmful gases from the air. This one looks pretty dodgy. Are you sure it works?"
	icon_state = "gas_alt"
	item_state = "gas_alt"
	body_parts_covered = FACE|EYES

/obj/item/clothing/mask/gas/swat
	name = "\improper SWAT mask"
	desc = "A close-fitting tactical mask that can be connected to an air supply."
	icon_state = "swat"
	item_state = "swat"
	siemens_coefficient = 0.7
	body_parts_covered = FACE|EYES

/obj/item/clothing/mask/gas/syndicate
	name = "tactical mask"
	desc = "A close-fitting tactical mask that can be connected to an air supply."
	icon_state = "swat"
	item_state = "swat"
	siemens_coefficient = 0.7

/obj/item/clothing/mask/gas/death_commando
	name = "\improper Death Commando mask"
	desc = "A grim tactical mask worn by the fictional Death Commandos, elites of the also fictional Space Heretic. Saturdays at 10!"
	icon_state = "death"
	item_state = "death"
	siemens_coefficient = 0.2

/obj/item/clothing/mask/gas/cyborg
	name = "cyborg visor"
	desc = "Beep boop!"
	icon_state = "death"
	item_state = "death"

//Plague Dr suit can be found in clothing/suits/bio.dm
/obj/item/clothing/mask/gas/plaguedoctor
	name = "plague doctor mask"
	desc = "A modernised version of the classic design, this mask will not only filter out phoron but it can also be connected to an air supply."
	icon_state = "plaguedoctor"
	item_state = "plaguedoctor"
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/mask/gas/clown_hat
	name = "clown wig and mask"
	desc = "A true prankster's facial attire. A clown is incomplete without their wig and mask."
	icon_state = "clown"
	item_state = "clown"

/obj/item/clothing/mask/gas/sexyclown
	name = "sexy-clown wig and mask"
	desc = "A feminine clown mask for the dabbling crossdressers or female entertainers."
	icon_state = "sexyclown"
	item_state = "sexyclown"

/obj/item/clothing/mask/gas/mime
	name = "mime mask"
	desc = "The traditional mime's mask. It has an eerie facial posture."
	icon_state = "mime"
	item_state = "mime"

/obj/item/clothing/mask/gas/monkeymask
	name = "monkey mask"
	desc = "A mask used when acting as a monkey."
	icon_state = "monkeymask"
	item_state = "monkeymask"
	body_parts_covered = HEAD|FACE|EYES

/obj/item/clothing/mask/gas/sexymime
	name = "sexy mime mask"
	desc = "A traditional female mime's mask."
	icon_state = "sexymime"
	item_state = "sexymime"

/obj/item/clothing/mask/gas/owl_mask
	name = "owl mask"
	desc = "Twoooo!"
	icon_state = "owl"
	item_state = "owl"
	body_parts_covered = HEAD|FACE|EYES

//Xenos Unique Masks

/obj/item/clothing/mask/gas/vox
	name = "vox breathing mask"
	desc = "A small oxygen filter for use by Vox."
	icon_state = "respirator"
	item_state = "respirator"
	flags_inv = 0
	body_parts_covered = 0
	item_flags = ITEM_FLAG_BLOCK_GAS_SMOKE_EFFECT | ITEM_FLAG_AIRTIGHT | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/mask/gas/swat/vox
	name = "alien mask"
	desc = "Clearly not designed for a human face."
	icon_state = "voxswat"
	item_state = "voxswat"
	body_parts_covered = EYES
	species_restricted = list(SPECIES_VOX)
	filtered_gases = list(
		GAS_OXYGEN,
		GAS_PHORON,
		GAS_N2O,
		GAS_CHLORINE,
		GAS_AMMONIA,
		GAS_CO,
		GAS_METHYL_BROMIDE,
		GAS_METHANE
		)
	item_flags = ITEM_FLAG_BLOCK_GAS_SMOKE_EFFECT | ITEM_FLAG_AIRTIGHT | ITEM_FLAG_INVALID_FOR_CHAMELEON

/obj/item/clothing/mask/gas/aquabreather
	name = "aquabreather"
	desc = "A compact CO2 scrubber and breathing apparatus that draws oxygen from water."
	icon_state = "halfgas"
	filter_water = TRUE
	body_parts_covered = FACE
	w_class = 2


// WARHAMMER
/obj/item/clothing/mask/masquerade
	name = "masquerade mask"
	desc = "Every face has a different shade..."
	icon_state = "slaanesh"
	item_state = "slaanesh"
	body_parts_covered = FACE
	flags_inv = HIDEEARS | HIDEFACE
	w_class = ITEM_SIZE_SMALL

/obj/item/clothing/mask/gas/security/bloodpact
	name = "grotesque mask"
	desc = "The scars of your past become a haze of rage and frenzy as you stare into the mask."
	icon_state = "Grotesque_Mask"
	item_state = "Grotesque_Mask"

/obj/item/clothing/mask/gas/security/agent
	name = "inquisition gas mask"
	icon_state = "agent_mask"
	item_state = "agent_mask"
	siemens_coefficient = 0.7
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	flash_protection = FLASH_PROTECTION_MAJOR
	unacidable = 1
	w_class = ITEM_SIZE_SMALL
	body_parts_covered = HEAD|FACE|EYES


/obj/item/clothing/mask/gas/half
	name = "face mask"
	desc = "A compact, durable gas mask that can be connected to an air supply."
	icon_state = "halfgas"
	item_state = "halfgas"
	siemens_coefficient = 0.7
	body_parts_covered = HEAD|FACE|EYES
	w_class = ITEM_SIZE_SMALL
	down_gas_transfer_coefficient = 1
	down_body_parts_covered = null
	down_item_flags = null
	down_icon_state = "halfgasdown"
	pull_mask = TRUE


/obj/item/clothing/mask/gas/explorer
	name = "salvage miner mask"
	desc = "Often worn on salvage scavengers to protect their precious lungs from harmful gasses."
	icon_state = "gas_mining"
	item_state = "gas_mining"
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE

/obj/item/clothing/mask/gas/prac_mask
	name = "practioner mask"
	desc = "Keeps all that blood off your face."
	icon_state = "prac_mask"
	item_state = "prac_mask"
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	body_parts_covered = FACE|EYES|HEAD
///ASTRA MILITARUM STUFF

/obj/item/clothing/mask/gas/techpriest
	name = "mechanized visage"
	desc = "A half augmented mechanical visage, doesn't make wonders for your charisma, but does help you survive and thrive."
	icon_state = "techpriest"
	item_state = "techpriest"
	down_icon_state = "techpriest"
	flash_protection = FLASH_PROTECTION_MAJOR
	siemens_coefficient = 0.7
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	body_parts_covered = FACE|EYES|HEAD
	canremove = 1
	unacidable = 1
	pull_mask = 1

/obj/item/clothing/mask/gas/techpriest/skitarius
	name = "mechanized visage"
	desc = "Staring into the metallic visage its hard to believe this being is human..."
	icon_state = "techpriest"
	item_state = "skitshoes"
	flash_protection = FLASH_PROTECTION_MAJOR
	siemens_coefficient = 0.7
	canremove = 1
	unacidable = 1

/obj/item/clothing/mask/gas/techpriest/magos
	icon_state = "magos"
	item_state = "magos"


/obj/item/clothing/mask/gas/half/cadianrespirator
	name = "mark IXc rebreather"
	desc = "A Cadian-pattern rebreather for protection against common toxic gasses, allowing Guardsmen limited operation in airless environments."
	icon_state = "ig_halfgas"
	item_state = "ig_halfgas"
	flags_inv = HIDEFACE
	pull_mask = 0

/obj/item/clothing/mask/gas/half/cadianrespirator/rt
	name = "archeotech respirator"
	desc = "A metal filtration system designed to filter common toxic gases with high efficiency."
	icon_state = "rtm"
	item_state = "rtm"
	flags_inv = HIDEFACE

/obj/item/clothing/mask/gas/half/cadianrespirator/inquis
	name = "filtration mask"
	desc = "A Cadian-pattern rebreather made for protection against common toxic gasses, allowing Guardsmen limited operation in airless environments."
	icon_state = "Stormtrooper Gasmask"
	item_state = "Stormtrooper Gasmask"

/obj/item/clothing/mask/gas/krieg
	name = "mark IXb gas mask"
	desc = "Designed specifically to fit with the mark IX helmet issued to Krieg Guardsmen."
	icon_state = "kriegmask"
	item_state = "kriegmask"
	body_parts_covered = FACE|EYES|HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	unacidable = 1 //acid proof bitch

/obj/item/clothing/mask/gas/maccabian
	name = "maccabian metal mask"
	desc = "A mask designed specifically to integrate with the mark IX helmet issued to Maccabian Guardsmen."
	icon_state = "M_Mask-Icon"
	item_state = "M_Mask-Icon"
	body_parts_covered = FACE|EYES|HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	unacidable = 1 //acid proof bitch

/obj/item/clothing/mask/gas/maccabian/sergeant
	name = "maccabian metal mask"
	desc = "A mask designed specifically to integrate with the mark IX helmet issued to Maccabian sergeants."
	icon_state = "M_SMask-Icon"
	item_state = "M_SMask-Icon"
	body_parts_covered = FACE|EYES|HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE
	unacidable = 1 //acid proof bitch

/obj/item/clothing/mask/gas/krieg/grenadier
	name = "mark IXc gas mask"
	desc = "Designed for Krieg Grenadiers with additional armor protection, fitting seamlessly with the mark IX helmet."
	icon_state = "grenmask"
	item_state = "grenmask"
	body_parts_covered = FACE|EYES|HEAD

/obj/item/clothing/mask/gas/krieg/medicae
	name = "mark IXb/M gas mask"
	desc = "A specialized version for Krieg Combat Medicae, fitting with the mark IX helmet."
	icon_state = "mkriegmask"
	item_state = "mkriegmask"
	body_parts_covered = FACE|EYES|HEAD

/obj/item/clothing/mask/gas/commissar
	name = "mark IXb/C gas mask"
	desc = "The same pattern gas mask as issued to Krieg Guardsmen, with a slightly different hue for Commissars."
	icon_state = "commask"
	item_state = "commask"
	body_parts_covered = FACE|EYES|HEAD
	flags_inv = HIDEEARS|HIDEEYES|HIDEFACE|BLOCKHAIR
	unacidable = 1 //acid proof

/obj/item/clothing/mask/gas/vindicare
	name = "vindicare mask"
	desc = "A menacing face-covering mask that can be connected to an air supply, filtering harmful gases."
	icon_state = "s-ninja"
	item_state = "s-ninja"
	gas_transfer_coefficient = 0.001
	permeability_coefficient = 0.001
	siemens_coefficient = 0
	body_parts_covered = FACE|EYES|HEAD
	unacidable = 1
	canremove = 0

/obj/item/clothing/mask/gas/necron
	name = "necron face"
	desc = "A terrifying visage, crafted from necrodermis, from an ancient era of war and death."
	icon_state = null
	item_state = null
	gas_transfer_coefficient = 0
	permeability_coefficient = 0
	siemens_coefficient = 0
	body_parts_covered = FACE|EYES|HEAD
	unacidable = 1
	canremove = 0
