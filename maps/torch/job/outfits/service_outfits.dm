/singleton/hierarchy/outfit/job/torch/crew/service
	l_ear = /obj/item/device/radio/headset/headset_service
	hierarchy_type = /singleton/hierarchy/outfit/job/torch/crew/service
	l_pocket = /obj/item/device/flashlight/lantern

/singleton/hierarchy/outfit/job/torch/crew/service/crewman
	name = OUTFIT_JOB_NAME("Deck Scum")
	l_ear = /obj/item/device/radio/headset/headset_service
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	id_types = list(/obj/item/card/id/torch/crew)
	pda_type = /obj/item/modular_computer/pda
	l_pocket = /obj/item/device/flashlight/lantern
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/material/twohanded/ravenor/knife = 1)


/singleton/hierarchy/outfit/job/torch/crew/service/guest
	name = OUTFIT_JOB_NAME("Noble Guest")
	l_ear = /obj/item/device/radio/headset/headset_service
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	back = /obj/item/storage/backpack/satchel/leather
	id_types = list(/obj/item/card/id/torch/crew/supply/noble_guest)
	pda_type = /obj/item/modular_computer/pda
	l_pocket = /obj/item/device/flashlight/lantern

/singleton/hierarchy/outfit/job/torch/crew/service/magister
	name = OUTFIT_JOB_NAME("Tavern Keeper")
	l_ear = /obj/item/device/radio/headset/headset_service
	head = /obj/item/clothing/head/helmet/pilgrimcap/bighat
	suit = /obj/item/clothing/suit/armor/grim/pilgrim/magister
	uniform = /obj/item/clothing/under/service
	gloves = /obj/item/clothing/gloves/thick/leather
	suit_store = /obj/item/gun/projectile/shotgun/doublebarrel
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	back = /obj/item/storage/backpack/satchel/leather
	id_types = list(/obj/item/card/id/torch/crew/service/magister)
	pda_type = /obj/item/modular_computer/pda
	l_pocket = /obj/item/device/flashlight/lantern
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/material/twohanded/ravenor/knife = 1, /obj/item/ammo_magazine/shotholder/flechette = 1, /obj/item/implant/translator = 1)

/singleton/hierarchy/outfit/job/torch/crew/service/janitor
	name = OUTFIT_JOB_NAME("Chamber Assistant")
	l_ear = /obj/item/device/radio/headset/headset_service
	suit = /obj/item/clothing/suit/armor/grim/pilgrim/innapron
	uniform = /obj/item/clothing/under/rank/chef
	gloves = /obj/item/clothing/gloves/thick/leather
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	back = /obj/item/storage/backpack/satchel/leather
	id_types = list(/obj/item/card/id/torch/crew/service/janitor)
	l_pocket = /obj/item/device/flashlight/lantern
	pda_type = /obj/item/modular_computer/pda

/singleton/hierarchy/outfit/job/torch/crew/service/chaplain
	name = OUTFIT_JOB_NAME("Chaplain Militant")
	uniform = /obj/item/clothing/under/rank/chaplain
	l_ear = /obj/item/device/radio/headset/headset_com
	head = /obj/item/clothing/head/helmet/pilgrimhelm/preacher
	suit = /obj/item/clothing/suit/armor/grim/ministorumrobes
	gloves = /obj/item/clothing/gloves/thick/duty
	r_hand = /obj/item/staff/ministorumstaff
	l_hand = /obj/item/melee/whip/censer
	shoes = /obj/item/clothing/shoes/jackboots/noble
	back = /obj/item/storage/backpack/satchel/leather
	id_types = list(/obj/item/card/id/torch/crew/service/chaplain)
	l_pocket = /obj/item/device/flashlight/lantern
	pda_type = /obj/item/modular_computer/pda
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/material/twohanded/ravenor/knife = 1)


/singleton/hierarchy/outfit/job/torch/crew/service/guest/fleet
	name = OUTFIT_JOB_NAME("Deck Boss - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/supply
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/chief_steward
	name = OUTFIT_JOB_NAME("Chief Steward")
	l_ear = /obj/item/device/radio/headset/headset_chief_steward
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/service
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/service/chief_steward)
	pda_type = /obj/item/modular_computer/pda/heads

/singleton/hierarchy/outfit/job/torch/crew/service/chief_steward/fleet
	name = OUTFIT_JOB_NAME("Chief Steward - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/janitor/ec
	name = OUTFIT_JOB_NAME("Sanitation Technician - Explorator")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/service
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/service/janitor)
	pda_type = /obj/item/modular_computer/pda

/singleton/hierarchy/outfit/job/torch/crew/service/janitor/fleet
	name = OUTFIT_JOB_NAME("Sanitation Technician - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/magister/ec
	name = OUTFIT_JOB_NAME("Cook - Explorator")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/service
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/crew/service/magister)
	pda_type = /obj/item/modular_computer/pda

/singleton/hierarchy/outfit/job/torch/crew/service/magister/fleet
	name = OUTFIT_JOB_NAME("Cook - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/crewman/fleet
	name = OUTFIT_JOB_NAME("Crewman - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/passenger/research/assist/janitor
	name = OUTFIT_JOB_NAME("Custodian - Torch")
	uniform = /obj/item/clothing/under/rank/janitor

/singleton/hierarchy/outfit/job/torch/crew/service/chaplain/ec
	name = OUTFIT_JOB_NAME("Chaplain - Explorator")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/officer/service
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/service/chaplain/fleet
	name = OUTFIT_JOB_NAME("Chaplain - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/service
	shoes = /obj/item/clothing/shoes/dutyboots
