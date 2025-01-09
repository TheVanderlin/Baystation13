/*
 * Torch Security
 */

/singleton/closet_appearance/secure_closet/torch/security
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

/singleton/closet_appearance/secure_closet/torch/security/forensics
	extra_decals = list(
		"stripe_vertical_mid_full" = COLOR_NT_RED,
		"forensics" = COLOR_NT_RED
	)

/singleton/closet_appearance/secure_closet/torch/security/warden
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_NT_RED,
		"stripe_vertical_right_full" = COLOR_NT_RED,
		"security" = COLOR_NT_RED
	)

/singleton/closet_appearance/secure_closet/torch/security/hos
	extra_decals = list(
		"stripe_vertical_left_full" = COLOR_NT_RED,
		"stripe_vertical_mid_full" = COLOR_CLOSET_GOLD,
		"stripe_vertical_right_full" = COLOR_NT_RED,
		"security" = COLOR_CLOSET_GOLD
	)

/obj/structure/closet/secure_closet/security_torch
	name = "deck enforcer's locker"
	req_access = list(access_restricted)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/security

/obj/structure/closet/secure_closet/security_torch/WillContain()
	return list(
		/obj/item/clothing/suit/armor/grim/enforcer,
		/obj/item/clothing/head/helmet/enforcer/cap,
		/obj/item/clothing/head/helmet/solgov/security,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/storage/belt/holster/security/full,
		/obj/item/grenade/chem_grenade/teargas,
		/obj/item/taperoll/enforcer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/clothing/gloves/thick/swat,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/belt/security,
		/obj/item/material/knife/folding/swiss/sec
	)


/obj/structure/closet/secure_closet/cos
	name = "militarum officer's locker"
	req_access = list(access_bridge)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/security/hos

/obj/structure/closet/secure_closet/cos/WillContain()
	return list(
		/obj/item/device/radio/headset/heads/cos,
		/obj/item/clothing/head/helmet/guardcap/sergeant,
		/obj/item/taperoll/enforcer,
		/obj/item/handcuffs,
		/obj/item/storage/belt/security,
		/obj/item/melee/telebaton,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/material/clipboard,
		/obj/item/folder/red,
		/obj/item/device/flashlight/lantern,
		/obj/item/device/taperecorder,
		/obj/item/material/knife/folding/swiss/officer
	)

/obj/structure/closet/secure_closet/brigchief
	name = "deck sergeant's locker"
	req_access = list(access_bridge)
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/security/warden

/obj/structure/closet/secure_closet/brigchief/WillContain()
	return list(
		/obj/item/clothing/suit/armor/grim/enforcer/sergeant,
		/obj/item/clothing/head/helmet/enforcer/cap,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/device/radio/headset/headset_sec/alt,
		/obj/item/taperoll/enforcer,
		/obj/item/storage/belt/holster/security/full,
		/obj/item/storage/belt/security,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/handcuffs,
		/obj/item/device/hailer,
		/obj/item/device/megaphone,
		/obj/item/hand_labeler,
		/obj/item/clothing/gloves/thick,
		/obj/item/device/flashlight/maglight,
		/obj/item/material/knife/folding/swiss/sec,
		/obj/item/storage/backpack/dufflebag/sec,
		/obj/item/gun/projectile/pistol/m19/empty,
		/obj/item/ammo_magazine/pistol/rubber = 3
	)

/obj/structure/closet/secure_closet/forensics
	name = "forensics technician's locker"
	closet_appearance = /singleton/closet_appearance/secure_closet/torch/security/forensics

/obj/structure/closet/secure_closet/forensics/WillContain()
	return list(
		/obj/item/clothing/gloves/forensic,
		/obj/item/device/radio/headset/headset_sec,
		/obj/item/taperoll/enforcer,
		/obj/item/clothing/accessory/storage/black_vest,
		/obj/item/device/tape/random = 3,
		/obj/item/device/holowarrant,
		/obj/item/device/flashlight/maglight,
		/obj/item/storage/belt/holster/forensic,
		/obj/item/storage/belt/forensic,
		/obj/item/clothing/gloves/thick,
		/obj/item/material/knife/folding/combat/balisong
	)

/obj/structure/closet/bombclosetsecurity/WillContain()
	return list(
		/obj/item/clothing/suit/bomb_suit/security,
		/obj/item/clothing/head/bomb_hood/security
	)
