/singleton/hierarchy/outfit/standard_space_gear
	name = "Standard space gear"
	shoes = /obj/item/clothing/shoes/black
	head = /obj/item/clothing/head/helmet/space/fishbowl
	suit = /obj/item/clothing/suit/space
	uniform = /obj/item/clothing/under/color/grey
	back = /obj/item/tank/jetpack/oxygen
	mask = /obj/item/clothing/mask/breath
	flags = OUTFIT_HAS_JETPACK|OUTFIT_RESET_EQUIPMENT

/singleton/hierarchy/outfit/soviet_soldier
	name = "Soviet soldier"
	uniform = /obj/item/clothing/under/soviet
	shoes = /obj/item/clothing/shoes/combat
	head = /obj/item/clothing/head/ushanka
	gloves = /obj/item/clothing/gloves/thick/combat
	back = /obj/item/storage/backpack/satchel
	belt = /obj/item/gun/projectile/revolver

/singleton/hierarchy/outfit/soviet_soldier/admiral
	name = "Soviet admiral"
	head = /obj/item/clothing/head/hgpiratecap
	l_ear = /obj/item/device/radio/headset/heads/captain
	glasses = /obj/item/clothing/glasses/thermal/plain/eyepatch
	suit = /obj/item/clothing/suit/hgpirate

	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/centcom/station)
	id_pda_assignment = "Lord Captain"

/singleton/hierarchy/outfit/merchant
	name = "Merchant"
	shoes = /obj/item/clothing/shoes/black
	l_ear = /obj/item/device/radio/headset/merchant
	uniform = /obj/item/clothing/under/color/grey
	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/merchant)
	pda_slot = slot_r_store
	pda_type = /obj/item/modular_computer/pda //cause I like the look
	id_pda_assignment = "Merchant"

/singleton/hierarchy/outfit/merchant/vox
	name = "Merchant - Vox"
	shoes = /obj/item/clothing/shoes/jackboots/unathi
	uniform = /obj/item/clothing/under/vox/vox_robes
	suit = /obj/item/clothing/suit/armor/vox_scrap

/singleton/hierarchy/outfit/clown
	name = "Clown"
	shoes = /obj/item/clothing/shoes/clown_shoes
	mask = /obj/item/clothing/mask/gas/clown_hat
	l_ear =  /obj/item/device/radio/headset
	uniform = /obj/item/clothing/under/rank/clown
	l_pocket = /obj/item/bikehorn
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_RESET_EQUIPMENT

/singleton/hierarchy/outfit/clown/New()
	..()
	backpack_overrides[/singleton/backpack_outfit/backpack] = /obj/item/storage/backpack/clown

/singleton/hierarchy/outfit/vox_raider
	name = "Xenos Raider"
	uniform = /obj/item/clothing/under/vox/vox_casual
	shoes = /obj/item/clothing/shoes/magboots/vox
	l_ear = /obj/item/device/radio/headset/vox_raider
	belt = /obj/item/storage/belt/utility/full
	gloves = /obj/item/clothing/gloves/vox

	id_slot = slot_wear_id
	id_types = list(/obj/item/card/id/syndicate)
	id_pda_assignment = "Scavenger"
	flags = OUTFIT_HAS_BACKPACK|OUTFIT_RESET_EQUIPMENT


/singleton/hierarchy/outfit/anomalist
	name = "Anomalist"
	uniform = /obj/item/clothing/under/color/white
	shoes = /obj/item/clothing/shoes/white
	suit = /obj/item/clothing/suit/armor/grim/bio_suit/anomaly
	head = /obj/item/clothing/head/bio_hood/anomaly
