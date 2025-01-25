/singleton/hierarchy/outfit/spec_op_officer
	name = "Spec Ops - Officer"
	uniform = /obj/item/clothing/under/syndicate/combat
	suit = /obj/item/clothing/suit/armor/swat/officer
	l_ear = /obj/item/device/radio/headset/ert
	glasses = /obj/item/clothing/glasses/thermal/plain/eyepatch
	mask = /obj/item/clothing/mask/smokable/cigarette/cigar/havana
	head = /obj/item/clothing/head/beret/deathsquad
	belt = /obj/item/gun/energy/pulse_rifle/pistol
	back = /obj/item/storage/backpack/satchel
	shoes = /obj/item/clothing/shoes/combat
	gloves = /obj/item/clothing/gloves/thick/combat

	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/centcom/ERT)
	id_desc = "Special operations ID."
	id_pda_assignment = "Special Operations Officer"

/singleton/hierarchy/outfit/spec_op_officer/space
	name = "Spec Ops - Officer in space"
	suit = /obj/item/clothing/suit/space/void/swat
	back = /obj/item/tank/jetpack/oxygen
	mask = /obj/item/clothing/mask/gas/swat

	flags = OUTFIT_HAS_JETPACK|OUTFIT_RESET_EQUIPMENT

/singleton/hierarchy/outfit/ert
	name = "Spec Ops - Emergency response team"
	uniform = /obj/item/clothing/under/ert
	shoes = /obj/item/clothing/shoes/swat
	gloves = /obj/item/clothing/gloves/thick/swat
	l_ear = /obj/item/device/radio/headset/ert
	belt = /obj/item/gun/energy/gun
	glasses = /obj/item/clothing/glasses/sunglasses
	back = /obj/item/storage/backpack/satchel

	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/centcom/ERT)

/singleton/hierarchy/outfit/death_command
	name = "Spec Ops - Death commando"

/singleton/hierarchy/outfit/death_command/equip(mob/living/carbon/human/H, rank, assignment, equip_adjustments)
	GLOB.deathsquad.equip(H)
	return 1

/singleton/hierarchy/outfit/syndicate_command
	name = "Spec Ops - Heretic commando"

/singleton/hierarchy/outfit/syndicate_command/equip(mob/living/carbon/human/H, rank, assignment, equip_adjustments)
	GLOB.commandos.equip(H)
	return 1

/singleton/hierarchy/outfit/mercenary
	name = "Spec Ops - Mercenary"
	uniform = /obj/item/clothing/under/tactical
	suit = /obj/item/clothing/suit/armor/grim/cult/militia
	mask = /obj/item/clothing/mask/gas/prac_mask
	head = /obj/item/clothing/head/helmet/flak/chaos/renegade
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	glasses = /obj/item/clothing/glasses/sunglasses

	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/syndicate)
	id_pda_assignment = "Mercenary"

	flags = OUTFIT_HAS_BACKPACK|OUTFIT_RESET_EQUIPMENT

/singleton/hierarchy/outfit/mercenary/infardi
	name = "Infardi Militia"
	suit = /obj/item/clothing/suit/armor/grim/cult/militia
	mask = /obj/item/clothing/mask/gas/prac_mask
	head = /obj/item/clothing/head/helmet/flak/chaos/renegade
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	id_desc = "Infardi"

/singleton/hierarchy/outfit/mercenary/infardi/trooper
	name = "Infardi Trooper"
	suit = /obj/item/clothing/suit/armor/grim/cult/sekite/broken
	mask = /obj/item/clothing/mask/gas/prac_mask
	head = /obj/item/clothing/head/helmet/flak/chaos/sekite
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	l_pocket = /obj/item/tank/oxygen_emergency
	id_desc = "Infardi Trooper"

/singleton/hierarchy/outfit/mercenary/bloodpact
	name = "Bloodpact Soldier"
	suit = /obj/item/clothing/suit/armor/grim/cult/bloodpact/broken
	mask = /obj/item/clothing/mask/gas/security/bloodpact
	head = /obj/item/clothing/head/helmet/flak/chaos/bloodpact
	shoes = /obj/item/clothing/shoes/jackboots/noble
	id_desc = "Infardi"

/singleton/hierarchy/outfit/mercenary/bloodpact/commando
	name = "Bloodpact Commando"
	suit = /obj/item/clothing/suit/armor/grim/cult/bloodpact
	mask = /obj/item/clothing/mask/gas/security/bloodpact
	head = /obj/item/clothing/head/helmet/flak/chaos/bloodpact
	shoes = /obj/item/clothing/shoes/jackboots/noble
	l_pocket = /obj/item/tank/oxygen_emergency

/singleton/hierarchy/outfit/foundation
	name = "Cuchulain Foundation Agent"
	glasses =  /obj/item/clothing/glasses/sunglasses
	uniform =  /obj/item/clothing/under/suit_jacket/charcoal
	shoes =    /obj/item/clothing/shoes/black
	l_hand =   /obj/item/storage/briefcase/foundation
	l_ear =    /obj/item/device/radio/headset/foundation
	holster =  /obj/item/clothing/accessory/storage/holster/armpit
	id_slot =  slot_wear_id
