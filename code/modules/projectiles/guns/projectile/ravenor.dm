/obj/item/gun/projectile/heavysniper/boltaction/imperial
	name = "Boscelot Pattern Stub Rifle" // Slowdown is already in heavysniper
	desc = "An old bolt action stub rifle chambered in 12mm AR stub rounds."
	icon = 'icons/obj/guns/40kproj.dmi'
	icon_state = "boltaction"
	item_state = "boltaction"
	w_class = ITEM_SIZE_HUGE
	caliber = CALIBER_STUB
	ammo_type = /obj/item/ammo_casing/sniper
	load_method = SINGLE_CASING|SPEEDLOADER
	max_shells = 8
	accuracy = 1
	scope_zoom = 1
	scoped_accuracy = 2
	fire_delay = 4
	wielded_item_state = "boltaction-wielded"
	fire_sound = 'sound/warhammer/gunshot/auto5.ogg'
	slowdown_general = 0.03

/obj/item/gun/projectile/heavysniper/boltaction/imperial/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "boltaction"
		item_state = "boltaction"
		wielded_item_state = "boltaction-wielded"
	else
		icon_state = "boltaction-e"
		item_state = "boltaction"
		wielded_item_state = "boltaction-wielded"

/obj/item/gun/projectile/heavysniper/boltaction/imperial/triangong
	name = "Triangong 4-46"
	desc = "An old custom made bolt action stub rifle chambered in 12mm stub rounds. It has a scope attached."
	icon_state = "boltactionsharp"
	item_state = "boltaction"
	w_class = ITEM_SIZE_HUGE
	caliber = CALIBER_STUB
	ammo_type = /obj/item/ammo_casing/sniper
	max_shells = 6
	accuracy = 0.5
	scope_zoom = 2
	scoped_accuracy = 1
	fire_delay = 3.8
	wielded_item_state = "boltaction-wielded"
	fire_sound = 'sound/warhammer/gunshot/loudbolt2.ogg'

/obj/item/gun/projectile/heavysniper/boltaction/imperial/triangong/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "boltactionsharp"
		item_state = "boltaction"
		wielded_item_state = "boltaction-wielded"
	else
		icon_state = "boltactionsharp-e"
		item_state = "boltaction"
		wielded_item_state = "boltaction-wielded"

/obj/item/gun/projectile/heavysniper/boltaction/imperial/crucible
	name = "Crucible Stub Rifle"
	desc = "A militarum pattern bolt action stub rifle chambered in 12mm stub rounds."
	icon_state = "boltactionsharp"
	item_state = "boltaction"
	w_class = ITEM_SIZE_HUGE
	caliber = CALIBER_STUB
	ammo_type = /obj/item/ammo_casing/sniper
	max_shells = 7
	accuracy = 1
	scope_zoom = 1
	scoped_accuracy = 2
	fire_delay = 3.6
	wielded_item_state = "boltaction-wielded"
	fire_sound = 'sound/warhammer/gunshot/loudbolt2.ogg'

/obj/item/gun/projectile/heavysniper/boltaction/imperial/crucible/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "oldglory"
		item_state = "boltaction"
		wielded_item_state = "boltaction-wielded"
	else
		icon_state = "oldglory"
		item_state = "boltaction"
		wielded_item_state = "boltaction-wielded"

/obj/item/gun/projectile/heavysniper/boltaction/imperial/thrower
	name = "Xenos Thrower"
	desc = "Xenos Thrower is an incredibly advanced single-shot magrail hunting thrower developed by the local xenos tribes."
	icon_state = "musket"
	item_state = "musket"
	w_class = ITEM_SIZE_HUGE
	force = 10
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	caliber = CALIBER_SNIPER
	screen_shake = 1
	max_shells = 2
	ammo_type = /obj/item/ammo_casing/xenos/bos
	one_hand_penalty = 1.5
	accuracy = 1.5
	fire_delay = 4.1
	wielded_item_state = "musket-wielded"
	fire_sound = 'sound/warhammer/ds/divet_fire.ogg'
	sales_price = 30

/obj/item/gun/projectile/heavysniper/boltaction/imperial/thrower/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "musket"
		item_state = "musket"
		wielded_item_state = "musket-wielded"
	else
		icon_state = "musket-e"
		item_state = "musket"
		wielded_item_state = "musket-wielded"

/obj/item/gun/projectile/shotgun/pump/voxlegis
	name = "Voxlegis"
	icon = 'icons/obj/guns/40kproj.dmi'
	desc = "A standard pattern 16mm slug shotgun designed around urban combat demands, it's a favorite among the Magistratum."
	icon_state = "voxlegisnew"
	item_state = "shotgun"
	ammo_type = /obj/item/ammo_casing/shotgun
	one_hand_penalty = 1.4
	accuracy = -0.5
	fire_delay = 3.7
	sales_price = 10
	max_shells = 6
	slowdown_general = 0.04

/obj/item/gun/projectile/shotgun/pump/voxlegis/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "voxlegisnew"
		item_state = "shotgun"
		wielded_item_state = "shotgun-wielded"
	else
		icon_state = "voxlegisnew-e"
		item_state = "shotgun"
		wielded_item_state = "shotgun-wielded"

/obj/item/gun/projectile/shotgun/pump/voxlegis/magrave
	name = "\improper WTX Belle Magrave"
	desc = "A rare specialty Magrave shotgun long out of production - this retired veteran has been well maintained over the years by it's previous owners."
	color = COLOR_DARK_GUNMETAL
	accuracy = 0
	fire_delay = 3.6
	sales_price = 15

/obj/item/gun/projectile/shotgun/pump/voxlegis/sawn
	name = "\improper Sawn Off Voxlegis"
	desc = "A sawn off version of a common shotgun used in the trenches."
	icon_state = "hunting-sawn"
	item_state = "sawnchester"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	w_class = ITEM_SIZE_LARGE
	max_shells = 4
	one_hand_penalty = 0.4
	fire_delay = 3.6
	accuracy = -1
	sales_price = 8
	slowdown_general = 0.03

/obj/item/gun/projectile/shotgun/pump/voxlegis/sawn/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "hunting-sawn"
		item_state = "sawnchester"
		wielded_item_state = "sawnchester-wielded"
	else
		icon_state = "hunting-sawn"
		item_state = "sawnchester"
		wielded_item_state = "sawnchester-wielded"

/obj/item/gun/projectile/automatic/autogun
	name = "Rugged Autogun"
	desc = "A mass-produced slum forged autogun with a simple folding stock, this design loosely based on standard patterns of autogun lacks the embroidery or reliability of it's militarum sisters."
	icon_state = "machinepistol"
	item_state = "machinepistol"
	wielded_item_state = "machinepistol-wielded"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	one_hand_penalty = 1
	accuracy = -1
	fire_delay = 3.2
	sales_price = 8
	slowdown_general = 0.03
	caliber = CALIBER_AUTOGUN
	fire_sound = 'sound/warhammer/gunshot/auto3.ogg'
	ammo_type = /obj/item/ammo_casing/autogun
	magazine_type = /obj/item/ammo_magazine/autogun
	allowed_magazines = /obj/item/ammo_magazine/autogun
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.2, burst_delay=2.2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.2, burst_delay=2.2, burst_accuracy=list(-1,-1,-2), dispersion=null)
		)

/obj/item/gun/projectile/automatic/autogun/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "machinepistol"
		item_state = "machinepistol"
		wielded_item_state = "machinepistol-wielded"
	else
		icon_state = "machinepistol-e"
		item_state = "machinepistol-e"
		wielded_item_state = "machinepistol-wielded-e"

/obj/item/gun/projectile/automatic/autogun/a80
	name = "Nachtwey A80 Autogun"
	desc = "A specialty autogun made by frontier gunsmiths - an improved version of the Mk.22 Autogun with a more stable firing platform."
	icon_state = "autorifle"
	item_state = "autorifle"
	wielded_item_state = "autorifle-wielded"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	one_hand_penalty = 1
	accuracy = -0.5
	fire_delay = 3.1
	sales_price = 8
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.1, burst_delay=2.1, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.1, burst_delay=2.1, burst_accuracy=list(0,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/autogun/a80/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "autorifle"
		item_state = "autorifle"
		wielded_item_state = "autorifle-wielded"
	else
		icon_state = "autorifle-e"
		item_state = "autorifle-e"
		wielded_item_state = "autorifle-wielded-e"

/obj/item/gun/projectile/automatic/autogun/valhalla
	name = "Valhallan Autogun"
	desc = "A rugged autogun of Valhallan design, it has a moderate rate of fire and excellent stopping power."
	icon_state = "auto_grim"
	item_state = "auto_grim"
	wielded_item_state = "auto_grim_wielded"
	magazine_type = /obj/item/ammo_magazine/autogun/militarum
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	one_hand_penalty = 1
	accuracy = 0
	fire_delay = 3.1
	sales_price = 8
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.1, burst_delay=2.1, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.1, burst_delay=2.1, burst_accuracy=list(0,-1,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/autogun/valhalla/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "auto_grim"
		item_state = "auto_grim"
		wielded_item_state = "auto_grim_wielded"
	else
		icon_state = "auto_grim-e"
		item_state = "auto_grim"
		wielded_item_state = "auto_grim_wielded"

/obj/item/gun/projectile/automatic/autogun/krieg
	name = "Krieg Autogun"
	desc = "A rugged autogun of Krieg design, it has a slow rate of fire and excellent stopping power. Chambered with heavy 10mm slugs."
	icon_state = "kriegstubber"
	item_state = "auto_grim"
	wielded_item_state = "auto_grim_wielded"
	ammo_type = /obj/item/ammo_casing/heavy
	magazine_type = /obj/item/ammo_magazine/heavy/ap
	allowed_magazines = /obj/item/ammo_magazine/heavy
	caliber = CALIBER_AUTOHEAVY
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	one_hand_penalty = 1
	accuracy = 0
	fire_delay = 3.5
	sales_price = 8
	slowdown_general = 0.045
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.5, burst_delay=2.1, burst_accuracy=null, dispersion=null), // Lower burst time since 2 shot.
		list(mode_name="2-round bursts", burst=2, fire_delay=3.5, burst_delay=2.1, burst_accuracy=list(0,-1), dispersion=null)
		)

/obj/item/gun/projectile/automatic/autogun/krieg/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "kriegstubber"
		item_state = "auto_grim"
		wielded_item_state = "auto_grim_wielded"
	else
		icon_state = "kriegstubber-e"
		item_state = "auto_grim"
		wielded_item_state = "auto_grim_wielded"

/obj/item/gun/projectile/automatic/slugrifle
	name = "Aegis Pattern Rifle"
	desc = "A very powerful semi-automatic aegis pattern slug rifle. Chambered with heavy 10mm slugs."
	icon_state = "R84"
	item_state = "R84"
	wielded_item_state = "R84"
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	fire_sound = 'sound/warhammer/guns/fire/ltrifle_fire.ogg'
	mag_remove_sound = 'sound/warhammer/guns/interact/arm_magout.ogg'
	mag_insert_sound = 'sound/warhammer/guns/interact/arm_magin.ogg'
	fire_delay = 3.5
	burst = 1
	one_hand_penalty = 2
	accuracy = 1
	sales_price = 16
	slowdown_general = 0.045
	caliber = CALIBER_AUTOHEAVY
	ammo_type = /obj/item/ammo_casing/heavy
	magazine_type = /obj/item/ammo_magazine/heavy/ap
	allowed_magazines = /obj/item/ammo_magazine/heavy

/obj/item/gun/projectile/automatic/slugrifle/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "R84"
		item_state = "R84"
		wielded_item_state = "R84"
	else
		icon_state = "R84-e"
		item_state = "R84"
		wielded_item_state = "R84"

/obj/item/gun/projectile/automatic/slugrifle/scipio
	name = "Scipio Pattern Rifle"
	desc = "An Scipio Pattern Rifle, commonly used by agri-farmers and hunters to deal with the occasional vermin who cross their path, chambered with 7mm handgun rounds. It has a scope attached."
	icon_state = "scopecommando"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	fire_sound = 'sound/warhammer/guns/fire/combatrifle_fire.ogg'
	mag_remove_sound = 'sound/warhammer/guns/interact/combatrifle_magout.ogg'
	mag_insert_sound = 'sound/warhammer/guns/interact/combatrifle_magin.ogg'
	fire_delay = 3.1
	burst = 1
	one_hand_penalty = 1.6
	accuracy = 1.5
	sales_price = 16
	scope_zoom = 2
	scoped_accuracy = 2
	caliber = CALIBER_SLUG_SMALL
	ammo_type = /obj/item/ammo_casing/pistol/tech
	magazine_type = /obj/item/ammo_magazine/pistol/small/ap
	allowed_magazines = /obj/item/ammo_magazine/pistol/small
	slowdown_general = 0.03

/obj/item/gun/projectile/automatic/slugrifle/scipio/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "scopecommando"
		item_state = "battlerifle"
		wielded_item_state = "battlerifle-wielded"
	else
		icon_state = "scopecommando-e"
		item_state = "battlerifle"
		wielded_item_state = "battlerifle-wielded-empty"

/obj/item/gun/projectile/automatic/slugrifle/agri
	name = "Agripinaa Slug rifle"
	desc = "A rugged slug rifle of imperial design, the Agripinaa is a highly accurate battle rifle for the hardened frontiersman. Chambered in 15mm handgun rounds."
	icon_state = "agripinaa"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	fire_sound = 'sound/warhammer/guns/fire/revolver_fire.ogg'
	fire_delay = 3.2
	burst = 1
	one_hand_penalty = 1.6
	accuracy = 1.5
	sales_price = 16
	scope_zoom = 2
	scoped_accuracy = 2
	caliber = CALIBER_SLUG_MAGNUM
	ammo_type = /obj/item/ammo_casing/magnum
	magazine_type = /obj/item/ammo_magazine/magnum
	allowed_magazines = /obj/item/ammo_magazine/magnum
	slowdown_general = 0.04

/obj/item/gun/projectile/automatic/slugrifle/agri/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "agripinaa"
		item_state = "agripinaa"
		wielded_item_state = "agripinaa"
	else
		icon_state = "agripinaa-e"
		item_state = "agripinaa-e"
		wielded_item_state = "agripinaa-e"


/obj/item/gun/projectile/automatic/autogun/stubber
	name = "Heavy Stubber"
	desc = "Belt-fed 6.8mm heavy stubber, the weapon was fitted with both backsight and foresight, carrying handle, and perforated outer barrel to aid in cooling."
	icon_state = "hmg"
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_GARGANTUAN
	one_hand_penalty = 2
	accuracy = 0
	fire_delay = 3.2
	sales_price = 20
	caliber = CALIBER_AUTOGUN
	fire_sound = 'sound/warhammer/gunshot/auto3.ogg'
	ammo_type = /obj/item/ammo_casing/autogun/militarum
	magazine_type = /obj/item/ammo_magazine/autogunheavy
	allowed_magazines = /obj/item/ammo_magazine/autogunheavy
	slowdown_general = 0.05
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.2, burst_delay=2.2, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=4, fire_delay=3.2, burst_delay=2.2, burst_accuracy=list(0,-1,-2), dispersion=null)
		)

/obj/item/gun/projectile/automatic/autogun/stubber/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "hmg"
		item_state = "hmg"
		wielded_item_state = "hmg-wielded"
	else
		icon_state = "hmg-e"
		item_state = "hmg-e"
		wielded_item_state = "hmg-wielded-e"

/obj/item/gun/projectile/automatic/autogun/stubber/cognis
	name = "Cognis Pattern Heavy Stubber"
	desc = "Mechanicus forged belt-fed 6.8mm heavy stubber, this weapon is designed around greater accuracy and tactical purpose."
	icon_state = "cognisLMG"
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_GARGANTUAN
	one_hand_penalty = 2.2
	accuracy = 0.5
	fire_delay = 3.1
	sales_price = 25
	caliber = CALIBER_AUTOGUN
	fire_sound = 'sound/warhammer/gunshot/auto3.ogg'
	ammo_type = /obj/item/ammo_casing/autogun/militarum
	magazine_type = /obj/item/ammo_magazine/autogunheavy/ap
	allowed_magazines = /obj/item/ammo_magazine/autogunheavy
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.1, burst_delay=2.1, burst_accuracy=null, dispersion=null),
		list(mode_name="2-round bursts", burst=2, fire_delay=3.1, burst_delay=2.1, burst_accuracy=list(0,0), dispersion=null),
		list(mode_name="4-round bursts", burst=4, fire_delay=3.1, burst_delay=2.1, burst_accuracy=list(0,0,-1,-2), dispersion=null)
		)

/obj/item/gun/projectile/automatic/autogun/stubber/cognis/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "cognisLMG"
		item_state = "hmg"
		wielded_item_state = "hmg-wielded"
	else
		icon_state = "cognisLMG-e"
		item_state = "hmg-e"
		wielded_item_state = "hmg-wielded-e"

/obj/item/gun/projectile/automatic/boltrifle
	name = "Godwyn Bolt Rifle" // For future, create carbine, heavy bolter versions. Carbine smaller magazine, size, slowdown and one-handed handling.
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in XIIIth Chapter Ultramarines's colour scheme."
	icon_state = "ultrabolter"
	item_state = "hbolter"
	wielded_item_state = "hbolter"
	w_class = ITEM_SIZE_GARGANTUAN
	force = 30
	slot_flags = SLOT_BACK
	caliber = ".95"
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2, TECH_ILLEGAL = 2)
	ammo_type = /obj/item/ammo_casing/bolter/astartes
	load_method = MAGAZINE
	magazine_type = /obj/item/ammo_magazine/bolt_rifle_magazine_astartes
	allowed_magazines = /obj/item/ammo_magazine/bolt_rifle_magazine_astartes
	fire_sound = 'sound/warhammer/gunshot/loudbolt.ogg'
	mag_remove_sound = 'sound/warhammer/guns/interact/ltrifle_magout.ogg'
	mag_insert_sound = 'sound/warhammer/guns/interact/ltrifle_magin.ogg'
	load_sound = 'sound/warhammer/guns/interact/ltrifle_cock.ogg'
	fire_delay = 3.7
	one_hand_penalty = 2
	accuracy = -1.5
	sales_price = 60
	slowdown_general = 0.075
	str_requirement = 1

	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.7, burst_delay=2.7, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.7, burst_delay=2.7, burst_accuracy=list(-1,-2,-2), dispersion=null)
		)

/obj/item/gun/projectile/automatic/boltrifle/on_update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ultrabolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		icon_state = "ultrabolter-e"
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/raven
	name = "Godwyn Mark Vb Pattern Bolter"
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in XIXth Chapter Raven Guards's colour scheme."
	icon_state = "ravenbolter"

/obj/item/gun/projectile/automatic/boltrifle/ravenbolter/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "ravenbolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/sally
	name = "Godwyn Mark Vb Pattern Bolter"
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in XVIIIth Chapter Salamanders's colour scheme."
	icon_state = "sallybolter"

/obj/item/gun/projectile/automatic/boltrifle/sally/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "sallybolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		icon_state = "sallybolter-e"
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/bang
	name = "Baal Mark Vb Pattern Bolter"
	desc = "The Adeptus Astartes's legendary and destructive Bolter Rifle, This one is painted in IXth Chapter Blood Angels's colour scheme."
	icon_state = "bangbolter"

/obj/item/gun/projectile/automatic/boltrifle/bang/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "bangbolter-30"
		item_state = "hbolter"
		wielded_item_state = "hbolter"
	else
		icon_state = "bangbolter-e"
		item_state = "hbolter-e"
		wielded_item_state = "hbolter-e"

/obj/item/gun/projectile/automatic/boltrifle/lockebolter //needs lots of work and love, ok standin for now
	name = "Locke Pattern bolter"
	desc = "The Locke Pattern Bolter, designed for Adeptus Arbites personnel when heavier firepower are required. Can also be found in hands of Astra Militarum officers, veterans and Commissar, Though relatively uncommon. It is a human-sized Bolter, Thus it's very popular among the troops and the lucky ones who get their hands on one of these bad boy."
	icon_state = "lockebolter"
	item_state = "autoshotty"
	wielded_item_state = "autoshotty-wielded"
	color = COLOR_DARK_GUNMETAL
	w_class = ITEM_SIZE_HUGE
	force = 15
	slot_flags = SLOT_BACK
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 1, TECH_ILLEGAL = 2)
	load_method = MAGAZINE
	one_hand_penalty = 1.7
	caliber = ".75"
	ammo_type = /obj/item/ammo_casing/bolter
	magazine_type = /obj/item/ammo_magazine/bolt_rifle_magazine
	allowed_magazines = /obj/item/ammo_magazine/bolt_rifle_magazine
	fire_delay = 3.6
	burst = 1
	accuracy = -1.25
	sales_price = 60
	slowdown_general = 0.05
	str_requirement = 0
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.8, burst_delay=2.8, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.8, burst_delay=2.8, burst_accuracy=list(-1,-2,-2), dispersion=null)
		)
/obj/item/gun/projectile/automatic/boltrifle/lockebolter/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "lockebolter"
		item_state = "autoshotty"
		wielded_item_state = "autoshotty-wielded"
	else
		icon_state = "lockebolter-e"
		item_state = "autoshotty-e"
		wielded_item_state = "autoshotty-wielded-e"

/obj/item/gun/projectile/automatic/boltrifle/lockebolter/drusian
	name = "Drusian Pattern bolter"
	desc = "The Drusian Pattern Bolter, designed initially for Adeptus Arbites personnel when heavier firepower are required -- this Pattern is a variant with higher factorum standards and is produced by the Priests of Mars under the greatest of machine scrutiny."
	icon_state = "lockebolter"
	one_hand_penalty = 1.3
	fire_delay = 3.5
	accuracy = -1
	sales_price = 75
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.5, burst_delay=2.5, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.5, burst_delay=2.5, burst_accuracy=list(-1,-1,-2), dispersion=null)
		)

/obj/item/gun/projectile/automatic/boltrifle/lockebolter/sister
	name = "Godwyn-De'az Pattern Bolter Rifle"
	desc = "The standard issue pattern for the Adeptus Sororitas, this pattern is millenia old and largely is no longer produced, save for the orders of the sisterhood -- despite it's ancients designs the make and quality makes this ancient design surpass more modern bolters."
	icon_state = "sisterbolter"
	one_hand_penalty = 1
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	fire_delay = 3.4 // Faster firing compared to Drusian, but less accurate. Designed for one handed use while wielding a chainsword.
	accuracy = -1
	sales_price = 75
	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=3.4, burst_delay=2.4, burst_accuracy=null, dispersion=null),
		list(mode_name="3-round bursts", burst=3, fire_delay=3.4, burst_delay=2.4, burst_accuracy=list(-1,-1,-2), dispersion=null)
		)

/obj/item/gun/projectile/automatic/boltrifle/lockebolter/sister/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "sisterbolter"
		item_state = "autoshotty"
		wielded_item_state = "autoshotty-wielded"
	else
		icon_state = "sisterbolter-e"
		item_state = "autoshotty-e"
		wielded_item_state = "autoshotty-wielded-e"

// Mechanicus

/obj/item/gun/projectile/automatic/radcarbine
	name = "Radium Carbine"
	desc = "A deadly and highly dangerous personal weapon that are used exclusively by the forces of the Skitarii Legions of the Adeptus Mechanicus. It fires highly radioactive rounds."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "emitter_carbine"
	fire_sound = 'sound/warhammer/ds/jav_fire.ogg'
	caliber = "rad"
	one_hand_penalty = 1.5
	accuracy = 0
	fire_delay = 3.2
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	magazine_type = /obj/item/ammo_magazine/radcarbine
	allowed_magazines = /obj/item/ammo_magazine/radcarbine
	firemodes = list()
	w_class = ITEM_SIZE_HUGE

/obj/item/gun/projectile/automatic/radcarbine/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "emitter_carbine"
		item_state = "laer"
		wielded_item_state = "laer"
	else
		icon_state = "emitter_carbine-e"
		item_state = "laer"
		wielded_item_state = "laer"

/obj/item/gun/projectile/automatic/radcarbine/radpistol
	name = "Radium Pistol"
	desc = "A sidearm favoured by Skitarii Vanguards and Ranger Alphas."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "teslar"
	fire_sound = 'sound/warhammer/ds/jav_fire.ogg'
	caliber = "rad"
	one_hand_penalty = 1
	accuracy = -0.5
	fire_delay = 2.9
	slowdown_general = 0
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	magazine_type = /obj/item/ammo_magazine/radcarbine/radpistol
	allowed_magazines = /obj/item/ammo_magazine/radcarbine/radpistol
	firemodes = list()
	w_class = ITEM_SIZE_LARGE

/obj/item/gun/projectile/automatic/radcarbine/radpistol/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "teslar"
		item_state = "pulse_pistol"
		wielded_item_state = "pulse_pistol"
	else
		icon_state = "teslar0"
		item_state = "pulse_pistol0"
		wielded_item_state = "pulse_pistol0"

// XENOS

/obj/item/gun/projectile/automatic/gaussrifle
	name ="Gauss Rifle"
	desc = "A strange alien weapon which hums with resonant frequencies alien to mankind."
	icon = 'icons/map_project/port/ds13.dmi'
	fire_sound = 'sound/warhammer/ds/pulse_shot.ogg'
	caliber = "pmag"
	one_hand_penalty = 3.5
	burst_delay = 1.8
	accuracy = 0
	fire_delay = 2.8
	slot_flags = SLOT_BACK
	magazine_type = /obj/item/ammo_magazine/pulsemag
	allowed_magazines = /obj/item/ammo_magazine/pulsemag
	w_class = ITEM_SIZE_GARGANTUAN
	slowdown_general = 0.07

	firemodes = list(
		list(mode_name="semi-automatic", burst=1, fire_delay=2.8, burst_accuracy=null, dispersion=null, automatic = 0),
		list(mode_name="3-round bursts", burst=3, fire_delay=3, burst_accuracy=list(0,-1,-1), dispersion=null, automatic = 0),
		)

/obj/item/gun/projectile/automatic/gaussrifle/update_icon()
	..()
	if(ammo_magazine)
		icon_state = "pulserifle"
		item_state = "pulserifle"
		wielded_item_state = "pulserifle-wielded"
	else
		icon_state = "pulserifle"
		item_state = "pulserifle"
		wielded_item_state = "pulserifle-wielded"
