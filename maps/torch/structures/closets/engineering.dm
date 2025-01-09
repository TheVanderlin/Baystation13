/*
 * Torch Engineering
 */

/singleton/closet_appearance/secure_closet/torch/engineering
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_WARM_YELLOW,
		"exped" = COLOR_WARM_YELLOW
	)

/singleton/closet_appearance/secure_closet/torch/engineering/atmos
	extra_decals = list(
		"stripe_vertical_right_full" = COLOR_WARM_YELLOW,
		"stripe_vertical_mid_full" = COLOR_CYAN_BLUE,
		"atmos_upper" = COLOR_WARM_YELLOW
	)

/singleton/closet_appearance/secure_closet/torch/engineering/se
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_WARM_YELLOW,
		"stripe_vertical_right_full" = COLOR_WARM_YELLOW,
		"exped" = COLOR_WARM_YELLOW
	)

/singleton/closet_appearance/secure_closet/torch/engineering/ce
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_WARM_YELLOW,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_WARM_YELLOW,
		"exped" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/engineering_chief_torch
	name = "magos explorator's locker"
	req_access = list(access_mechanicus_command)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/engineering/ce

/obj/structure/closet/secure_closet/engineering_chief_torch/WillContain()
	return list(
		/obj/item/blueprints,
		/obj/item/clothing/gloves/insulated,
		/obj/item/device/radio/headset/heads/ce,
		/obj/item/device/radio/headset/heads/ce/alt,
		/obj/item/storage/belt/utility/engi_command,
		/obj/item/taperoll/engineering,
		/obj/item/material/twohanded/jack,
		/obj/item/clothing/glasses/meson,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/material/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/storage/box/armband/engine,
		/obj/item/storage/box/secret_project_disks,
		/obj/item/material/knife/folding/swiss/officer
	)

/obj/structure/closet/secure_closet/engineering_torch
	name = "bondsman's locker"
	req_access = list(access_mechanicus)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/engineering

/obj/structure/closet/secure_closet/engineering_torch/WillContain()
	return list(
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/storage/belt/utility/full,
		/obj/item/device/radio/headset/headset_mechanicus,
		/obj/item/taperoll/engineering,
		/obj/item/device/flashlight,
		/obj/item/clothing/gloves/insulated,
		/obj/item/material/knife/folding/swiss/engineer
	)

/obj/structure/closet/secure_closet/engineering_senior
	name = "tech priest's locker"
	req_access = list(access_mechanicus_command)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/engineering/se

/obj/structure/closet/secure_closet/engineering_senior/WillContain()
	return list(
		/obj/item/clothing/accessory/storage/brown_vest,
		/obj/item/device/radio/headset/headset_mechanicus,
		/obj/item/device/radio/headset/headset_mechanicus/alt,
		/obj/item/clothing/suit/armor/grim/storage/engineering_chest_rig,
		/obj/item/clothing/mask/gas,
		/obj/item/storage/belt/utility/full,
		/obj/item/clothing/glasses/meson,
		/obj/item/taperoll/engineering,
		/obj/item/clothing/glasses/welding/superior,
		/obj/item/device/flashlight,
		/obj/item/clothing/gloves/insulated,
		/obj/item/material/knife/folding/swiss/engineer
	)

/obj/structure/closet/secure_closet/atmos_torch
	name = "atmospherics gear locker"
	req_access = list(access_dauntless)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/engineering/atmos

/obj/structure/closet/secure_closet/atmos_torch/WillContain()
	return list(
		/obj/item/device/scanner/gas,
		/obj/item/scrubpack/standard = 2,
		/obj/item/tank/scrubber = 4
	)
