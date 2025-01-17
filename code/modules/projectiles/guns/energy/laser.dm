/obj/item/gun/energy/laser
	name = "laser carbine"
	desc = "A Vostroyan G40E carbine, designed to kill with concentrated energy blasts."
	icon = 'icons/obj/guns/laser_carbine.dmi'
	icon_state = "laser"
	item_state = "laser"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	w_class = ITEM_SIZE_HUGE
	safety_state = 1 // Lasguns are on safe by default.
	force = 10
	fire_delay = 4
	one_hand_penalty = 2
	bulk = GUN_BULK_RIFLE
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	matter = list(MATERIAL_STEEL = 2000)
	projectile_type = /obj/item/projectile/beam/midlaser
	wielded_item_state = "laser-wielded"

/obj/item/gun/energy/laser/mounted
	self_recharge = 1
	use_external_power = 1
	one_hand_penalty = 0 //just in case
	has_safety = FALSE

/obj/item/gun/energy/laser/practice
	name = "practice laser carbine"
	desc = "A modified version of the HI G40E, this one fires less concentrated energy bolts designed for target practice."
	icon_state = "laserp"
	projectile_type = /obj/item/projectile/beam/practice
	charge_cost = 10 //How much energy is needed to fire.

/obj/item/gun/energy/laser/practice/proc/hacked()
	return projectile_type != /obj/item/projectile/beam/practice

/obj/item/gun/energy/laser/practice/emag_act(remaining_charges, mob/user, emag_source)
	if(hacked())
		return NO_EMAG_ACT
	to_chat(user, SPAN_WARNING("You disable the safeties on [src] and crank the output to the lethal levels."))
	desc += " Its safeties are disabled and output is set to dangerous levels."
	projectile_type = /obj/item/projectile/beam/midlaser
	charge_cost = 20
	max_shots = rand(3,6) //will melt down after those
	return 1

/obj/item/gun/energy/laser/practice/handle_post_fire(mob/user, atom/target, pointblank=0, reflex=0)
	..()
	if(hacked())
		max_shots--
		if(!max_shots) //uh hoh gig is up
			to_chat(user, SPAN_DANGER("\The [src] sizzles in your hands, acrid smoke rising from the firing end!"))
			desc += " The optical pathway is melted and useless."
			projectile_type = null

/obj/item/gun/energy/retro
	name = "retro laser"
	icon = 'icons/obj/guns/retro_laser.dmi'
	icon_state = "retro"
	item_state = "retro"
	desc = "An older model of the basic lasergun. Nevertheless, it is still quite deadly and easy to maintain, making it a favorite amongst pirates and other outlaws."
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	projectile_type = /obj/item/projectile/beam
	fire_delay = 4 //old technology, and a pistol

/obj/item/gun/energy/captain
	name = "antique laser gun"
	icon = 'icons/obj/guns/caplaser.dmi'
	icon_state = "caplaser"
	item_state = "caplaser"
	desc = "A rare weapon, handcrafted by a now defunct specialty manufacturer on Holy Terrafor a small fortune. It's certainly aged well."
	force = 5
	slot_flags = SLOT_BELT|SLOT_HOLSTER //too unusually shaped to fit in a holster
	w_class = ITEM_SIZE_NORMAL
	projectile_type = /obj/item/projectile/beam
	origin_tech = null
	max_shots = 5 //to compensate a bit for self-recharging
	one_hand_penalty = 1 //a little bulky
	self_recharge = 1

/obj/item/gun/energy/lasercannon
	name = "laser cannon"
	desc = "With the laser cannon, the lasing medium is enclosed in a tube lined with uranium-235 and subjected to high neutron flux in a nuclear reactor core. This incredible technology may help YOU achieve high excitation rates with small laser volumes!"
	icon_state = "lasercannon"
	icon = 'icons/obj/guns/laser_cannon.dmi'
	item_state = null
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_POWER = 3)
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	one_hand_penalty = 2 //large and heavy
	w_class = ITEM_SIZE_HUGE
	projectile_type = /obj/item/projectile/beam/heavylaser
	charge_cost = 40
	max_shots = 6
	accuracy = 2
	fire_delay = 4.5
	wielded_item_state = "gun_wielded"

/obj/item/gun/energy/lasercannon/mounted
	name = "mounted laser cannon"
	self_recharge = 1
	use_external_power = 1
	recharge_time = 10
	accuracy = 0 //mounted laser cannons don't need any help, thanks
	one_hand_penalty = 0
	has_safety = FALSE

/obj/item/gun/energy/xray
	name = "x-ray laser carbine"
	desc = "A high-power laser gun capable of emitting concentrated x-ray blasts, that are able to penetrate laser-resistant armor much more readily than standard photonic beams."
	icon = 'icons/obj/guns/xray.dmi'
	icon_state = "xray"
	item_state = "xray"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	origin_tech = list(TECH_COMBAT = 5, TECH_MATERIAL = 3, TECH_MAGNET = 2, TECH_ESOTERIC = 2)
	projectile_type = /obj/item/projectile/beam/xray/midlaser
	one_hand_penalty = 2
	w_class = ITEM_SIZE_HUGE
	charge_cost = 15
	max_shots = 10
	wielded_item_state = "gun_wielded"
	combustion = 0
	fire_delay = 4

/obj/item/gun/energy/xray/pistol
	name = "x-ray laser gun"
	icon = 'icons/obj/guns/xray_pistol.dmi'
	icon_state = "oldxray"
	item_state = "oldxray"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_HOLSTER
	origin_tech = list(TECH_COMBAT = 3, TECH_MATERIAL = 3, TECH_MAGNET = 2, TECH_ESOTERIC = 2)
	projectile_type = /obj/item/projectile/beam/xray
	one_hand_penalty = 1
	w_class = ITEM_SIZE_HUGE
	fire_delay = 4

/obj/item/gun/energy/sniperrifle
	name = "marksman energy rifle"
	desc = "The HI DMR 9E is an older design of Vostroyan. A designated marksman rifle capable of shooting powerful ionized beams, this is a weapon to kill from a distance."
	icon = 'icons/obj/guns/laser_sniper.dmi'
	icon_state = "sniper"
	item_state = "laser"
	origin_tech = list(TECH_COMBAT = 6, TECH_MATERIAL = 5, TECH_POWER = 3)
	projectile_type = /obj/item/projectile/beam/sniper
	one_hand_penalty = 3 // The weapon itself is heavy, and the long barrel makes it hard to hold steady with just one hand.
	slot_flags = SLOT_BACK
	charge_cost = 60
	max_shots = 8
	fire_delay = 6
	force = 10
	w_class = ITEM_SIZE_HUGE
	accuracy = -1 //shooting at the hip
	scoped_accuracy = 5
	scope_zoom = 2
	wielded_item_state = "gun_wielded"

/obj/item/gun/energy/sniperrifle/on_update_icon()
	..()
	item_state_slots[slot_back_str] = icon_state //so that the on-back overlay uses the different charged states

// WARHAMMER 40k


/obj/item/gun/energy/lasgun
	name = "broken kantrael lasgun"
	desc = " Of Cadian design, it is one of the most common and less unique Lasguns that can be found throughout the Imperial Arsenal due to its cheap price and reliability. The Planet broke before the guard did."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "lasgun"
	item_state = "lasgun"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	force = 14
	one_hand_penalty = 2
	fire_delay = 3.5
	accuracy = 0
	self_recharge = 1
	recharge_time = 60
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun
	charge_cost = 20
	cell_type = /obj/item/cell/device/high/laspack
	wielded_item_state = "lasgun-wielded"
	sales_price = 30 // BIG FAT REMINDER -- FIREMODES ARE INHERITED FROM THE PARENT IF THERE ARE NONE

/obj/item/gun/energy/lasgun/kantrael
	name = "kantrael lasgun"
	desc = " Of Cadian design, it is one of the most common and less unique Lasguns that can be found throughout the Imperial Arsenal due to its cheap price and reliability. The Planet broke before the guard did."
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "lasgun"
	item_state = "lasgun"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	force = 14
	one_hand_penalty = 2
	fire_delay = 3.7
	accuracy = 0
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun
	charge_cost = 20
	cell_type = /obj/item/cell/device/high/laspack
	wielded_item_state = "lasgun-wielded"
	sales_price = 30

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=20, burst=1, burst_delay=2.7, fire_delay=4.2),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/overcharge, charge_cost=30, burst=1, burst_delay=2.7, fire_delay=5.4),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=20, burst=3, burst_delay=2.7, fire_delay=4.2)
		)

/obj/item/gun/energy/lasgun/laspistol // ALL LASPISTOLS MUST BE CHILDREN OF LASPISTOL OR THEY WILL HAVE BAD SLOWDOWN.
	name = "civitas pattern laspistol"
	desc = "The Civitas is both somewhat bulky and inefficient (owing to lower quality components than a military-grade laspistol), but remains popular due to its ease of manufacture, longevity and simplicity of maintenance. They are made on almost every hive world and often in the hands of civilians."
	icon_state = "laspistolciv"
	item_state = "hrrevolver"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	force = 12
	accuracy = -1
	fire_delay = 3.9
	origin_tech = list(TECH_COMBAT = 1, TECH_MAGNET = 1)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun/weak
	charge_cost = 33
	cell_type = /obj/item/cell/device/standard
	sales_price = 15
	wielded_item_state = "hrrevolver"
	slowdown_general = 0

/obj/item/gun/energy/lasgun/laspistol/grim
	name = "grim laspistol"
	desc = "The Laspistol variant of the Grim Lasrifle. Forged together by spare parts and significant ingenuity."
	icon_state = "semip"
	w_class = ITEM_SIZE_NORMAL
	fire_delay = 4
	charge_cost = 36
	accuracy = -1
	sales_price = 6
	charge_meter = FALSE
	cell_type = /obj/item/cell/device // stolen from electrical machinery.
	sales_price = 8

/obj/item/gun/energy/lasgun/laspistol/militarum
	name = "kantrael laspistol"
	desc = "Kantrael MG is a Cadian Laspistol used by their shock regiments' NCOs. It is slow firing but pacts a punch for a laspistol. It is also possible to overcharge."
	icon_state = "laspistol"
	accuracy = -0.75
	charge_cost = 31
	fire_delay = 3.6
	cell_type = /obj/item/cell/device/high
	sales_price = 20
	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=31, burst=1, burst_delay=2.6, fire_delay=3.6),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=41, burst=1, burst_delay=2.6, fire_delay=4),
		)

/obj/item/gun/energy/lasgun/laspistol/militarum/bloodpact
	name = "strange laspistol"
	desc = "A laspistol bearing the markings and colours of the Sekites. Older in design and smaller, it is less efficient with it's lasgun cells than more modern variants."
	icon_state = "bloodlaspistol"
	accuracy = -0.5
	charge_cost = 33
	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=33, burst=1, burst_delay=2.6, fire_delay=3.6),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=43, burst=1, burst_delay=2.6, fire_delay=4),
		)

/obj/item/gun/energy/lasgun/laspistol/lucius
	name = "lucius-pattern laspistol"
	desc = "A standard-issue sidearm for the enlisted personnel, non-commissioned officers and commanding officers of the Death Korps of Krieg. Can overcharge to have the same output as a rifle"
	icon_state = "luciuspistol"
	accuracy = -0.5
	charge_cost = 38
	fire_delay = 3.9
	cell_type = /obj/item/cell/device/high
	sales_price = 25

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=38, burst=1, burst_delay=2.9, fire_delay=3.9),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/overcharge, charge_cost=48, burst=1, burst_delay=2.9, fire_delay=3.9),
		)

/obj/item/gun/energy/lasgun/laspistol/accatran
	name = "accatran-pattern laspistol"
	desc = "An older pattern of the Accatran Laspistols. Fully auto but extremely power inefficient and somewhat inaccurate."
	icon_state = "accatranp"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	charge_meter = TRUE // accatran has icons for charge
	force = 10
	accuracy = 0
	fire_delay = 3.4
	charge_cost = 31
	cell_type = /obj/item/cell/device/high/laspack
	sales_price = 25
	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=31, burst=1, burst_delay=2.4, fire_delay=3.4),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=31, burst=3, burst_delay=2.4, fire_delay=3.4),
		)

/obj/item/gun/energy/lasgun/laspistol/lord
	name = "archeotech laspistol" // Overall superior version of the Hellpistol.
	desc = "A xenos-tech laspistol modified further by the machinations of the AdMech, this artifact of combined xenos and human engineering looks centuries old."
	icon_state = "lordlaspistol"
	item_state = "hrrevolver"
	charge_meter = FALSE // no charge icon
	accuracy = 0.5
	fire_delay = 3.3
	self_recharge = 1
	recharge_time = 7
	charge_cost = 33
	cell_type = /obj/item/cell/device/high/xenos
	projectile_type = /obj/item/projectile/beam/lasgun
	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=30, burst=1, burst_delay=2.3, fire_delay=3.3),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/overcharge, charge_cost=40, burst=1, burst_delay=2.3, fire_delay=3.7),
		list(mode_name="execute", projectile_type=/obj/item/projectile/beam/lasgun/hotshot, charge_cost=48, burst=1, burst_delay=2.3, fire_delay=4.1),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=30, burst=3, burst_delay=2.3, fire_delay=3.3),
		)

/obj/item/gun/energy/lasgun/laspistol/hellpistol
	name = "hellpistol"
	desc = "A high-powered pistol favoured by Tempestus Scions, Inquisitorial Agents, and high-ranking Adeptus Militarum officers."
	icon_state = "hellpistol"
	item_state = "hrrevolver" // hrrevolver is for cool looking pistols/laspistols
	charge_meter = FALSE // hellpistol has no charge icons
	force = 12
	one_hand_penalty = 0.5
	fire_delay = 3.9
	accuracy = -0.5
	self_recharge = 0
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun/hotshot
	charge_cost = 55
	cell_type = /obj/item/cell/device/high/laspack/hotshot
	wielded_item_state = "hrrevolver"
	sales_price = 100

/obj/item/gun/energy/lasgun/grim
	name = "grim lasrifle"
	desc = "The Grim or Scrap Lasrifle is the name given to the many unsanctioned patterns of lasrifles produced in the underhives of the imperium, often sewn together with blackmarket components and stolen machinery."
	icon_state = "semir"
	item_state = "semir"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	force = 13
	one_hand_penalty = 1.5
	fire_delay = 3.9
	accuracy = 0
	charge_cost = 22
	wielded_item_state = "semir"
	charge_meter = FALSE
	cell_type = /obj/item/cell/device/standard
	projectile_type = /obj/item/projectile/beam/lasgun/weak
	sales_price = 7

/obj/item/gun/energy/lasgun/triplex
	name = "triplex-pattern lasgun"
	desc = " A highly versatile refined lasgun used by the Mordian Iron Guard ."
	icon = 'icons/obj/guns/40k.dmi'
	color = COLOR_GUNMETAL
	icon_state = "lasgun"
	item_state = "lasgun"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	force = 12
	one_hand_penalty = 3
	fire_delay = 3.7
	accuracy = 0
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun
	charge_cost = 18
	cell_type = /obj/item/cell/device/high/laspack
	wielded_item_state = "lasgun-wielded"
	sales_price = 35

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=18, burst=1, burst_delay=2.7, fire_delay=3.7),
		list(mode_name="undercharge", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=13, burst=1, burst_delay=2.7, fire_delay=3.7),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/overcharge, charge_cost=27, burst=1, burst_delay=2.7, fire_delay=4.1),
		list(mode_name="underburst", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=18, burst=3, burst_delay=2.2, fire_delay=3.7),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=18, burst=3, burst_delay=2.7, fire_delay=3.7)
		)

/obj/item/gun/energy/lasgun/catachan
	name = "catachan lascarbine"
	desc = "The Mark IV lascarbine is a special lascarbine used by the Catachan Jungle Fighters. Excellent for warfare in jungle environments due to it's bayonet and light frame"
	icon_state = "lascarbine"
	item_state = "lascar"
	icon = 'icons/obj/guns/40k.dmi'
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	force = 17
	one_hand_penalty = 1.5
	fire_delay = 3.5
	accuracy = -0.5
	origin_tech = list(TECH_COMBAT = 2, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun
	charge_cost = 20
	cell_type = /obj/item/cell/device/high/laspack/hotshot
	wielded_item_state = "lasgun-wielded"
	sales_price = 45

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=20, burst=1, burst_delay=2.5, fire_delay=3.5),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/overcharge, charge_cost=30, burst=1, burst=1, burst_delay=2.5, fire_delay=3.9),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=20, burst=3, burst_delay=2.5, fire_delay=3.5)
		)

/obj/item/gun/energy/lasgun/lucius
	name = "lucius-pattern lasgun"
	desc = "A Lucius-made Lasgun, unlike STC-based Lasgun, the No.98 operates in a higher than average 21 megathoule while using a standard Power cell, resulting in a more powerful shot than other pattern lasguns."
	icon_state = "lucius"
	item_state = "luscius"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	force = 16
	one_hand_penalty = 1.2
	fire_delay = 4.2
	accuracy = 0
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun/lucius
	charge_cost = 25
	cell_type = /obj/item/cell/device/high/laspack
	wielded_item_state = "luscius-wielded"
	sales_price = 40
	slowdown_general = 0.04

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun/lucius, charge_cost=25, burst=1, burst_delay=3.2, fire_delay=4.2),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/lucius/overcharge, charge_cost=35, burst=1, burst_delay=2.6, fire_delay=4.5), // Better overcharge due to it's design.
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun/lucius, charge_cost=25, burst=3, burst_delay=3.2, fire_delay=4.2)
		)

/obj/item/gun/energy/lasgun/accatran
	name = "accatran-pattern lasgun"
	desc = "The Accatran Patterns are bullpup in design, affording them similar damage to that of a laspistol but with the capacity of a typical lasrifle and with a very high rate of fire for a lasgun. The choice pattern of the Elite Elysian Droptroopers."
	icon_state = "accatran"
	item_state = "lascar"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	force = 13
	one_hand_penalty = 0.7
	fire_delay = 3
	accuracy = 0.1
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun/weak
	charge_cost = 13
	cell_type = /obj/item/cell/device/high/laspack
	wielded_item_state = "lascar-wielded"
	sales_price = 35

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=13, burst=1, burst_delay=2.1, fire_delay=3.1),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun, charge_cost=19, burst=1, burst_delay=2.1, fire_delay=3.6),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun/weak, charge_cost=13, burst=3, burst_delay=2.1, fire_delay=3.1)
		)

/obj/item/gun/energy/lasgun/hotshot
	name = "ryza-pattern hotshot lasgun" // In future write some code for a Powerpack Backpack which effects self_recharge code. Enabling it? Make astartes packs work this way too for their E-Guns.
	desc = "The favored standard weapon of Tempestus Scions, reknowned for its damage and penetration."
	icon_state = "hotshotgun"
	item_state = "lascar"
	charge_meter = FALSE // No icons for hellguns or hotshots.
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_GARGANTUAN
	force = 14
	one_hand_penalty = 1.7
	fire_delay = 4.2
	accuracy = 0
	self_recharge = 1
	recharge_time = 9
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/lasgun/hotshot
	charge_cost = 33
	cell_type = /obj/item/cell/device/high/laspack/hotshot
	wielded_item_state = "lascar-wielded"
	sales_price = 100
	slowdown_general = 0.04

	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/lasgun/hotshot, charge_cost=33, burst=1, burst_delay=2.6, fire_delay=4.2),
		list(mode_name="overcharge", projectile_type=/obj/item/projectile/beam/lasgun/hotshot/overcharge, charge_cost=43, burst=1, burst_delay=2.6, fire_delay=4.6),
		list(mode_name="burst", projectile_type=/obj/item/projectile/beam/lasgun/hotshot, charge_cost=33, burst=3, burst_delay=2.6, fire_delay=4.2)
		)

/obj/item/gun/energy/lasgun/hotshot/masterwork
	name = "ryza-pattern hotshot lasgun"
	desc = "A masterwork hotshot Ryza Pattern crafted by a holy Tech Priest of Sancor."
	icon_state = "hellgun_plugalt"
	force = 15
	one_hand_penalty = 1.5
	accuracy = 0.5 // Masterwork has lower charge cost and better accuracy. Better weapons handling.
	origin_tech = list(TECH_COMBAT = 6, TECH_MAGNET = 6)
	sales_price = 150

/obj/item/gun/energy/lasgun/hotshot/krieg // Krieg -- considered a Masterwork Hotshot
	name = "XIV lasgun heavy"
	desc = "The standard Hellgun issued to Grenadiers of the Death Korps of Krieg."
	icon_state = "hotshot_krieg"
	item_state = "hevluscius"
	charge_meter = TRUE
	force = 17
	one_hand_penalty = 1.7
	accuracy = 0.7
	origin_tech = list(TECH_COMBAT = 6, TECH_MAGNET = 6)
	sales_price = 160

/obj/item/gun/energy/lasgun/hotshot/volkite
	name = "volkite caliver"
	desc = "The Sancor-Omega Pattern Volkite Caliver is a revered weapon of ancient design, rarely seen outside the most elite units of the Adeptus Astartes. It utilizes a Volkite emitter to unleash intense beams of particle energy that incinerate targets with terrifying precision."
	icon_state = "volkite"
	item_state = "hevluscius"
	charge_meter = TRUE
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_GARGANTUAN
	force = 13
	one_hand_penalty = 1.5
	fire_delay = 4
	accuracy = 0.2
	self_recharge = 1
	recharge_time = 11
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 3)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/beam/incendiary_laser
	charge_cost = 40
	cell_type = /obj/item/cell/device/high/mechanicus
	wielded_item_state = "hevluscius-wielded"
	sales_price = 300


	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/beam/incendiary_laser, charge_cost=40, burst=1, burst_delay=2.2, fire_delay=4)
		)

/obj/item/gun/energy/meltagun
	name = "melta gun"
	desc = "Is a powerful, short-ranged anti-armour weapon that produces an intense, energetic beam of heat in the tens of thousands of degrees Centigrade."
	icon_state = "meltagun"
	item_state = "multimelta"
	wielded_item_state = "multimelta"
	fire_sound = list('sound/warhammer/ds/flmthrowr_01.ogg')
	icon = 'icons/cadia-sprites/migrated2/gun_2.dmi'
	slot_flags = null // Must be held at all times or properly stored.
	force = 12 // Heavy and slow to hit.
	max_shots = 5
	w_class = ITEM_SIZE_GARGANTUAN
	fire_delay = 13
	charge_cost = 20
	ammotype = /obj/item/cell/device/high/melta
	cell_type = /obj/item/cell/device/high/melta
	projectile_type = /obj/item/projectile/bullet/meltagun
	slowdown_general = 0.06

/obj/item/gun/energy/meltagun/multi
	name = "multi melta"
	desc = "Is a powerful, short-ranged anti-armour weapon that produces an intense, energetic beam of heat in the tens of thousands of degrees Centigrade."
	icon_state = "multimelta"
	item_state = "multimelta"
	wielded_item_state = "multimelta"
	fire_sound = list('sound/warhammer/ds/flmthrowr_01.ogg')
	icon = 'icons/cadia-sprites/migrated2/gun_2.dmi'
	slot_flags = null
	force = 12 // Heavy and slow to hit.
	max_shots = 5
	burst = 2
	w_class = ITEM_SIZE_GARGANTUAN
	fire_delay = 17
	charge_cost = 20
	slowdown_general = 0.07

/obj/item/gun/energy/plasma
	name = "plasma rifle" // add alt-fire for CQB combat, low charge, low damage.
	desc = "A plasma rifle..."
	icon_state = "prifle"
	item_state = "plasmarifle"
	slot_flags = SLOT_BACK
	w_class = ITEM_SIZE_GARGANTUAN
	force = 12
	one_hand_penalty = 3 //heavy af fam
	accuracy = 0.5
	self_recharge = 1
	recharge_time = 19
	fire_delay = 16
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/energy/ion/plasma
	cell_type = /obj/item/cell/device/high/mechanicus
	charge_cost = 60
	wielded_item_state = "plasmarifle-wielded"
	sales_price = 75
	slowdown_general = 0.06
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=60, burst=1, burst_delay=2.4, fire_delay=10),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=100, burst=1, burst_delay=2.2, fire_delay=18)
		)

/obj/item/gun/energy/plasma/pistol // Better stats as plasma pistols are more often rare DAOT tech and not Forge-World manufactured.
	name = "plasma pistol" // Need archeotech, astartes and xenos variant. Including miniatirised.
	desc = "A plasma pistol. Great for dealing with threats swiftly. It has an overheat scale and on the end of it is written 'Boom!'."
	icon_state = "ppistol"
	item_state = "plasmapistol"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	force = 10
	one_hand_penalty = 1
	fire_delay = 16
	recharge_time = 19
	accuracy = -0.5 //it a pistol, but giga cool plasma
	origin_tech = list(TECH_COMBAT = 3, TECH_MAGNET = 2)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/energy/ion/plasma
	cell_type = /obj/item/cell/device/high/mechanicus
	charge_cost = 50
	wielded_item_state = "plasmapistol"
	sales_price = 85 // Plasma Pistols are basically DAOT tech.
	slowdown_general = 0.03
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=50, burst=1, burst_delay=2.4, fire_delay=10),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=90, burst=1, burst_delay=2.2, fire_delay=18)
		)

/obj/item/gun/energy/plasma/pistol/chaos
	name = "heretic plasma pistol"
	desc = "A plasma pistol blessed by the ruinous powers. You can feel the warp energy going trough it. It has an overheat scale and on the end of it is written 'Boom!'."
	icon_state = "chaosppistol"
	charge_cost = 35 // magek
	accuracy = 0.5
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=35, burst=1, burst_delay=2.4, fire_delay=10),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=75, burst=1, burst_delay=2.2, fire_delay=18)
		)

/obj/item/gun/energy/plasma/pistol/mechanicus
	name = "ryza-pattern plasma pistol"
	desc = "A plasma pistol from the forge world of Ryza with an in-built targeting cogitator. It's adamantium receiver is detailed with the inscriptions of Ryza Secundus' factorium. It has an overheat scale and on the end of it is written 'Boom!'."
	icon_state = "toasterppistol" // Benefits over regular pistol is purely just firing speed and accuracy only.
	item_state = "pulse_pistol"
	wielded_item_state = "pulse_pistol"
	accuracy = 1 // targeting system
	fire_delay = 15
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=50, burst=1, burst_delay=2.4, fire_delay=9),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=90, burst=1, burst_delay=2.2, fire_delay=17)
		)

/obj/item/gun/energy/plasma/pistol/xenos
	name = "xenos plasma pistol"
	desc = "An ancient plasma pistol forged by xenos gun smiths, despite it's incredible age it shows no signs of decay. Looks small enough to fit into a compact holster."
	icon_state = "xenolpistol" // Benefits are small size and low charge cost.
	item_state = "pulse_pistol"
	charge_meter = FALSE
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	wielded_item_state = "pulse_pistol"
	accuracy = 0.5
	charge_cost = 30
	fire_delay = 16 // Tiny pistol. Shoots slower
	slowdown_general = 0
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=30, burst=1, burst_delay=2.4, fire_delay=11),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=70, burst=1, burst_delay=2.2, fire_delay=19)
		)

/obj/item/gun/energy/plasma/pistol/archeotech
	name = "archeotech plasma pistol"
	desc = "An archeotech plasma pistol, despite it's incredible age it shows no signs of decay. It's design seems outright heretical by mechanicus standards."
	icon_state = "glockl100"
	item_state = "pulse_pistol"
	wielded_item_state = "pulse_pistol"
	accuracy = 0
	fire_delay = 15 // Burst delay is higher since a plasma pistol shouldnt be used to fire multiple bursts. It'll blow you up.
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=50, burst=1, burst_delay=11, fire_delay=9),
		list(mode_name="burst", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=100, burst=3, burst_delay=11, fire_delay=17),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=90, burst=1, burst_delay=11, fire_delay=17)
		)

//Tau weapons

/obj/item/gun/energy/tau/ionrifle
	name = "ION cannon"
	desc = "The ION Cannon is a Tau weapon that projects a concentrated beam of ionized particles. Upon impact, it releases a burst of high-energy ions This advanced technology delivers precise and powerful shots, effective against both infantry and armored targets."
	icon_state = "ionriflet"
	item_state = "ionriflet"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_GARGANTUAN
	charge_meter = FALSE
	force = 10
	one_hand_penalty = 3
	accuracy = 1
	origin_tech = list(TECH_COMBAT = 7, TECH_MAGNET = 7)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/bullet/heavyplasma
	cell_type = /obj/item/cell/device/high/xenos // consider messing around with power_supply code later to set specific cell requirements.
	wielded_item_state = "ionriflet-wielded"
	sales_price = 100
	fire_delay = 15
	charge_cost = 90
	self_recharge = 1
	recharge_time = 17
	slowdown_general = 0.07
	firemodes = list(
		list(mode_name="light", projectile_type=/obj/item/projectile/energy/ion/plasma, charge_cost=50, burst=1, burst_delay=2.4, fire_delay=7),
		list(mode_name="heavy", projectile_type=/obj/item/projectile/bullet/heavyplasma, charge_cost=90, burst=1, burst_delay=2.2, fire_delay=17)
		)

/obj/item/gun/energy/tau/railgun
	name = "tau rail gun"
	desc = "The Railgun is a Tau weapon that accelerates high-density projectiles using magnetic fields. Upon impact, it delivers a precise and penetrating shot with overwhelming kinetic force. This sophisticated technology is effective against both infantry and heavily armored units."
	icon_state = "railgun"
	item_state = "railgun"
	slot_flags = SLOT_BACK|SLOT_BELT|SLOT_HOLSTER
	w_class = ITEM_SIZE_GARGANTUAN
	charge_meter = FALSE
	force = 10
	one_hand_penalty = 3
	accuracy = -1
	origin_tech = list(TECH_COMBAT = 7, TECH_MAGNET = 7)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/bullet/railgun
	cell_type = /obj/item/cell/device/high/xenos // consider messing around with power_supply code later to set specific cell requirements.
	wielded_item_state = "railgun-wielded"
	sales_price = 100
	fire_delay = 8
	charge_cost = 70
	self_recharge = 1
	recharge_time = 20
	slowdown_general = 0.06

/obj/item/gun/energy/tau/pulsepistol
	name = "tau pulse pistol" // Higher damage then hellpistol but slower firing and higher charge cost. Low accuracy as well.
	desc = "The trusty sidearm of the T'au Empire."
	icon_state = "pulsep"
	item_state = "pulsep"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	charge_meter = FALSE
	force = 12
	accuracy = -0.5
	origin_tech = list(TECH_COMBAT = 5, TECH_MAGNET = 5)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/energy/pulsepistol
	cell_type = /obj/item/cell/device/high/xenos
	sales_price = 49
	charge_cost = 65
	fire_delay = 4.5
	wielded_item_state = "pulsep"
	self_recharge = 1
	recharge_time = 8
	one_hand_penalty = 2
	slowdown_general = 0

/obj/item/gun/energy/tau/pulserifle
	name = "tau pulse rifle" // Fires the same round as pulse pistol but better stats. 4-round burst with slightly better burst rate then lasguns.
	desc = "The standard-issue pulse rifle of the Fire Warrior Caste"
	icon_state = "pulseb"
	item_state = "pulseb"
	slot_flags = SLOT_BELT|SLOT_HOLSTER|SLOT_BACK
	w_class = ITEM_SIZE_GARGANTUAN
	charge_meter = FALSE
	force = 14
	accuracy = 0
	one_hand_penalty = 2
	origin_tech = list(TECH_COMBAT = 5, TECH_MAGNET = 5)
	matter = list(DEFAULT_WALL_MATERIAL = 2000)
	projectile_type = /obj/item/projectile/energy/pulserifle
	cell_type = /obj/item/cell/device/high/xenos
	sales_price = 69
	charge_cost = 45
	fire_delay = 4
	wielded_item_state = "pulseb_wielded"
	self_recharge = 1
	recharge_time = 8
	slowdown_general = 0.05
	firemodes = list(
		list(mode_name="single", projectile_type=/obj/item/projectile/energy/pulserifle, charge_cost=45, burst=1, burst_delay=3, fire_delay=4),
		list(mode_name="burst", projectile_type=/obj/item/projectile/energy/pulserifle, charge_cost=45, burst=4, burst_delay=3, fire_delay=4)
		)

/* // this shit doesnt work for now
	var/plasma_overheat = 1 // Keeping track on how overheated the gun is
	var/plasma_overheat_decay = 2 // The cooling of the gun per tick
	var/plasma_overheat_max = 200 // When the gun exploads
	Fire(atom/target, mob/living/user)
		if(plasma_overheat >= 50)
			to_chat(user, "<span class='warning'><b><font size=3>THE BARREL STARTS TO GLOW.</font></b></span>")
		if(plasma_overheat >= 90)
			to_chat(user, "<span class='warning'><b><font size=3>OVERHEAT WARNING.</font></b></span>")
		if(plasma_overheat >= 150)
			to_chat(user, "<span class='warning'><b><font size=3>CATASTROPHIC FAILURE IMMINENT.</font></b></span>")
		..()
		plasma_overheat += 30 // adding 30 heat for every pulling of the trigger (learn not to spam the fucking gun)
	Process()
		..()
		if(plasma_overheat >= 0)
			plasma_overheat -= plasma_overheat_decay // so the gun actually cools down
		else
			plasma_overheat = 0 // keepin the gun overheat above -1
			return
		if(plasma_overheat > plasma_overheat_max)
			explosion(src.loc, -1, -1, 3, 3) // explodes u, dealing a lot of damage, still (a little) chance to survive
*/



////////Laser Tag////////////////////

/obj/item/gun/energy/lasertag
	name = "low-power kantrael lasgun"
	icon = 'icons/obj/guns/lasertag.dmi'
	icon_state = "lasgun"
	item_state = "lasgun"
	desc = "Standard issue weapon of the Imperial Guard."
	origin_tech = list(TECH_COMBAT = 1, TECH_MAGNET = 2)
	self_recharge = 1
	matter = list(MATERIAL_STEEL = 2000)
	projectile_type = /obj/item/projectile/beam/lastertag/blue

/obj/item/gun/energy/lasertag/blue
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "lasgun"
	item_state = "lasgun"
	wielded_item_state = "lasgun-wielded"
	projectile_type = /obj/item/projectile/beam/lastertag/blue

/obj/item/gun/energy/lasertag/red
	icon = 'icons/obj/guns/40k.dmi'
	icon_state = "lasgun"
	item_state = "lasgun"
	wielded_item_state = "lasgun-wielded"
	projectile_type = /obj/item/projectile/beam/lastertag/red
