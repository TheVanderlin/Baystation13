// WARHAMMER 40k PISTOLS/REVOLVERS

/obj/item/gun/projectile/revolver/imperial
	name = "Slug Revolver"
	desc = "A cheap 10mm revolver, copying the designs from Boscelot Merchantile. Chambered in 10mm and constantly asking the user why they didn't get a more powerful caliber."
	icon = 'icons/obj/guns/40kproj.dmi'
	icon_state = "snubby"
	item_state = "crevolver"
	caliber = CALIBER_SLUG
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	ammo_type = /obj/item/ammo_casing/pistol
	fire_sound = 'sound/warhammer/guns/fire/revolver_fire.ogg'
	accuracy = 0.3
	fire_delay = 3
	max_shells = 9
	one_hand_penalty = 0
	mag_remove_sound 	= 'sound/warhammer/guns/interact/rev_magout.ogg'
	mag_insert_sound 	= 'sound/warhammer/guns/interact/rev_magin.ogg'
	load_sound = 'sound/warhammer/guns/interact/rev_magin.ogg'

/obj/item/gun/projectile/revolver/imperial/holdout
	name = "Holdout Revolver"
	desc = "A concealed-carry revolver that is more compact at the cost of additional recoil. It fires small 7mm tech rounds"
	icon_state = "mervex"
	item_state = "crevolver"
	caliber = CALIBER_SLUG_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/tech
	fire_sound = 'sound/warhammer/gunshot/auto5.ogg'
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_POCKET
	accuracy = 0
	fire_delay = 2.9
	max_shells = 9

/obj/item/gun/projectile/revolver/imperial/heavy
	name = "Heavy Slug Revolver"
	desc = "A heavy slug revolver chambered in 15mm, standard issue to Guard Officers and Magistratum Enforcers."
	icon_state = "slug_revolver"
	item_state = "crevolver"
	caliber = CALIBER_SLUG_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	fire_sound = 'sound/warhammer/guns/fire/revolver_fire.ogg'
	accuracy = 0
	fire_delay = 3.2
	max_shells = 7

/obj/item/gun/projectile/revolver/imperial/heavy/mateba
	name = "Heavy Slug Revolver"
	desc = "A custom made mateba slug revolver -- clearly forged by a talented of gunsmith, it's makers mark signifying it's origins beyond the Ghoul Stars."
	icon_state = "goldmateba"
	sales_price = 10
	accuracy = 0.3
	fire_delay = 3
	max_shells = 8

/obj/item/gun/projectile/revolver/imperial/heavy/bounty
	name = "Heavy Slug Revolver"
	desc = "A necromundan slug revolver -- a favorite among bounty hunters due to it's supreme accuracy at a distance."
	icon_state = "necros"
	accuracy = 0.6
	fire_delay = 3.2
	max_shells = 7

/obj/item/gun/projectile/revolver/imperial/heavy/autogun
	name = "Custom Slug Revolver"
	desc = "A custom forged slug revolver that fires 6.8mm tech rounds -- it has painful recoil and is known to have issues cycling it's heavier slugs."
	icon_state = "hunting_revolver"
	accuracy = 0.3
	fire_delay= 3.4
	max_shells = 7
	ammo_type = /obj/item/ammo_casing/autogun/militarum
	caliber = CALIBER_AUTOGUN

/obj/item/gun/projectile/pistol/slug // Do not get the calibers mixed up. Slug pistols use caliber_slug_magnum.
	name = "Slug Pistol"
	desc = "The locally made pattern is chambered in 15mm and is more reliable in it's handling than other makeshift slug pistols. "
	icon = 'icons/obj/guns/40kproj.dmi'
	icon_state = "crusader_pistol"
	item_state = "pistol"
	fire_sound = 'sound/warhammer/guns/fire/revolver_fire.ogg'
	ammo_type = /obj/item/ammo_casing/magnum
	magazine_type = /obj/item/ammo_magazine/magnum
	allowed_magazines = /obj/item/ammo_magazine/magnum
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	one_hand_penalty = 0
	fire_delay = 3.4
	caliber = CALIBER_SLUG_MAGNUM
	accuracy = -0.5
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)
	sales_price = 11

/obj/item/gun/projectile/pistol/slug/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "crusader_pistol"
		item_state = "pistol"
		wielded_item_state = "pistol"
	else
		icon_state = "crusader_pistol-e"
		item_state = "pistol"
		wielded_item_state = "pistol"

/obj/item/gun/projectile/pistol/slug/old
	name = "Grim Slug Pistol"
	desc = "A commonly produced slug pistol, one of many thousands of variations of manufactured slug weapons -- this imitation clearly has been made in less then ideal conditions. It seems retrofitted to fire two rounds at a time..."
	icon_state = "tacpistol"
	item_state = "pistol"
	fire_delay = 3.3
	accuracy = -2 // This pistol is only ideal for shooting at simple mobs or in CQB.
	sales_price = 15
	caliber = CALIBER_SLUG_MAGNUM
	origin_tech = list(TECH_COMBAT = 2, TECH_MATERIAL = 2)

/obj/item/gun/projectile/pistol/slug/old/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "tacpistol"
		item_state = "pistol"
		wielded_item_state = "pistol"
	else
		icon_state = "tacpistol-e"
		item_state = "pistol"
		wielded_item_state = "pistol"

/obj/item/gun/projectile/pistol/slug/shotgun
	name = "Maccabian Slug Pistol"
	desc = "This slug pistol is custom forged to fire heavy 16mm slugs with a magazine insert for standard shotshell holders. The recoil is punishing and it can only hold eight shells at a time."
	icon_state = "mrevolver"
	item_state = "crevolver"
	caliber = "shotgun"
	force = 15
	accuracy = -0.5
	fire_delay = 3.4
	allowed_magazines = /obj/item/ammo_magazine/shotholder
	magazine_type = /obj/item/ammo_magazine/shotholder/flechette
	ammo_type = /obj/item/ammo_casing/shotgun
	caliber = CALIBER_SHOTGUN
	fire_sound = 'sound/warhammer/guns/fire/revolver_fire.ogg'

/obj/item/gun/projectile/pistol/slug/shotgun/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "mrevolver"
		item_state = "crevolver"
		wielded_item_state = "crevolver"
	else
		icon_state = "mrevolver-e"
		item_state = "crevolver"
		wielded_item_state = "crevolver"

/obj/item/gun/projectile/pistol/stub
	name = "Kieji stub pistol"
	desc = "A standard pattern 10mm stub pistol, on the side is the makers mark of it's forger -- this pistol has history."
	icon = 'icons/obj/guns/40kproj.dmi'
	icon_state = "kieji"
	item_state = "pistol"
	w_class = ITEM_SIZE_NORMAL
	magazine_type = /obj/item/ammo_magazine/pistol
	allowed_magazines = /obj/item/ammo_magazine/pistol
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	caliber = CALIBER_SLUG
	sales_price = 8
	accuracy = 0.3
	fire_delay = 2.8

/obj/item/gun/projectile/pistol/stub/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "kieji"
		item_state = "pistol"
		wielded_item_state = "pistol"
	else
		icon_state = "kieji-e"
		item_state = "pistol"
		wielded_item_state = "pistol"

/obj/item/gun/projectile/pistol/stub/snub
	name = "Snub nosed Kieji"
	desc = "A snub-nose 10mm stub pistol with an ergonomic grip and hair trigger, it looks custom made."
	icon_state = "kiejistub"
	item_state = "pistol"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_POCKET
	accuracy = 0
	sales_price = 8
	fire_delay = 2.7

/obj/item/gun/projectile/pistol/stub/snub/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "kiejistub"
		item_state = "pistol"
		wielded_item_state = "pistol"
	else
		icon_state = "kiejistub-e"
		item_state = "pistol"
		wielded_item_state = "pistol"

/obj/item/gun/projectile/pistol/stub/villiers
	name = "Villiers Pattern Auto-pistol."
	desc = "A custom forged double-barrel stub pistol used infamously by smugglers and gangers in close quarter fighting."
	icon_state = "stub2"
	item_state = "pistol"
	fire_delay = 2.8
	burst = 2
	burst_delay = 1.8
	accuracy = -1
	sales_price = 25

/obj/item/gun/projectile/pistol/stub/snub/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "stub2"
		item_state = "pistol"
		wielded_item_state = "pistol"
	else
		icon_state = "stub2-e"
		item_state = "pistol"
		wielded_item_state = "pistol"

/obj/item/gun/projectile/pistol/stub/talon
	name = "Talon Stub Pistol"
	desc = "A mechanicus forged black matted stub-pistol that fires specialized 7mm penetrator tech rounds."
	icon_state = "talon"
	fire_delay = 2.5
	caliber = CALIBER_SLUG_SMALL
	magazine_type = /obj/item/ammo_magazine/pistol/small/ap
	allowed_magazines = /obj/item/ammo_magazine/pistol/small
	auto_eject = 1
	accuracy = 0.5
	silenced = TRUE
	auto_eject_sound = 'sound/weapons/rcd_crossbow.ogg'

/obj/item/gun/projectile/pistol/stub/talon/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "talon"
		item_state = "pistol"
		wielded_item_state = "pistol"
	else
		icon_state = "talon-e"
		item_state = "pistol"
		wielded_item_state = "pistol"

/obj/item/gun/projectile/pistol/bolt_pistol
	name = "Garm Pattern Service Bolt Pistol"
	desc = "A human sized bolter pistol, designed for usage by the Commissars of the Officio Prefectus, It also found itself in usage by officers of Astra Militarum, Rogue Traders as well Inquisitorial agents, Thus, it is relatively common and easily found across the Galaxy."
	icon = 'icons/obj/guns/40kproj.dmi'
	icon_state = "bpistol"
	item_state = "bpistol"
	force = 12
	caliber = ".75"
	accuracy = -1.5
	fire_delay = 3.7
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/bolt_pistol_magazine
	allowed_magazines = /obj/item/ammo_magazine/bolt_pistol_magazine
	slot_flags = SLOT_BELT|SLOT_HOLSTER
	sales_price = 38

/obj/item/gun/projectile/pistol/bolt_pistol/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "bpistol"
		item_state = "bpistol"
		wielded_item_state = "bpistol"
	else
		icon_state = "bpistol-e"
		item_state = "bpistol"
		wielded_item_state = "bpistol"

/obj/item/gun/projectile/pistol/bolt_pistol/gold
	name = "Gold Bolt Pistol"
	desc = "A gold masterwork bolt pistol, custom forged for it's owner."
	icon_state = "gpistol"
	item_state = "gpistol"
	force = 13
	caliber = ".75"
	accuracy = -1
	fire_delay = 3.5
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/bolt_pistol_magazine
	allowed_magazines = /obj/item/ammo_magazine/bolt_pistol_magazine
	slot_flags = SLOT_BELT|SLOT_BACK
	sales_price = 60

/obj/item/gun/projectile/pistol/bolt_pistol/gold/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "gpistol"
		item_state = "gpistol"
		wielded_item_state = "gpistol"
	else
		icon_state = "gpistol-e"
		item_state = "gpistol"
		wielded_item_state = "gpistol"

/obj/item/gun/projectile/pistol/bolt_pistol/drusian
	name = "Drusian Bolt Pistol"
	desc = "A drusian pattern bolt pistol issued to Ordos Agents and Arbitrators, a trustworthy tool capable of solving most 'problems' without much difficulty."
	icon_state = "bbpistol"
	item_state = "bpistol"
	force = 12
	caliber = ".75"
	accuracy = -0.5
	fire_delay = 3.4
	sales_price = 50
	magazine_type = /obj/item/ammo_magazine/bolt_pistol_magazine/ms

/obj/item/gun/projectile/pistol/bolt_pistol/drusian/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "bbpistol"
		item_state = "bpistol"
		wielded_item_state = "bpistol"
	else
		icon_state = "bbpistol-e"
		item_state = "bpistol"
		wielded_item_state = "bpistol"

/obj/item/gun/projectile/pistol/bolt_pistol/sob
	name = "Godwyn-De'az Bolt Pistol" // Ancient relic bolt pistols, high quality.
	desc = "A heavily modified Bolt Pistol designed for the Adeptas Sororitas, It is more reliable and potent than most Bolt pistol patterns.</i>"
	icon_state = "sisterbpistol"
	item_state = "sisterbpistol"
	force = 14
	accuracy = -1
	fire_delay = 3.3
	attack_verb = list ("smited", "struck")
	sales_price = 70

/obj/item/gun/projectile/pistol/bolt_pistol/sob/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "sisterbpistol"
		item_state = "sisterbpistol"
		wielded_item_state = "sisterbpistol"
	else
		icon_state = "sisterbpistol-e"
		item_state = "sisterbpistol"
		wielded_item_state = "sisterbpistol"
