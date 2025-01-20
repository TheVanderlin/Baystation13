
// WARHAMMER 40k - STANDARD

/obj/item/ammo_casing/shotgun
	name = "16mm slug"
	desc = "An 16mm slug."
	icon_state = "slshell"
	spent_icon = "slshell-spent"
	caliber = CALIBER_SHOTGUN
	projectile_type = /obj/item/projectile/bullet/shotgun
	matter = list(MATERIAL_STEEL = 160)
	fall_sounds = list('sound/weapons/guns/shotgun_fall.ogg')

/obj/item/ammo_casing/shotgun/ap
	name = "16mm AP slug"
	desc = "An 16mm AP slug."
	projectile_type = /obj/item/projectile/bullet/shotgun/ap

/obj/item/ammo_casing/shotgun/kp
	name = "16mm KP slug"
	desc = "An 16mm KP slug."
	projectile_type = /obj/item/projectile/bullet/shotgun/kp

/obj/item/ammo_casing/shotgun/ms
	name = "16mm MS slug"
	desc = "An 16mm MS slug."
	projectile_type = /obj/item/projectile/bullet/shotgun/ms

/obj/item/ammo_casing/shotgun/pellet
	name = "16mm shell"
	desc = "An 16mm shell."
	icon_state = "gshell"
	spent_icon = "gshell-spent"
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun

/obj/item/ammo_casing/shotgun/flechette
	name = "flechette shell"
	desc = "An flechette shell."
	projectile_type = /obj/item/projectile/bullet/pellet/shotgun/flechette

/obj/item/ammo_casing/shotgun/blank
	name = "16mm shell"
	desc = "An blank shell."
	icon_state = "blshell"
	spent_icon = "blshell-spent"
	projectile_type = /obj/item/projectile/bullet/blank
	matter = list(MATERIAL_STEEL = 60)

/obj/item/ammo_casing/shotgun/practice
	name = "16mm shell"
	desc = "An practice shell."
	icon_state = "pshell"
	spent_icon = "pshell-spent"
	projectile_type = /obj/item/projectile/bullet/shotgun/practice
	matter = list(MATERIAL_STEEL = 60)

/obj/item/ammo_casing/shotgun/beanbag
	name = "beanbag shell"
	desc = "An beanbag shell."
	icon_state = "bshell"
	spent_icon = "bshell-spent"
	projectile_type = /obj/item/projectile/bullet/shotgun/beanbag
	matter = list(MATERIAL_STEEL = 140)

// WARHAMMER 40k AUTOGUNS

/obj/item/ammo_casing/pistol
	desc = "A slug casing."
	caliber = CALIBER_SLUG
	projectile_type = /obj/item/projectile/bullet/pistol
	icon_state = "pistolcasing"
	spent_icon = "pistolcasing-spent"

/obj/item/ammo_casing/pistol/ap
	desc = "A slug AP casing."
	projectile_type = /obj/item/projectile/bullet/pistol/ap

/obj/item/ammo_casing/pistol/kp
	desc = "A slug KP casing."
	projectile_type = /obj/item/projectile/bullet/pistol/kp

/obj/item/ammo_casing/pistol/ms
	desc = "A slug MS casing."
	projectile_type = /obj/item/projectile/bullet/pistol/ms

/obj/item/ammo_casing/pistol/rubber
	desc = "A rubber slug casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber
	icon_state = "pistolcasing_r"

/obj/item/ammo_casing/pistol/practice
	desc = "A practice slug casing."
	projectile_type = /obj/item/projectile/bullet/pistol/practice
	icon_state = "pistolcasing_p"

/obj/item/ammo_casing/pistol/tech
	desc = "A tech slug casing."
	caliber = CALIBER_SLUG_SMALL
	projectile_type = /obj/item/projectile/bullet/pistol/holdout
	icon_state = "smallcasing"
	spent_icon = "smallcasing-spent"

/obj/item/ammo_casing/pistol/tech/ap
	desc = "A tech slug AP casing."
	projectile_type = /obj/item/projectile/bullet/pistol/holdout/ap

/obj/item/ammo_casing/pistol/tech/kp
	desc = "A tech slug KP casing."
	projectile_type = /obj/item/projectile/bullet/pistol/holdout/kp

/obj/item/ammo_casing/pistol/tech/ms
	desc = "A tech slug MS casing."
	projectile_type = /obj/item/projectile/bullet/pistol/holdout/ms

/obj/item/ammo_casing/pistol/tech/rubber
	desc = "A tech slug rubber slug casing."
	projectile_type = /obj/item/projectile/bullet/pistol/rubber/holdout
	icon_state = "smallcasing_r"

/obj/item/ammo_casing/pistol/tech/practice
	desc = "A tech slug practice slug casing."
	projectile_type = /obj/item/projectile/bullet/pistol/practice
	icon_state = "smallcasing_p"

/obj/item/ammo_casing/magnum
	desc = "A heavy slug casing."
	caliber = CALIBER_SLUG_MAGNUM
	projectile_type = /obj/item/projectile/bullet/magnum
	icon_state = "magnumcasing"
	spent_icon = "magnumcasing-spent"

/obj/item/ammo_casing/magnum/ap
	desc = "A heavy slug AP casing."
	projectile_type = /obj/item/projectile/bullet/magnum/ap

/obj/item/ammo_casing/magnum/kp
	desc = "A heavy slug KP casing."
	projectile_type = /obj/item/projectile/bullet/magnum/kp

/obj/item/ammo_casing/magnum/ms
	desc = "A heavy slug MS casing."
	projectile_type = /obj/item/projectile/bullet/magnum/ms


/obj/item/ammo_casing/autogun
	desc = "An 8mm slug casing."
	caliber = CALIBER_AUTOGUN
	projectile_type = /obj/item/projectile/bullet/rifle
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/autogun/ap
	desc = "An AP 8mm slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/ap

/obj/item/ammo_casing/autogun/ms
	desc = "An MS 8mm slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/ms

/obj/item/ammo_casing/autogun/kp
	desc = "An KP 8mm slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/kp

/obj/item/ammo_casing/autogun/militarum
	desc = "A 6.8mm slug casing."
	caliber = CALIBER_AUTOGUN
	projectile_type = /obj/item/projectile/bullet/rifle/militarum
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/autogun/militarum/ap
	desc = "An AP 6.8mm slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/militarum/ap

/obj/item/ammo_casing/autogun/militarum/ms
	desc = "An MS 6.8mm slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/militarum/ms

/obj/item/ammo_casing/autogun/militarum/kp
	desc = "An KP 6.8mm slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/militarum/kp


/obj/item/ammo_casing/heavy
	desc = "An 10mm AR slug casing."
	caliber = CALIBER_AUTOHEAVY
	projectile_type = /obj/item/projectile/bullet/rifle/heavy
	icon_state = "rifle-casing"
	spent_icon = "rifle-casing-spent"

/obj/item/ammo_casing/heavy/ap
	desc = "An AP 10mm AR slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/heavy/ap

/obj/item/ammo_casing/heavy/ms
	desc = "An MS 10mm AR slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/heavy/ms

/obj/item/ammo_casing/heavy/kp
	desc = "An KP 10mm AR slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/heavy/kp

/obj/item/ammo_casing/sniper
	name = "stub casing"
	desc = "A sniper shell casing."
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"
	caliber = CALIBER_STUB
	projectile_type = /obj/item/projectile/bullet/rifle/sniper
	matter = list(MATERIAL_STEEL = 1250)

/obj/item/ammo_casing/sniper/ap
	name = "\improper AP stub casing"
	desc = "An AP stub casing."
	projectile_type = /obj/item/projectile/bullet/rifle/sniper/ap

/obj/item/ammo_casing/sniper/kp
	name = "\improper KP stub casing"
	desc = "An KP stub casing."
	projectile_type = /obj/item/projectile/bullet/rifle/sniper/kp

/obj/item/ammo_casing/sniper/ms
	name = "\improper MS stub casing"
	desc = "An MS stub casing."
	projectile_type = /obj/item/projectile/bullet/rifle/sniper/ms

/obj/item/ammo_casing/shell
	name = "shell casing"
	desc = "An antimaterial shell casing."
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"
	caliber = CALIBER_SNIPER
	projectile_type = /obj/item/projectile/bullet/rifle/shell
	matter = list(MATERIAL_STEEL = 1250)

/obj/item/ammo_casing/shell/apds
	name = "\improper APDS shell casing"
	desc = "An Armour Piercing Discarding Sabot shell."
	projectile_type = /obj/item/projectile/bullet/rifle/shell/apds

/obj/item/ammo_casing/shell/apds
	name = "\improper APDS shell casing"
	desc = "An Armour Piercing Discarding Sabot shell."
	projectile_type = /obj/item/projectile/bullet/rifle/shell/apds

/obj/item/ammo_casing/shell/shred
	name = "\improper Shredder shell casing"
	desc = "A flesh destroying Discarding Sabot shell."
	projectile_type = /obj/item/projectile/bullet/rifle/shell/rend

/obj/item/ammo_casing/shell/knockout
	name = "\improper Neurotox shell casing"
	desc = "An neurotoxin Discarding Sabot shell."
	projectile_type = /obj/item/projectile/bullet/rifle/shell/knockout

/obj/item/ammo_casing/xenos/bos
	name = "boscelot munitions piece"
	desc = "A xenos tech fragment."
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"
	caliber = CALIBER_SNIPER
	projectile_type = /obj/item/projectile/bullet/rifle/shell/apds/rail

// MECHANICUS

/obj/item/ammo_casing/radcarbine
	name = "radcarbine casings"
	desc = "A radcarbine casing"
	icon_state = "fshell"
	spent_icon = "fshell-spent"
	caliber = "rad"
	projectile_type = /obj/item/projectile/bullet/rifle/radcarbine

/obj/item/ammo_casing/radcarbine/radpistol
	name = "radcarbine pistol casings"
	desc = "A radcarbine pistol casing"
	icon_state = "fshell"
	spent_icon = "fshell-spent"
	caliber = "rad"
	projectile_type = /obj/item/projectile/bullet/rifle/radcarbine/radpistol

/obj/item/ammo_casing/pmag
	name = "pulse casing"
	desc = "pulse casing"
	icon_state = "fshell"
	spent_icon = "fshell-spent"
	caliber = "pmag"
	projectile_type = /obj/item/projectile/bullet/rifle/pmag

// WARHMAMER 40k - BOLTER

/obj/item/ammo_casing/boltpistol
	desc = "A .50 bolt pistol casing." // Bolt pistol
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/bpistol

/obj/item/ammo_casing/bolter
	desc = "A .75 bolt rifle casing." // Bolter
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/bolt

/obj/item/ammo_casing/bolter/astartes
	desc = "A .95 bolt rifle casing." // Astartes Bolter
	caliber = ".95"
	projectile_type = /obj/item/projectile/bullet/bolt/astartes

/obj/item/ammo_casing/ork
	desc = "A giant and crude slug that was made with scrap."
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/ork

/obj/item/ammo_casing/ork/shoota
	desc = "A small and crude slug that was made with scrap. Looks poorly-made."
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/ork


//-----SPECIAL BULLETS:-----
/obj/item/ammo_casing/boltpistol/kp
	desc = "A kraken penetrator .75 bolt pistol casing."
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/bpistol/kp

/obj/item/ammo_casing/bolter/kp
	desc = "A kraken penetrator .75 bolt rifle casing."
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/bolt/kp

/obj/item/ammo_casing/boltpistol/ms
	desc = "A metal storm .75 bolt pistol casing."
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/bpistol/ms

/obj/item/ammo_casing/bolter/ms
	desc = "A metal storm .75 bolt rifle casing."
	caliber = ".75"
	projectile_type = /obj/item/projectile/bullet/bolt/ms

// SS13 BOOT CASINGS

/obj/item/ammo_casing/pistol/throwback
	desc = "An antique slug casing. Somewhere between 9 and 11 mm in caliber."
	caliber = CALIBER_SLUG_ANTIQUE

/obj/item/ammo_casing/gyrojet
	desc = "A minirocket casing."
	caliber = CALIBER_GYROJET
	projectile_type = /obj/item/projectile/bullet/gyro
	icon_state = "lcasing"
	spent_icon = "lcasing-spent"

/obj/item/ammo_casing/flechette
	desc = "A flechette casing."
	caliber = CALIBER_SLUG_FLECHETTE
	projectile_type = /obj/item/projectile/bullet/flechette
	icon_state = "flechette-casing"
	spent_icon = "flechette-casing-spent"

//Can stun in one hit if aimed at the head, but
//is blocked by clothing that stops tasers and is vulnerable to EMP
/obj/item/ammo_casing/shotgun/stunshell
	name = "stun shell"
	desc = "An energy stun cartridge."
	icon_state = "stunshell"
	spent_icon = "stunshell-spent"
	projectile_type = /obj/item/projectile/energy/electrode/stunshot
	leaves_residue = FALSE
	matter = list(MATERIAL_STEEL = 160, MATERIAL_GLASS = 320)

/obj/item/ammo_casing/shotgun/stunshell/emp_act(severity)
	if(prob(100/severity)) BB = null
	update_icon()
	..()

//Does not stun, only blinds, but has area of effect.
/obj/item/ammo_casing/shotgun/flash
	name = "flash shell"
	desc = "A chemical shell used to signal distress or provide illumination."
	icon_state = "fshell"
	spent_icon = "fshell-spent"
	projectile_type = /obj/item/projectile/energy/flash/flare
	matter = list(MATERIAL_STEEL = 80, MATERIAL_GLASS = 80)

/obj/item/ammo_casing/rifle
	desc = "A rifle slug casing."
	caliber = CALIBER_AUTOGUN
	projectile_type = /obj/item/projectile/bullet/rifle
	icon_state = "riflecasing"
	spent_icon = "riflecasing-spent"

/obj/item/ammo_casing/rifle/practice
	desc = "A rifle practice slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/practice
	icon_state = "riflecasing_p"

/obj/item/ammo_casing/rifle/military
	desc = "A military rifle slug casing."
	caliber = CALIBER_AUTOGUN
	icon_state = "rifle_mil"
	spent_icon = "rifle_mil-spent"

/obj/item/ammo_casing/rifle/military/light
	desc = "A low-power military rifle slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/militarum

/obj/item/ammo_casing/rifle/military/practice
	desc = "A military rifle practice slug casing."
	projectile_type = /obj/item/projectile/bullet/rifle/militarum/practice
	icon_state = "rifle_mil_p"

/obj/item/ammo_casing/rocket
	name = "rocket shell"
	desc = "A high explosive designed to be fired from a launcher."
	icon_state = "rocketshell"
	projectile_type = /obj/item/missile
	caliber = "rocket"

/obj/item/ammo_casing/cap
	name = "cap"
	desc = "A cap for children toys."
	caliber = CALIBER_CAPS
	color = "#ff0000"
	projectile_type = /obj/item/projectile/bullet/pistol/cap

// EMP ammo.
/obj/item/ammo_casing/pistol/emp
	name = "haywire round"
	desc = "A slug casing fitted with a single-use ion pulse generator."
	projectile_type = /obj/item/projectile/ion/small
	icon_state = "pistolcasing_h"
	matter = list(MATERIAL_STEEL = 130, MATERIAL_URANIUM = 100)

/obj/item/ammo_casing/pistol/tech/emp
	name = "small haywire round"
	desc = "A small slug casing fitted with a single-use ion pulse generator."
	projectile_type = /obj/item/projectile/ion/tiny
	icon_state = "smallcasing_h"

/obj/item/ammo_casing/shotgun/emp
	name = "haywire slug"
	desc = "A 12-gauge shotgun slug fitted with a single-use ion pulse generator."
	icon_state = "empshell"
	spent_icon = "empshell-spent"
	projectile_type  = /obj/item/projectile/ion
	matter = list(MATERIAL_STEEL = 160, MATERIAL_URANIUM = 160)
