/datum/design/item/weapon/AssembleDesignName()
	..()
	name = "War Gear: ([item_name])"

/datum/design/item/weapon/AssembleDesignDesc()
	if(!desc)
		if(build_path)
			var/obj/item/I = build_path
			desc = initial(I.desc)
		..()

/datum/design/item/weapon/chemsprayer
	desc = "An advanced chem spraying device."
	id = "chemsprayer"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_BIO = 2)
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_GLASS = 2000)
	build_path = /obj/item/reagent_containers/spray/chemsprayer
	sort_string = "TAAAA"

/datum/design/item/weapon/rapidsyringe
	id = "rapidsyringe"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_BIO = 2)
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 1000)
	build_path = /obj/item/gun/launcher/syringe/rapid
	sort_string = "TAAAB"

/datum/design/item/weapon/large_grenade
	id = "large_Grenade"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 2)
	materials = list(MATERIAL_STEEL = 1500)
	build_path = /obj/item/grenade/chem_grenade/large
	sort_string = "TABAA"

/datum/design/item/weapon/anti_photon
	id = "anti_photon"
	req_tech = list(TECH_BLUESPACE = 4, TECH_MATERIAL = 4)
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_GLASS = 1000, MATERIAL_DIAMOND = 1000)
	build_path = /obj/item/grenade/anti_photon
	sort_string = "TABAB"

/datum/design/item/weapon/flora_gun
	id = "flora_gun"
	req_tech = list(TECH_MATERIAL = 2, TECH_BIO = 3, TECH_POWER = 3)
	materials = list(MATERIAL_STEEL = 1000, MATERIAL_GLASS = 500, MATERIAL_URANIUM = 500)
	build_path = /obj/item/gun/energy/floragun
	sort_string = "TACAA"

/datum/design/item/weapon/advancedflash
	id = "advancedflash"
	req_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	materials = list(MATERIAL_STEEL = 1000, MATERIAL_GLASS = 2000, MATERIAL_SILVER = 500)
	build_path = /obj/item/device/flash/advanced
	sort_string = "TADAA"

/datum/design/item/weapon/stunrevolver
	id = "stunrevolver"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 5, TECH_POWER = 3)
	materials = list(MATERIAL_STEEL = 1000, MATERIAL_GLASS = 1000, MATERIAL_SILVER = 500)
	build_path = /obj/item/gun/energy/stunrevolver
	sort_string = "TADAB"

/datum/design/item/weapon/stunrifle
	id = "stun_rifle"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 5, TECH_POWER = 4)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_GLASS = 1000, MATERIAL_SILVER = 500)
	build_path = /obj/item/gun/energy/stunrevolver/rifle
	sort_string = "TADAC"

/datum/design/item/weapon/lasercannon
	desc = "The lasing medium of this prototype is enclosed in a tube lined with uranium-235 and subjected to high neutron flux in a nuclear reactor core."
	id = "lasercannon"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 4, TECH_POWER = 4)
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/gun/energy/lasercannon
	sort_string = "TAEAB"

/datum/design/item/weapon/xraypistol
	id = "xraypistol"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_MAGNET = 3, TECH_ESOTERIC = 4)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_GLASS = 500, MATERIAL_URANIUM = 1500)
	build_path = /obj/item/gun/energy/xray/pistol
	sort_string = "TAFAA"

/datum/design/item/weapon/xrayrifle
	id = "xrayrifle"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3, TECH_MAGNET = 4, TECH_ESOTERIC = 4)
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_GLASS = 1000, MATERIAL_URANIUM = 2000)
	build_path = /obj/item/gun/energy/xray
	sort_string = "TAFAB"

/datum/design/item/weapon/grenadelauncher
	id = "grenadelauncher"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 1000)
	build_path = /obj/item/gun/launcher/grenade
	sort_string = "TAGAA"

/datum/design/item/weapon/flechette
	id = "flechette"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_MAGNET = 3)
	materials = list(MATERIAL_STEEL = 8000, MATERIAL_GOLD = 4000, MATERIAL_SILVER = 4000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/gun/magnetic/railgun/flechette
	sort_string = "TAHAA"

/datum/design/item/weapon/phoronpistol
	id = "ppistol"
	req_tech = list(TECH_COMBAT = 4, TECH_PHORON = 4)
	materials = list(MATERIAL_STEEL = 5000, MATERIAL_GLASS = 1000, MATERIAL_PHORON = 3000)
	build_path = /obj/item/gun/energy/toxgun
	sort_string = "TAJAA"

/datum/design/item/weapon/decloner
	id = "decloner"
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 5, TECH_BIO = 6, TECH_POWER = 4)
	materials = list(MATERIAL_GOLD = 5000,MATERIAL_URANIUM = 5000)
	chemicals = list(/datum/reagent/mutagen = 40)
	build_path = /obj/item/gun/energy/decloner
	sort_string = "TAJAB"

/datum/design/item/weapon/wt550
	id = "wt550"
	req_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 2)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_SILVER = 3000, MATERIAL_DIAMOND = 1500)
	build_path = /obj/item/gun/projectile/automatic/sec_smg
	sort_string = "TAPAA"

/datum/design/item/weapon/smg
	id = "smg"
	req_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 4)
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_SILVER = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/gun/projectile/automatic
	sort_string = "TAPAB"

/datum/design/item/weapon/bullpup
	id = "bullpup"
	req_tech = list(TECH_COMBAT = 8, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 4000, MATERIAL_SILVER = 3000, MATERIAL_DIAMOND = 3000)
	build_path = /obj/item/gun/projectile/automatic/bullpup_rifle
	sort_string = "TAPAC"

// Warhammer 40k
// Warhammer 40k

/datum/design/item/weapon/thrower
	name = "xenos thrower"
	id = "thrower"
	req_tech = list(TECH_MATERIAL = 6, TECH_ENGINEERING = 7, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_URANIUM = 7000, MATERIAL_DIAMOND = 5000)
	build_path = /obj/item/gun/projectile/heavysniper/boltaction/imperial/thrower
	sort_string = "TAPAD"

/datum/design/item/weapon/shotgunmagrave
	name = "belle magrave"
	id = "shotgunmagrave"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/gun/projectile/shotgun/pump/voxlegis/magrave
	sort_string = "TAPAE"

/datum/design/item/weapon/autogun_val
	name = "valhallan autogun"
	id = "autogun_val"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/gun/projectile/automatic/autogun/valhalla
	sort_string = "TAPAF"

/datum/design/item/weapon/autogun_krieg
	name = "krieg autogun"
	id = "autogun_krieg"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 2000, MATERIAL_DIAMOND = 2000)
	build_path = /obj/item/gun/projectile/automatic/autogun/krieg
	sort_string = "TAPAG"

/datum/design/item/weapon/stubber
	name = "heavy stubber"
	id = "stubber"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 5500, MATERIAL_URANIUM = 4000, MATERIAL_DIAMOND = 4000)
	build_path = /obj/item/gun/projectile/automatic/autogun/stubber
	sort_string = "TAPAH"

/datum/design/item/weapon/stubbercog
	name = "heavy cognis stubber"
	id = "stubbercog"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 5, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 6500, MATERIAL_URANIUM = 5000, MATERIAL_DIAMOND = 5000)
	build_path = /obj/item/gun/projectile/automatic/autogun/stubber/cognis
	sort_string = "TAPAI"

/datum/design/item/weapon/boltrifle_astartes
	name = "astartes bolt rifle"
	id = "boltrifleastartes"
	req_tech = list(TECH_MATERIAL = 6, TECH_ENGINEERING = 6, TECH_COMBAT = 6)
	materials = list(MATERIAL_STEEL = 15500, MATERIAL_URANIUM = 16000, MATERIAL_DIAMOND = 16000)
	build_path = /obj/item/gun/projectile/automatic/boltrifle
	sort_string = "TAPAJ"

/datum/design/item/weapon/boltrifle
	name = "bolt rifle"
	id = "boltrifle"
	req_tech = list(TECH_MATERIAL = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 6500, MATERIAL_URANIUM = 6000, MATERIAL_DIAMOND = 6000)
	build_path = /obj/item/gun/projectile/automatic/boltrifle/lockebolter
	sort_string = "TAPAK"

/datum/design/item/weapon/lasgun
	name = "kantrael lasgun"
	id = "lasgun"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_MAGNET = 4, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 4000, MATERIAL_DIAMOND = 6000)
	build_path = /obj/item/gun/energy/lasgun
	sort_string = "TAPAL"

/datum/design/item/weapon/lasgun_lucius
	name = "lucius lasgun"
	id = "lasgun_lucius"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_MAGNET = 5, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4700, MATERIAL_URANIUM = 4300, MATERIAL_DIAMOND = 6400)
	build_path = /obj/item/gun/energy/lasgun/lucius
	sort_string = "TAPAM"

/datum/design/item/weapon/lasgun_hotshot
	name = "hotshot lasgun"
	id = "lasgun_hotshot"
	req_tech = list(TECH_MATERIAL = 5, TECH_ENGINEERING = 5, TECH_MAGNET = 6, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 4000, MATERIAL_URANIUM = 6300, MATERIAL_DIAMOND = 8400)
	build_path = /obj/item/gun/energy/lasgun/hotshot
	sort_string = "TAPAN"

/datum/design/item/weapon/volkite
	name = "volkite carver"
	id = "volkite"
	req_tech = list(TECH_MATERIAL = 6, TECH_ENGINEERING = 6, TECH_MAGNET = 7, TECH_COMBAT = 6)
	materials = list(MATERIAL_STEEL = 4000, MATERIAL_URANIUM = 7300, MATERIAL_DIAMOND = 9400)
	build_path = /obj/item/gun/energy/lasgun/hotshot/volkite
	sort_string = "TAPAO"

/datum/design/item/weapon/meltagun
	name = "melta gun"
	id = "meltagun"
	req_tech = list(TECH_MATERIAL = 6, TECH_ENGINEERING = 5, TECH_MAGNET = 6, TECH_COMBAT = 6)
	materials = list(MATERIAL_STEEL = 8000, MATERIAL_URANIUM = 8900, MATERIAL_DIAMOND = 6400)
	build_path = /obj/item/gun/energy/meltagun
	sort_string = "TAPAP"

/datum/design/item/weapon/plasmarifle
	name = "plasma rifle"
	id = "plasmarifle"
	req_tech = list(TECH_MATERIAL = 6, TECH_ENGINEERING = 6, TECH_MAGNET = 6, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 4400, MATERIAL_URANIUM = 6900, MATERIAL_DIAMOND = 8400)
	build_path = /obj/item/gun/energy/plasma
	sort_string = "TAPAQ"

/datum/design/item/weapon/plasmapistol
	name = "plasma pistol"
	id = "plasmapistol"
	req_tech = list(TECH_MATERIAL = 7, TECH_ENGINEERING = 7, TECH_MAGNET = 6, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 2400, MATERIAL_URANIUM = 6300, MATERIAL_DIAMOND = 8100)
	build_path = /obj/item/gun/energy/plasma/pistol
	sort_string = "TAPAR"

/datum/design/item/weapon/plasmapistol_mech
	name = "mechanicus plasma pistol"
	id = "mplasmapistol"
	req_tech = list(TECH_MATERIAL = 8, TECH_ENGINEERING = 8, TECH_MAGNET = 7, TECH_COMBAT = 6)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_URANIUM = 7600, MATERIAL_DIAMOND = 9300)
	build_path = /obj/item/gun/energy/plasma/pistol/mechanicus
	sort_string = "TAPAR"

/datum/design/item/weapon/ammunition/AssembleDesignName()
	..()
	name = "Munition: ([item_name])"

/datum/design/item/weapon/ammunition/thrower_ammo
	name = "xenos thrower ammo"
	id = "thrower_ammo"
	desc = "A clip of rods for the xenos thrower."
	req_tech = list(TECH_MATERIAL = 5, TECH_ENGINEERING = 6, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 1000, MATERIAL_URANIUM = 700, MATERIAL_DIAMOND = 500)
	build_path = /obj/item/ammo_magazine/speedloader/clip/sniper/xenos
	sort_string = "TATAA"

/datum/design/item/weapon/ammunition/shotgun_ap
	name = "16mm AP rounds"
	id = "shotgun_ap"
	desc = "A handfull of AP slugs for 16mm shotguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 2, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 1500, MATERIAL_DIAMOND = 400)
	build_path = /obj/item/ammo_magazine/shotholder/ap
	sort_string = "TATAB"

/datum/design/item/weapon/ammunition/shotgun_kp
	name = "16mm KP rounds"
	id = "shotgun_kp"
	desc = "A handfull of KP slugs for 16mm shotguns"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 1000, MATERIAL_URANIUM = 200, MATERIAL_DIAMOND = 400)
	build_path = /obj/item/ammo_magazine/shotholder/kp
	sort_string = "TATAC"

/datum/design/item/weapon/ammunition/shotgun_ms
	name = "16mm MS rounds"
	id = "shotgun_ms"
	desc = "A handfull of KP slugs for 16mm shotguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 1000, MATERIAL_URANIUM = 200, MATERIAL_DIAMOND = 200)
	build_path = /obj/item/ammo_magazine/shotholder/ms
	sort_string = "TATAD"

/datum/design/item/weapon/ammunition/autogun_ap
	name = "6.8mm AP rounds"
	id = "autogun_ap"
	desc = "A magazine for 6.8mm autoguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 2, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 3500, MATERIAL_URANIUM = 1000)
	build_path = /obj/item/ammo_magazine/autogun/militarum/ap
	sort_string = "TATAE"

/datum/design/item/weapon/ammunition/autogun_kp
	name = "6.8mm KP rounds"
	id = "autogun_kp"
	desc = "A magazine for 6.8mm autoguns"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 2, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 700, MATERIAL_DIAMOND = 700)
	build_path = /obj/item/ammo_magazine/autogun/militarum/kp
	sort_string = "TATAF"

/datum/design/item/weapon/ammunition/autogun_ms
	name = "6.8mm MS rounds"
	id = "autogun_ms"
	desc = "A magazine for 6.8mm autoguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 400, MATERIAL_DIAMOND = 400)
	build_path = /obj/item/ammo_magazine/autogun/militarum/ms
	sort_string = "TATAG"

/datum/design/item/weapon/ammunition/hautogun_ap
	name = "10mm AP rounds"
	id = "hautogun_ap"
	desc = "A magazine for 10mm autoguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 2, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 3500, MATERIAL_URANIUM = 1000)
	build_path = /obj/item/ammo_magazine/heavy/ap
	sort_string = "TATAH"

/datum/design/item/weapon/ammunition/hautogun_kp
	name = "10mm KP rounds"
	id = "hautogun_kp"
	desc = "A magazine for 10mm autoguns"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 2, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 700, MATERIAL_DIAMOND = 700)
	build_path = /obj/item/ammo_magazine/heavy/kp
	sort_string = "TATAI"

/datum/design/item/weapon/ammunition/hautogun_ms
	name = "10mm MS rounds"
	id = "hautogun_ms"
	desc = "A magazine for 10mm autoguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 400, MATERIAL_DIAMOND = 400)
	build_path = /obj/item/ammo_magazine/heavy/ms
	sort_string = "TATAJ"

/datum/design/item/weapon/ammunition/sautogun_ap
	name = "6.8mm box stubber AP rounds"
	id = "sautogun_ap"
	desc = "A magazine for 6.8mm box stubbers"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 2, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 5500, MATERIAL_URANIUM = 4000)
	build_path = /obj/item/ammo_magazine/autogunheavy/ap
	sort_string = "TATAK"

/datum/design/item/weapon/ammunition/sautogun_kp
	name = "6.8mm box stubber KP rounds"
	id = "sautogun_kp"
	desc = "A magazine for 6.8mm box stubbers"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 2, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 4400, MATERIAL_DIAMOND = 1400)
	build_path = /obj/item/ammo_magazine/autogunheavy/kp
	sort_string = "TATAL"

/datum/design/item/weapon/ammunition/sautogun_ms
	name = "6.8mm box stubber MS rounds"
	id = "sautogun_ms"
	desc = "A magazine for 6.8mm box stubbers"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 3200, MATERIAL_DIAMOND = 800)
	build_path = /obj/item/ammo_magazine/autogunheavy/ms
	sort_string = "TATAM"

/datum/design/item/weapon/ammunition/aboltrifle
	name = ".95 bolt rifle magazine"
	id = "boltriflemag_astartes"
	desc = "A gigantic magazine for .95 bolt rifles"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 8500, MATERIAL_URANIUM = 6200, MATERIAL_DIAMOND = 1600)
	build_path = /obj/item/ammo_magazine/bolt_rifle_magazine_astartes
	sort_string = "TATAN"

/datum/design/item/weapon/ammunition/boltrifle
	name = ".75 bolt rifle magazine"
	id = "boltriflemag"
	desc = "A magazine for .75 bolt rifles"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 4500, MATERIAL_URANIUM = 3500, MATERIAL_DIAMOND = 900)
	build_path = /obj/item/ammo_magazine/bolt_rifle_magazine
	sort_string = "TATAO"

/datum/design/item/weapon/ammunition/boltrifle_kp
	name = ".75 KP bolt rifle magazine"
	id = "boltriflemag_kp"
	desc = "A magazine for .75 bolt rifles"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 3500, MATERIAL_URANIUM = 4500, MATERIAL_DIAMOND = 1900)
	build_path = /obj/item/ammo_magazine/bolt_rifle_magazine/kp
	sort_string = "TATAP"

/datum/design/item/weapon/ammunition/boltrifle_ms
	name = ".75 MS bolt rifle magazine"
	id = "boltriflemag_ms"
	desc = "A magazine for .75 bolt rifles"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 4, TECH_COMBAT = 5)
	materials = list(MATERIAL_STEEL = 3500, MATERIAL_URANIUM = 4200, MATERIAL_DIAMOND = 1800)
	build_path = /obj/item/ammo_magazine/bolt_rifle_magazine/ms
	sort_string = "TATAQ"

/datum/design/item/weapon/ammunition/boltpistol
	name = ".75 bolt pistol magazine"
	id = "boltpistolmag"
	desc = "A magazine for .75 bolt pistols"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 2500, MATERIAL_DIAMOND = 400)
	build_path = /obj/item/ammo_magazine/bolt_pistol_magazine
	sort_string = "TATAR"

/datum/design/item/weapon/ammunition/boltpistol_kp
	name = ".75 KP bolt pistol magazine"
	id = "boltpistolmag_kp"
	desc = "A magazine for .75 bolt pistols"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 3500, MATERIAL_DIAMOND = 800)
	build_path = /obj/item/ammo_magazine/bolt_pistol_magazine/kp
	sort_string = "TATAS"

/datum/design/item/weapon/ammunition/boltpistol_ms
	name = ".75 MS bolt pistol magazine"
	id = "boltpistolmag_ms"
	desc = "A magazine for .75 bolt pistols"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 4)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 3200, MATERIAL_DIAMOND = 600)
	build_path = /obj/item/ammo_magazine/bolt_pistol_magazine/ms
	sort_string = "TATAT"

/datum/design/item/weapon/ammunition/laspack
	name = "lasgun powerpack"
	id = "laspack"
	desc = "A high power laspack for lasguns"
	req_tech = list(TECH_MATERIAL = 3, TECH_ENGINEERING = 3, TECH_COMBAT = 2)
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 2200)
	build_path = /obj/item/cell/device/high/laspack
	sort_string = "TATAU"

/datum/design/item/weapon/ammunition/laspack_hot
	name = "hotshot powerpack"
	id = "hlaspack"
	desc = "A high power laspack for lasguns"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 1500, MATERIAL_URANIUM = 3200)
	build_path = /obj/item/cell/device/high/laspack/hotshot
	sort_string = "TATAV"

/datum/design/item/weapon/ammunition/laspack_mech
	name = "hotshot powerpack II"
	id = "mlaspack"
	desc = "A high power laspack for lasguns"
	req_tech = list(TECH_MATERIAL = 5, TECH_ENGINEERING = 5, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 1500, MATERIAL_URANIUM = 4200)
	build_path = /obj/item/cell/device/high/mechanicus
	sort_string = "TATAW"

/datum/design/item/weapon/ammunition/melta
	name = "meltapack"
	id = "meltapack"
	desc = "A fuel canister for meltaguns"
	req_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4, TECH_COMBAT = 3)
	materials = list(MATERIAL_STEEL = 1900, MATERIAL_URANIUM = 3000)
	build_path = /obj/item/cell/device/high/melta
	sort_string = "TATAX"

// Non Warhammer Ammo

/datum/design/item/weapon/ammunition/ammo_small
	id = "ammo_small"
	desc = "A box of small pistol rounds."
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 3750, MATERIAL_SILVER = 100)
	build_path = /obj/item/ammo_magazine/box/smallpistol
	sort_string = "TBAAA"

/datum/design/item/weapon/ammunition/ammo_flechette
	id = "ammo_flechette"
	desc = "A high capacity magazine of armor piercing flechette."
	req_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 4)
	materials = list(MATERIAL_STEEL = 2000, MATERIAL_SILVER = 500, MATERIAL_DIAMOND = 200)
	build_path = /obj/item/ammo_magazine/proto_smg
	sort_string = "TBAAB"

/datum/design/item/weapon/ammunition/stunshell
	desc = "A stunning shell for a shotgun."
	id = "stunshell"
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	materials = list(MATERIAL_STEEL = 4000)
	build_path = /obj/item/ammo_casing/shotgun/stunshell
	sort_string = "TBAAC"

/datum/design/item/weapon/ammunition/ammo_emp_small
	name = "haywire 7mm"
	id = "ammo_emp_small"
	desc = "A box of small pistol rounds with integrated EMP charges."
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 750)
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	build_path = /obj/item/ammo_magazine/box/emp/smallpistol
	sort_string = "TBAAD"

/datum/design/item/weapon/ammunition/ammo_emp_pistol
	name = "haywire 10mm"
	id = "ammo_emp_pistol"
	desc = "A box of pistol rounds fitted with integrated EMP charges."
	materials = list(MATERIAL_STEEL = 2500, MATERIAL_URANIUM = 750)
	req_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3)
	build_path = /obj/item/ammo_magazine/box/emp/pistol
	sort_string = "TBAAF"

/datum/design/item/weapon/ammunition/ammo_emp_slug
	id = "ammo_emp_slug"
	desc = "A shotgun slug with an integrated EMP charge."
	materials = list(MATERIAL_STEEL = 3000, MATERIAL_URANIUM = 1000)
	req_tech = list(TECH_COMBAT = 4, TECH_MATERIAL = 3)
	build_path = /obj/item/ammo_casing/shotgun/emp
	sort_string = "TBAAG"
