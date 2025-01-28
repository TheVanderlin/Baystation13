/singleton/hierarchy/outfit/job/torch/crew/engineering
	hierarchy_type = /singleton/hierarchy/outfit/job/torch/crew/engineering
	l_ear = /obj/item/device/radio/headset/headset_mechanicus
	pda_slot = slot_l_store
	flags = OUTFIT_FLAGS_JOB_DEFAULT | OUTFIT_EXTENDED_SURVIVAL
	l_pocket = /obj/item/device/flashlight/lantern

/singleton/hierarchy/outfit/job/torch/crew/engineering/senior_engineer
	name = OUTFIT_JOB_NAME("Data Smith")
	head = null
	mask = /obj/item/clothing/mask/gas/techpriest
	glasses = /obj/item/clothing/glasses/science/techpriest
	belt = /obj/item/storage/belt/utility/full
	suit = /obj/item/clothing/suit/armor/grim/storage/hooded/techpriest
	shoes = /obj/item/clothing/shoes/jackboots/skitshoes/techpriest
	uniform = /obj/item/clothing/under/rank/engineer
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/headset_mechanicus/smith
	l_hand = null
	gloves = /obj/item/clothing/gloves/thick/swat/techpriest
	id_types = list(/obj/item/card/id/torch/crew/engineering/senior)
	pda_type = /obj/item/modular_computer/pda/heads/ce
	pda_slot = slot_l_store
	back = /obj/item/storage/backpack/satchel/warfare/techpriest
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/gun/energy/lasgun/laspistol/accatran = 1)

/singleton/hierarchy/outfit/job/torch/crew/engineering/senior_engineer/fleet
	name = OUTFIT_JOB_NAME("Senior Engineer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/engineering/engineer
	name = OUTFIT_JOB_NAME("Enginseer")
	head = null
	mask = /obj/item/clothing/mask/gas/techpriest
	glasses = /obj/item/clothing/glasses/science/techpriest
	belt = /obj/item/storage/belt/utility/full
	suit = /obj/item/clothing/suit/armor/grim/storage/hooded/techpriest
	shoes = /obj/item/clothing/shoes/jackboots/skitshoes/techpriest
	uniform = /obj/item/clothing/under/rank/engineer
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/headset_mechanicus
	l_hand = null
	gloves = /obj/item/clothing/gloves/thick/swat/techpriest
	id_types = list(/obj/item/card/id/torch/crew/engineering/priest)
	pda_type = /obj/item/modular_computer/pda/engineering
	pda_slot = slot_l_store
	back = /obj/item/storage/backpack/satchel/warfare/techpriest
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/gun/energy/lasgun/laspistol = 1)

/singleton/hierarchy/outfit/job/torch/crew/engineering/bondsman
	name = OUTFIT_JOB_NAME("Bondsman")
	head = null
	mask = /obj/item/clothing/mask/gas/explorer
	glasses = /obj/item/clothing/glasses/night
	belt = /obj/item/storage/belt/utility/full
	suit = /obj/item/clothing/suit/armor/grim/storage/hooded/mechanicus/bondsman
	shoes = /obj/item/clothing/shoes/jackboots/pilgrim_boots
	uniform = /obj/item/clothing/under/rank/victorian/black
	r_pocket = null
	l_ear = /obj/item/device/radio/headset/headset_mechanicus/bondsman
	l_hand = null
	gloves = /obj/item/clothing/gloves/thick/duty
	id_types = list(/obj/item/card/id/torch/crew/engineering)
	pda_type = /obj/item/modular_computer/pda/engineering
	pda_slot = slot_l_store
	back = /obj/item/storage/backpack/satchel/warfare/heavy
	backpack_contents = list(/obj/item/pen/fancy/quill = 1, /obj/item/material/twohanded/ravenor/knife/trench = 1)

/singleton/hierarchy/outfit/job/torch/crew/engineering/engineer/fleet
	name = OUTFIT_JOB_NAME("Engineer - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	shoes = /obj/item/clothing/shoes/dutyboots

/singleton/hierarchy/outfit/job/torch/crew/engineering/contractor
	name = OUTFIT_JOB_NAME("Engineering Assistant")
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	id_types = list(/obj/item/card/id/torch/contractor/engineering)
	pda_type = /obj/item/modular_computer/pda/engineering

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticist
	name = OUTFIT_JOB_NAME("Roboticist - Contractor")
	uniform = /obj/item/clothing/under/rank/roboticist
	shoes = /obj/item/clothing/shoes/black
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticistec
	name = OUTFIT_JOB_NAME("Roboticist - Torch")
	uniform = /obj/item/clothing/under/solgov/utility/expeditionary/engineering
	shoes = /obj/item/clothing/shoes/dutyboots
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	pda_type = /obj/item/modular_computer/pda/roboticist

/singleton/hierarchy/outfit/job/torch/crew/engineering/roboticistfleet
	name = OUTFIT_JOB_NAME("Roboticist - Fleet")
	uniform = /obj/item/clothing/under/solgov/utility/fleet/engineering
	id_types = list(/obj/item/card/id/torch/contractor/engineering/roboticist)
	shoes = /obj/item/clothing/shoes/dutyboots
	pda_type = /obj/item/modular_computer/pda/roboticist
