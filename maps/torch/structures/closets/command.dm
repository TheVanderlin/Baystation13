/*
 * Torch Command
 */
/singleton/closet_appearance/secure_closet/torch/command
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD
	)

/singleton/closet_appearance/secure_closet/torch/command/bo
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD
	)

/singleton/closet_appearance/secure_closet/torch/command/xo
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD,
		"command" = COLOR_CLOSET_GOLD
	)

/singleton/closet_appearance/secure_closet/torch/command/co
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_mid_full" = COLOR_OFF_WHITE,
		"stripe_vertical_right_full" = COLOR_CLOSET_GOLD,
		"command" = COLOR_OFF_WHITE
	)

/obj/structure/closet/secure_closet/CO
	name = "rogue trader's locker"
	req_access = list(access_roguetrader)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/command/co

/obj/structure/closet/secure_closet/CO/WillContain()
	return list(
		/obj/item/device/radio/headset/heads/bridge,
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/radio/headset/heads/bridge/alt,
		/obj/item/storage/belt/general,
		/obj/item/storage/box/ids,
		/obj/item/material/knife/folding/swiss/officer,
	)

/obj/structure/closet/secure_closet/XO
	name = "seneschal's locker"
	req_access = list(access_roguetrader)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/command/xo

/obj/structure/closet/secure_closet/XO/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/device/radio/headset/heads/bridge,
		/obj/item/storage/belt/general,
		/obj/item/device/megaphone,
		/obj/item/storage/box/headset,
		/obj/item/device/radio/headset/heads/bridge/alt,
		/obj/item/storage/box/radiokeys,
		/obj/item/storage/box/large/ids,
		/obj/item/storage/box/PDAs,
		/obj/item/material/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/folder/blue,
		/obj/item/material/knife/folding/swiss/officer,
		/obj/item/storage/backpack/satchel/com,
		/obj/item/storage/box/imprinting,
	)

/obj/structure/closet/secure_closet/sea
	name = "senior forbidden locker"
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/command

/obj/structure/closet/secure_closet/sea/WillContain()
	return list(
		/obj/item/clothing/glasses/sunglasses,
		/obj/item/storage/belt/holster/general,
		/obj/item/device/radio/headset/sea,
		/obj/item/device/radio/headset/sea/alt,
		/obj/item/storage/belt/general,
		/obj/item/material/clipboard,
		/obj/item/device/holowarrant,
		/obj/item/folder/blue,
		/obj/item/material/knife/folding/swiss/officer,
		/obj/item/storage/backpack/dufflebag
	)

/obj/structure/closet/secure_closet/bridgeofficer
	name = "void officer's locker"
	req_access = list(access_bridge)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/command/bo

/obj/structure/closet/secure_closet/bridgeofficer/WillContain()
	return list(
		/obj/item/device/radio,
		/obj/item/pen,
		/obj/item/device/tape/random,
		/obj/item/device/taperecorder,
		/obj/item/device/megaphone,
		/obj/item/material/clipboard,
		/obj/item/folder/blue,
		/obj/item/modular_computer/tablet/lease/preset/command,
		/obj/item/device/radio/headset/bridgeofficer,
		/obj/item/device/radio/headset/bridgeofficer/alt,
		/obj/item/storage/belt/general,
		/obj/item/material/knife/folding/swiss/officer,
		/obj/item/storage/backpack/dufflebag,
		/obj/item/device/flashlight
	)
