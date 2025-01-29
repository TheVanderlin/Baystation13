// WARHAMMER 40k //


/obj/item/ammo_magazine/shotholder
	name = "16mm slug holder"
	desc = "A convenient pouch that holds 16mm slugs."
	icon_state = "shotholder"
	caliber = CALIBER_SHOTGUN
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 1440)
	max_ammo = 8
	multiple_sprites = 1
	sales_price = 224
	var/marking_color

/obj/item/ammo_magazine/shotholder/on_update_icon()
	..()
	ClearOverlays()
	if(marking_color)
		var/image/I = image(icon, "shotholder-marking")
		I.color = marking_color
		AddOverlays(I)

/obj/item/ammo_magazine/shotholder/attack_hand(mob/user)
	if((user.a_intent == I_HURT) && (length(stored_ammo)))
		var/obj/item/ammo_casing/C = stored_ammo[length(stored_ammo)]
		stored_ammo-=C
		user.put_in_hands(C)
		user.visible_message("\The [user] removes \a [C] from [src].", SPAN_NOTICE("You remove \a [C] from [src]."))
		update_icon()
	else
		..()

/obj/item/ammo_magazine/shotholder/ap
	name = "16mm AP slug holder"
	ammo_type = /obj/item/ammo_casing/shotgun/ap
	sales_price = 324

/obj/item/ammo_magazine/shotholder/kp
	name = "16mm KP slug holder"
	ammo_type = /obj/item/ammo_casing/shotgun/kp
	sales_price = 524

/obj/item/ammo_magazine/shotholder/ms
	name = "16mm MS slug holder"
	ammo_type = /obj/item/ammo_casing/shotgun/ms
	sales_price = 344

/obj/item/ammo_magazine/shotholder/shell
	name = "16mm shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	marking_color = COLOR_RED_GRAY
	sales_price = 200

/obj/item/ammo_magazine/shotholder/flechette
	name = "flechette shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/flechette
	marking_color = COLOR_BLUE
	sales_price = 300

/obj/item/ammo_magazine/shotholder/beanbag
	name = "beanbag shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 720)
	marking_color = COLOR_PAKISTAN_GREEN
	sales_price = 150

/obj/item/ammo_magazine/shotholder/flash
	name = "illumination shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/flash
	matter = list(MATERIAL_STEEL = 360, MATERIAL_GLASS = 360)
	marking_color = COLOR_PALE_YELLOW
	sales_price = 150

/obj/item/ammo_magazine/shotholder/stun
	name = "stun shell holder"
	ammo_type = /obj/item/ammo_casing/shotgun/stunshell
	matter = list(MATERIAL_STEEL = 1440, MATERIAL_GLASS = 2880)
	marking_color = COLOR_MUZZLE_FLASH
	sales_price = 300

/obj/item/ammo_magazine/shotholder/empty
	name = "16mm ammunition holder"
	matter = list(MATERIAL_STEEL = 250)
	initial_ammo = 0
	sales_price = 50

/obj/item/ammo_magazine/shotgunmag
	name = "16mm slug magazine"
	desc = "A magazine for semi-automatic shotguns."
	icon_state = "drum"
	caliber = CALIBER_SHOTGUN
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/shotgun
	matter = list(MATERIAL_STEEL = 2400)
	max_ammo = 8
	multiple_sprites = TRUE
	sales_price = 300

/obj/item/ammo_magazine/shotgunmag/ap
	desc = "An AP magazine for semi-automatic shotguns."
	ammo_type = /obj/item/ammo_casing/shotgun/ap
	sales_price = 400

/obj/item/ammo_magazine/shotgunmag/kp
	desc = "An KP magazine for semi-automatic shotguns."
	ammo_type = /obj/item/ammo_casing/shotgun/kp
	sales_price = 700

/obj/item/ammo_magazine/shotgunmag/ms
	desc = "An MS magazine for semi-automatic shotguns."
	ammo_type = /obj/item/ammo_casing/shotgun/ms
	sales_price = 500

/obj/item/ammo_magazine/shotgunmag/shot
	labels = list("shot")
	ammo_type = /obj/item/ammo_casing/shotgun/pellet
	sales_price = 250

/obj/item/ammo_magazine/shotgunmag/flechette
	labels = list("flechette")
	ammo_type = /obj/item/ammo_casing/shotgun/flechette
	sales_price = 400

/obj/item/ammo_magazine/shotgunmag/beanbag
	labels = list("beanbag")
	ammo_type = /obj/item/ammo_casing/shotgun/beanbag
	sales_price = 250

/obj/item/ammo_magazine/machine_pistol
	name = "scrap magazine"
	icon_state = "machine_pistol"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol
	matter = list(MATERIAL_STEEL = 1200)
	caliber = CALIBER_SLUG
	max_ammo = 31
	multiple_sprites = 1
	sales_price = 300

/obj/item/ammo_magazine/machine_pistol/empty
	initial_ammo = 0

/obj/item/ammo_magazine/smg
	name = "box magazine"
	icon_state = "smg"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_SLUG
	matter = list(MATERIAL_STEEL = 1500)
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 37
	multiple_sprites = 1
	sales_price = 300

/obj/item/ammo_magazine/smg/empty
	initial_ammo = 0
	sales_price = 100

/obj/item/ammo_magazine/smg/ap
	name = "box magazine"
	ammo_type = /obj/item/ammo_casing/pistol/ap
	sales_price = 400

/obj/item/ammo_magazine/smg/kp
	name = "box magazine"
	ammo_type = /obj/item/ammo_casing/pistol/kp
	sales_price = 700

/obj/item/ammo_magazine/smg/ms
	name = "box magazine"
	ammo_type = /obj/item/ammo_casing/pistol/ms
	sales_price = 600

/obj/item/ammo_magazine/speedloader/clip
	name = "8mm stripper clip"
	desc = "A stripper clip for autogun pattern weapons."
	icon_state = "clip"
	caliber = CALIBER_AUTOGUN
	ammo_type = /obj/item/ammo_casing/rifle
	matter = list(MATERIAL_STEEL = 1800)
	max_ammo = 10
	multiple_sprites = 1
	sales_price = 150

/obj/item/ammo_magazine/speedloader/clip/stub
	name = "12mm stripper clip"
	desc = "A stripper clip for sniper pattern stub weapons."
	caliber = CALIBER_STUB
	ammo_type = /obj/item/ammo_casing/sniper
	max_ammo = 9
	multiple_sprites = 1
	sales_price = 200

/obj/item/ammo_magazine/speedloader/clip/stub/ap
	name = "12mm AP stripper clip"
	ammo_type = /obj/item/ammo_casing/sniper/ap
	sales_price = 300

/obj/item/ammo_magazine/speedloader/clip/stub/kp
	name = "12mm KP stripper clip"
	ammo_type = /obj/item/ammo_casing/sniper/kp
	sales_price = 600

/obj/item/ammo_magazine/speedloader/clip/stub/ms
	name = "12mm MS stripper clip"
	ammo_type = /obj/item/ammo_casing/sniper/ms
	sales_price = 500

/obj/item/ammo_magazine/speedloader/clip/sniper
	name = "15mm stripper clip"
	desc = "A stripper clip for sniper pattern weapons."
	caliber = CALIBER_SNIPER
	ammo_type = /obj/item/ammo_casing/shell
	max_ammo = 7
	multiple_sprites = 1
	sales_price = 350

/obj/item/ammo_magazine/speedloader/clip/sniper/apds
	name = "15mm apds stripper clip"
	desc = "A stripper clip for sniper pattern weapons."
	ammo_type = /obj/item/ammo_casing/shell/apds
	max_ammo = 7
	sales_price = 650

/obj/item/ammo_magazine/speedloader/clip/sniper/shred
	name = "15mm shredder stripper clip"
	desc = "A stripper clip for sniper pattern weapons."
	ammo_type = /obj/item/ammo_casing/shell/shred
	max_ammo = 7
	sales_price = 850

/obj/item/ammo_magazine/speedloader/clip/sniper/knockout
	name = "15mm neurotoxin stripper clip"
	desc = "A stripper clip for sniper pattern weapons."
	ammo_type = /obj/item/ammo_casing/shell/knockout
	max_ammo = 5
	sales_price = 950

/obj/item/ammo_magazine/speedloader/clip/sniper/xenos
	name = "xenos munitions rod"
	desc = "A metal munitions rod for xenos weapons."
	ammo_type = /obj/item/ammo_casing/xenos/bos
	max_ammo = 3
	sales_price = 600 // It's just a special metal rod for xenos railguns.

// STANDARD PATTERN
/obj/item/ammo_magazine/speedloader
	name = "10mm speed loader"
	desc = "A speed loader for pistols."
	icon_state = "spdloader"
	caliber = CALIBER_SLUG
	ammo_type = /obj/item/ammo_casing/pistol
	matter = list(MATERIAL_STEEL = 1260)
	max_ammo = 9
	multiple_sprites = 1
	sales_price = 150

/obj/item/ammo_magazine/speedloader/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	sales_price = 100

/obj/item/ammo_magazine/speedloader/revolver
	name = "15mm speed loader"
	desc = "A speed loader for revolvers."
	icon_state = "spdloader_magnum"
	caliber = CALIBER_SLUG_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_STEEL = 1440)
	max_ammo = 7
	multiple_sprites = 1
	sales_price = 200

/obj/item/ammo_magazine/speedloader/revolver/ap
	name = "15mm AP speed loader"
	ammo_type = /obj/item/ammo_casing/magnum/ap
	sales_price = 250

/obj/item/ammo_magazine/speedloader/revolver/kp
	name = "15mm KP speed loader"
	ammo_type = /obj/item/ammo_casing/magnum/kp
	sales_price = 500

/obj/item/ammo_magazine/speedloader/revolver/ms
	name = "15mm MS speed loader"
	ammo_type = /obj/item/ammo_casing/magnum/ms
	sales_price = 350

/obj/item/ammo_magazine/speedloader/militarum
	name = "6.8mm speed loader"
	desc = "A speed loader for revolvers loaded with 6.8mm autogun rounds."
	icon_state = "spdloader_magnum"
	caliber = CALIBER_AUTOGUN
	ammo_type = /obj/item/ammo_casing/autogun/militarum
	matter = list(MATERIAL_STEEL = 1440)
	max_ammo = 7
	multiple_sprites = 1
	sales_price = 250

/obj/item/ammo_magazine/speedloader/militarum/ap
	name = "6.8mm AP speed loader"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/ap
	sales_price = 300

/obj/item/ammo_magazine/speedloader/militarum/kp
	name = "6.8 KP speed loader"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/kp
	sales_price = 550

/obj/item/ammo_magazine/speedloader/militarum/ms
	name = "6.8 MS speed loader"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/ms
	sales_price = 400

/obj/item/ammo_magazine/speedloader/small
	name = "speed loader"
	icon_state = "spdloader_small"
	caliber = CALIBER_SLUG_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/tech
	matter = list(MATERIAL_STEEL = 1060)
	max_ammo = 9
	multiple_sprites = 1
	sales_price = 150

/obj/item/ammo_magazine/pistol
	name = "10mm slug magazine"
	desc = "An 10mm slug magazine"
	icon_state = "pistol_mag"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_SLUG
	matter = list(MATERIAL_STEEL = 750)
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 15
	multiple_sprites = 1
	sales_price = 250

/obj/item/ammo_magazine/pistol/ap
	name = "10mm AP speed loader"
	desc = "An 10mm slug magazine"
	ammo_type = /obj/item/ammo_casing/pistol/ap
	sales_price = 300

/obj/item/ammo_magazine/pistol/kp
	name = "10mm KP speed loader"
	desc = "An 10mm slug magazine"
	ammo_type = /obj/item/ammo_casing/pistol/kp
	sales_price = 450

/obj/item/ammo_magazine/pistol/ms
	name = "10mm MS speed loader"
	desc = "An 10mm slug magazine"
	ammo_type = /obj/item/ammo_casing/pistol/ms
	sales_price = 375

/obj/item/ammo_magazine/pistol/empty
	initial_ammo = 0
	sales_price = 100

/obj/item/ammo_magazine/pistol/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	sales_price = 150

/obj/item/ammo_magazine/pistol/double
	name = "doublestack pistol magazine"
	icon_state = "pistol_mag"
	matter = list(MATERIAL_STEEL = 1050)
	max_ammo = 19
	sales_price = 300

/obj/item/ammo_magazine/pistol/double/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/rubber
	sales_price = 250

/obj/item/ammo_magazine/pistol/double/practice
	labels = list("practice")
	ammo_type = /obj/item/ammo_casing/pistol/practice
	sales_price = 220

/obj/item/ammo_magazine/pistol/small
	name = "7mm slug magazine"
	desc = "An 15mm slug magazine"
	icon_state = "holdout"
	matter = list(MATERIAL_STEEL = 480)
	caliber = CALIBER_SLUG_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/tech
	max_ammo = 17
	sales_price = 250

/obj/item/ammo_magazine/pistol/small/ap
	name = "7mm AP slug magazine"
	desc = "An 15mm slug magazine"
	ammo_type = /obj/item/ammo_casing/pistol/tech/ap
	sales_price = 300

/obj/item/ammo_magazine/pistol/small/kp
	name = "7mm KP slug magazine"
	desc = "An 15mm slug magazine"
	ammo_type = /obj/item/ammo_casing/pistol/tech/kp
	sales_price = 450

/obj/item/ammo_magazine/pistol/small/ms
	name = "7mm MS slug magazine"
	desc = "An 15mm slug magazine"
	ammo_type = /obj/item/ammo_casing/pistol/tech/ms
	sales_price = 375

/obj/item/ammo_magazine/pistol/small/empty
	initial_ammo = 0
	sales_price = 100

/obj/item/ammo_magazine/magnum
	name = "15mm slug magazine"
	icon_state = "magnum"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_SLUG_MAGNUM
	matter = list(MATERIAL_STEEL = 1680)
	ammo_type = /obj/item/ammo_casing/magnum
	max_ammo = 12
	multiple_sprites = 1
	sales_price = 300

/obj/item/ammo_magazine/magnum/ap
	name = "15mm AP slug magazine"
	desc = "An 15mm slug magazine"
	ammo_type = /obj/item/ammo_casing/magnum/ap
	sales_price = 400

/obj/item/ammo_magazine/magnum/kp
	name = "15mm KP slug magazine"
	desc = "An 15mm slug magazine"
	ammo_type = /obj/item/ammo_casing/magnum/kp
	sales_price = 600

/obj/item/ammo_magazine/magnum/ms
	name = "15mm MS slug magazine"
	desc = "An 15mm slug magazine"
	ammo_type = /obj/item/ammo_casing/magnum/ms
	sales_price = 500

/obj/item/ammo_magazine/magnum/empty
	initial_ammo = 0
	sales_price = 150


/obj/item/ammo_magazine/autogun
	name = "magazine (8mm)"
	icon_state = "5556"
	mag_type = MAGAZINE
	caliber = CALIBER_AUTOGUN
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/autogun
	max_ammo = 33
	multiple_sprites = 1
	sales_price = 500

/obj/item/ammo_magazine/autogun/ap
	name = "AP magazine (8mm)"
	ammo_type = /obj/item/ammo_casing/autogun/ap
	sales_price = 700

/obj/item/ammo_magazine/autogun/kp
	name = "KP magazine (8mm)"
	ammo_type = /obj/item/ammo_casing/autogun/kp
	sales_price = 1000

/obj/item/ammo_magazine/autogun/ms
	name = "MS magazine (8mm)"
	ammo_type = /obj/item/ammo_casing/autogun/ms
	sales_price = 850

/obj/item/ammo_magazine/autogun/militarum
	name = "magazine (6.8mm)"
	icon_state = "5556"
	color = COLOR_DARK_GUNMETAL
	mag_type = MAGAZINE
	caliber = CALIBER_AUTOGUN
	matter = list(DEFAULT_WALL_MATERIAL = 1800)
	ammo_type = /obj/item/ammo_casing/autogun/militarum
	max_ammo = 37
	multiple_sprites = 1
	sales_price = 550

/obj/item/ammo_magazine/autogun/militarum/ap
	name = "AP magazine (6.8mm AR)"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/ap
	sales_price = 750

/obj/item/ammo_magazine/autogun/militarum/kp
	name = "KP magazine (6.8mm AR)"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/kp
	sales_price = 1100

/obj/item/ammo_magazine/autogun/militarum/ms
	name = "MS magazine (6.8mm AR)"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/ms
	sales_price = 1000

/obj/item/ammo_magazine/autogunheavy
	name = "box magazine (6.8mm)"
	icon_state = "hmg"
	max_ammo = 58
	ammo_type = /obj/item/ammo_casing/autogun/militarum
	sales_price = 700

/obj/item/ammo_magazine/autogunheavy/ap
	name = "AP box magazine (6.8mm AR)"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/ap
	sales_price = 950

/obj/item/ammo_magazine/autogunheavy/kp
	name = "KP box magazine (6.8mm AR)"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/kp
	sales_price = 1500

/obj/item/ammo_magazine/autogunheavy/ms
	name = "MS box magazine (6.8mm AR)"
	ammo_type = /obj/item/ammo_casing/autogun/militarum/ms
	sales_price = 1300

/obj/item/ammo_magazine/heavy
	name = "magazine (10mm AR)"
	max_ammo = 25
	icon_state = "5556"
	caliber = CALIBER_AUTOHEAVY
	ammo_type = /obj/item/ammo_casing/heavy
	sales_price = 600

/obj/item/ammo_magazine/heavy/ap
	name = "AP magazine (10mm AR)"
	ammo_type = /obj/item/ammo_casing/heavy/ap
	sales_price = 800

/obj/item/ammo_magazine/heavy/kp
	name = "KP magazine (10mm AR)"
	ammo_type = /obj/item/ammo_casing/heavy/kp
	sales_price = 1200

/obj/item/ammo_magazine/heavy/ms
	name = "MS magazine (10mm AR)"
	ammo_type = /obj/item/ammo_casing/heavy/ms
	sales_price = 1100

/obj/item/ammo_magazine/radcarbine
	name = "Radcarbine Magazine"
	icon_state = "LMG-mag"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "rad"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/radcarbine
	max_ammo = 20
	multiple_sprites = 1
	sales_price = 500

/obj/item/ammo_magazine/radcarbine/radpistol
	name = "Radpistol Magazine"
	icon_state = "mg08"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = "rad"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/radcarbine/radpistol
	max_ammo = 10
	multiple_sprites = 0
	sales_price = 350

/obj/item/ammo_magazine/pulsemag
	name = "Pulse Matter Cartridge"
	icon_state = "tinyersatz"
	origin_tech = list(TECH_COMBAT = 3)
	mag_type = MAGAZINE
	caliber = "pmag"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/pmag
	max_ammo = 45
	multiple_sprites = 1
	sales_price = 1000

/* ork mags */

/obj/item/ammo_magazine/ork/slugga
	name = "slugga magazine"
	desc = "ALL DA LI'L PISTALS USE DIS ONE YA GIT!"
	icon_state = "slugga"
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/ork
	max_ammo = 10
	multiple_sprites = 1
	sales_price = 100

/obj/item/ammo_magazine/ork/slugga/empty
	initial_ammo = 0
	sales_price = 10

/obj/item/ammo_magazine/ork/shoota
	name = "shoota magazine"
	desc = "DIS ONE'S FOR DA BIG UN SHOOTAS WITH DA ROIFLE BOOLETS!"
	icon_state = "shoota"
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/ork/shoota
	max_ammo = 75
	multiple_sprites = 1
	sales_price = 200

/obj/item/ammo_magazine/ork/shoota/empty
	initial_ammo = 0
	sales_price = 20

//-----SPECIAL BOLTER MAGS-----
/obj/item/ammo_magazine/bolt_pistol_magazine
	name = "Boltpistol Magazine"
	icon_state = "boltyp"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/boltpistol
	max_ammo = 8
	multiple_sprites = 1
	sales_price = 600

/obj/item/ammo_magazine/bolt_pistol_magazine/empty
	initial_ammo = 0
	sales_price = 200

/obj/item/ammo_magazine/bolt_rifle_magazine
	name = "Bolter Magazine"
	icon_state = "bolty"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/bolter
	max_ammo = 25
	multiple_sprites = 1
	sales_price = 1400

/obj/item/ammo_magazine/bolt_rifle_magazine/empty
	initial_ammo = 0
	sales_price = 300

/obj/item/ammo_magazine/bolt_rifle_magazine/sister
	name = "Godwyn-De'az Pattern Bolter Rifle Magazine"
	ammo_type = /obj/item/ammo_casing/bolter

/obj/item/ammo_magazine/bolt_pistol_magazine/ms
	name = "Metal Storm Boltpistol Magazine"
	icon_state = "boltyp"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/boltpistol/ms
	max_ammo = 8
	multiple_sprites = 1
	sales_price = 1000

/obj/item/ammo_magazine/bolt_pistol_magazine/ms/empty
	initial_ammo = 0

/obj/item/ammo_magazine/bolt_rifle_magazine/ms
	name = "Metal Storm Bolter Magazine"
	icon_state = "bolty"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/bolter/ms
	max_ammo = 25
	multiple_sprites = 1
	sales_price = 2000

/obj/item/ammo_magazine/bolt_rifle_magazine/ms/empty
	initial_ammo = 0

/obj/item/ammo_magazine/bolt_pistol_magazine/kp
	name = "Kraken Penetrator Boltpistol Magazine"
	icon_state = "boltyp"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/boltpistol/kp
	max_ammo = 8
	multiple_sprites = 1
	sales_price = 1100

/obj/item/ammo_magazine/bolt_pistol_magazine/kp/empty
	initial_ammo = 0

/obj/item/ammo_magazine/bolt_rifle_magazine/kp
	name = "Kraken Penetrator Bolter Magazine"
	icon_state = "bolty"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".75"
	matter = list(DEFAULT_WALL_MATERIAL = 1260)
	ammo_type = /obj/item/ammo_casing/bolter/kp
	max_ammo = 25
	multiple_sprites = 1
	sales_price = 2200

/obj/item/ammo_magazine/bolt_rifle_magazine/kp/empty
	initial_ammo = 0

/obj/item/ammo_magazine/bolt_rifle_magazine_astartes
	name = "Astartes Bolter Magazine"
	icon_state = "bolty"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".95"
	w_class = ITEM_SIZE_NORMAL
	matter = list(DEFAULT_WALL_MATERIAL = 5260)
	ammo_type = /obj/item/ammo_casing/bolter/astartes
	max_ammo = 35
	multiple_sprites = 1
	sales_price = 2400

/obj/item/ammo_magazine/bolt_rifle_magazine/kp/empty
	initial_ammo = 0

/obj/item/ammo_magazine/bolt_pistol_magazine/astartes
	name = "Astartes Boltpistol Magazine"
	icon_state = "boltyp"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = ".95"
	matter = list(DEFAULT_WALL_MATERIAL = 2260)
	ammo_type = /obj/item/ammo_casing/bolter/astartes
	max_ammo = 15
	multiple_sprites = 1

/obj/item/ammo_magazine/bolt_pistol_magazine/kp/empty
	initial_ammo = 0



// SS13 Trash


/obj/item/ammo_magazine/speedloader/pclip
	name = "magnum pistol stripper clip"
	desc = "A stripper clip for pistol magnum caliber weapons."
	icon_state = "pclip"
	caliber = CALIBER_SLUG_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	matter = list(MATERIAL_STEEL = 1300)
	max_ammo = 5
	multiple_sprites = 1
	sales_price = 300

/obj/item/ammo_magazine/speedloader/hpclip
	name = "holdout pistol stripper clip"
	desc = "A stripper clip for pistol holdout caliber weapons."
	icon_state = "hpclip"
	caliber = CALIBER_SLUG_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/tech
	matter = list(MATERIAL_STEEL = 1800)
	max_ammo = 10
	multiple_sprites = TRUE
	sales_price = 250

/obj/item/ammo_magazine/smg_top
	name = "top mounted magazine"
	icon_state = "smg_top"
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/pistol/tech
	matter = list(MATERIAL_STEEL = 1200)
	caliber = CALIBER_SLUG_SMALL
	max_ammo = 20
	multiple_sprites = 1
	sales_price = 350

/obj/item/ammo_magazine/smg_top/empty
	initial_ammo = 0
	sales_price = 100

/obj/item/ammo_magazine/smg_top/rubber
	labels = list("rubber")
	ammo_type = /obj/item/ammo_casing/pistol/tech/rubber
	sales_price = 200

/obj/item/ammo_magazine/smg_top/practice
	labels = list("practice")
	ammo_type = /obj/item/ammo_casing/pistol/tech/practice
	sales_price = 150




/obj/item/ammo_magazine/box/smallpistol
	name = "ammunition box"
	icon_state = "smallpistol"
	origin_tech = list(TECH_COMBAT = 2)
	matter = list(MATERIAL_STEEL = 1800)
	caliber = CALIBER_SLUG_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/tech
	max_ammo = 30
	sales_price = 450

/obj/item/ammo_magazine/box/pistol
	name = "ammunition box"
	icon_state = "smallpistol"
	origin_tech = list(TECH_COMBAT = 2)
	caliber = CALIBER_SLUG
	matter = list(MATERIAL_STEEL = 2250)
	ammo_type = /obj/item/ammo_casing/pistol
	max_ammo = 30
	sales_price = 400

/obj/item/ammo_magazine/box/pistol/empty
	initial_ammo = 0

/obj/item/ammo_magazine/pistol/throwback
	name = "pistol magazine"
	caliber = CALIBER_SLUG_ANTIQUE
	ammo_type = /obj/item/ammo_casing/pistol/throwback

/obj/item/ammo_magazine/box/emp/pistol
	name = "ammunition box"
	desc = "A box containing loose rounds of standard EMP ammo."
	labels = list("haywire")
	ammo_type = /obj/item/ammo_casing/pistol/emp
	caliber = CALIBER_SLUG
	max_ammo = 15
	sales_price = 600

/obj/item/ammo_magazine/box/emp/smallpistol
	name = "ammunition box"
	desc = "A box containing loose rounds of small EMP ammo."
	labels = list("haywire")
	ammo_type = /obj/item/ammo_casing/pistol/tech/emp
	caliber = CALIBER_SLUG_SMALL
	max_ammo = 8

/obj/item/ammo_magazine/proto_smg
	name = "submachine gun magazine"
	icon_state = CALIBER_SLUG_FLECHETTE
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_SLUG_FLECHETTE
	matter = list(MATERIAL_STEEL = 2000)
	ammo_type = /obj/item/ammo_casing/flechette
	max_ammo = 40
	multiple_sprites = 1

/obj/item/ammo_magazine/gyrojet
	name = "microrocket magazine"
	icon_state = "gyrojet"
	mag_type = MAGAZINE
	caliber = CALIBER_GYROJET
	ammo_type = /obj/item/ammo_casing/gyrojet
	multiple_sprites = 1
	max_ammo = 4

/obj/item/ammo_magazine/gyrojet/empty
	initial_ammo = 0

/obj/item/ammo_magazine/box/machinegun
	name = "magazine box"
	icon_state = "machinegun"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_AUTOGUN
	matter = list(MATERIAL_STEEL = 4500)
	ammo_type = /obj/item/ammo_casing/rifle
	max_ammo = 50
	multiple_sprites = 1

/obj/item/ammo_magazine/box/machinegun/empty
	initial_ammo = 0

/obj/item/ammo_magazine/rifle
	name = "assault rifle magazine"
	icon_state = "assault_rifle"
	mag_type = MAGAZINE
	caliber = CALIBER_AUTOGUN
	matter = list(MATERIAL_STEEL = 1800)
	ammo_type = /obj/item/ammo_casing/rifle
	max_ammo = 20
	multiple_sprites = 1

/obj/item/ammo_magazine/mil_rifle
	name = "assault rifle magazine"
	icon_state = "bullpup"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_AUTOGUN
	matter = list(MATERIAL_STEEL = 1800)
	ammo_type = /obj/item/ammo_casing/rifle/military
	max_ammo = 18
	multiple_sprites = 1

/obj/item/ammo_magazine/mil_rifle/heavy
	labels = list("heavy")

/obj/item/ammo_magazine/mil_rifle/heavy/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mil_rifle/heavy/practice
	labels = list("heavy, practice")
	ammo_type = /obj/item/ammo_casing/rifle/military/practice

/obj/item/ammo_magazine/mil_rifle/light
	icon_state = "bullpup_light"
	labels = list("light")
	ammo_type = /obj/item/ammo_casing/rifle/military/light
	max_ammo = 14

/obj/item/ammo_magazine/mil_rifle/light/empty
	initial_ammo = 0

/obj/item/ammo_magazine/mil_rifle/light/practice
	labels = list("light, practice")
	ammo_type = /obj/item/ammo_casing/rifle/military/practice

/obj/item/ammo_magazine/caps
	name = "speed loader"
	desc = "A cheap plastic speed loader for some kind of revolver."
	icon_state = "T38"
	caliber = CALIBER_CAPS
	ammo_type = /obj/item/ammo_casing/cap
	matter = list(MATERIAL_STEEL = 600)
	max_ammo = 7
	multiple_sprites = 1

/obj/item/ammo_magazine/iclipr
	name = "en-bloc clip"
	desc = "An en-bloc clip for the garand rifle."
	icon_state = "iclipr"
	caliber = CALIBER_AUTOGUN
	mag_type = MAGAZINE
	ammo_type = /obj/item/ammo_casing/rifle
	matter = list(MATERIAL_STEEL = 1500)
	max_ammo = 8
	multiple_sprites = TRUE

/obj/item/ammo_magazine/box/minigun
	name = "minigun box"
	icon_state = "minigun"
	origin_tech = list(TECH_COMBAT = 2)
	mag_type = MAGAZINE
	caliber = CALIBER_SLUG_SMALL
	matter = list(MATERIAL_STEEL = 10000)
	ammo_type = /obj/item/ammo_casing/pistol/tech
	max_ammo = 200
	multiple_sprites = TRUE

/obj/item/ammo_magazine/box/minigun/empty
	initial_ammo = 0
