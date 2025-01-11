//Rank 1

/obj/item/stock_parts/scanning_module
	name = "scanning module"
	desc = "A compact, high resolution scanning module used in the construction of certain devices."
	icon_state = "scan_module"
	origin_tech = list(TECH_MAGNET = 1)
	matter = list(MATERIAL_STEEL = 50,MATERIAL_GLASS = 20)
	base_type = /obj/item/stock_parts/scanning_module

/obj/item/stock_parts/manipulator
	name = "micro-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "micro_mani"
	origin_tech = list(TECH_MATERIAL = 1, TECH_DATA = 1)
	matter = list(MATERIAL_STEEL = 30)
	base_type = /obj/item/stock_parts/manipulator

/obj/item/stock_parts/micro_laser
	name = "micro-laser"
	desc = "A tiny laser used in certain devices."
	icon_state = "micro_laser"
	origin_tech = list(TECH_MAGNET = 1)
	matter = list(MATERIAL_STEEL = 10,MATERIAL_GLASS = 20)
	base_type = /obj/item/stock_parts/micro_laser

/obj/item/stock_parts/matter_bin
	name = "matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon_state = "matter_bin"
	origin_tech = list(TECH_MATERIAL = 1)
	matter = list(MATERIAL_STEEL = 80)
	base_type = /obj/item/stock_parts/matter_bin

/obj/item/stock_parts/capacitor
	name = "capacitor"
	desc = "A basic capacitor used in the construction of a variety of devices."
	icon_state = "capacitor"
	origin_tech = list(TECH_POWER = 1)
	matter = list(MATERIAL_STEEL = 50,MATERIAL_GLASS = 50)
	var/charge = 0
	var/max_charge = 1000
	base_type = /obj/item/stock_parts/capacitor

/obj/item/stock_parts/capacitor/Initialize()
	. = ..()
	max_charge *= rating

/obj/item/stock_parts/capacitor/proc/charge(amount)
	charge += amount
	if(charge > max_charge)
		charge = max_charge

/obj/item/stock_parts/capacitor/proc/use(amount)
	if(charge)
		charge -= amount
		if(charge < 0)
			charge = 0

//Rank 2

/obj/item/stock_parts/scanning_module/adv
	name = "advanced scanning module"
	desc = "A compact, high resolution scanning module used in the construction of certain devices."
	icon_state = "advanced_scan_module"
	origin_tech = list(TECH_MAGNET = 2)
	rating = 2
	matter = list(MATERIAL_STEEL = 50,MATERIAL_GLASS = 20)

/obj/item/stock_parts/manipulator/nano
	name = "nano-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "nano_mani"
	origin_tech = list(TECH_MATERIAL = 2, TECH_DATA = 1)
	rating = 2
	matter = list(MATERIAL_STEEL = 30)

/obj/item/stock_parts/micro_laser/high
	name = "high-power micro-laser"
	desc = "A tiny laser used in certain devices."
	icon_state = "high_micro_laser"
	origin_tech = list(TECH_MAGNET = 2)
	rating = 2
	matter = list(MATERIAL_STEEL = 10,MATERIAL_GLASS = 20)

/obj/item/stock_parts/matter_bin/adv
	name = "advanced matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon_state = "advanced_matter_bin"
	origin_tech = list(TECH_MATERIAL = 2)
	rating = 2
	matter = list(MATERIAL_STEEL = 80)

/obj/item/stock_parts/capacitor/adv
	name = "advanced capacitor"
	desc = "An advanced capacitor used in the construction of a variety of devices."
	icon_state = "advanced_capacitor"
	origin_tech = list(TECH_POWER = 2)
	rating = 2

//Rating 3

/obj/item/stock_parts/scanning_module/phasic
	name = "phasic scanning module"
	desc = "A compact, high resolution phasic scanning module used in the construction of certain devices."
	icon_state = "phasic_scan_module"
	origin_tech = list(TECH_MAGNET = 3)
	rating = 3
	matter = list(MATERIAL_STEEL = 50,MATERIAL_GLASS = 20)

/obj/item/stock_parts/manipulator/pico
	name = "pico-manipulator"
	desc = "A tiny little manipulator used in the construction of certain devices."
	icon_state = "pico_mani"
	origin_tech = list(TECH_MATERIAL = 3, TECH_DATA = 2)
	rating = 3
	matter = list(MATERIAL_STEEL = 30)

/obj/item/stock_parts/micro_laser/ultra
	name = "ultra-high-power micro-laser"
	icon_state = "ultra_high_micro_laser"
	desc = "A tiny laser used in certain devices."
	origin_tech = list(TECH_MAGNET = 3)
	rating = 3
	matter = list(MATERIAL_STEEL = 10,MATERIAL_GLASS = 20)

/obj/item/stock_parts/matter_bin/super
	name = "super matter bin"
	desc = "A container for hold compressed matter awaiting re-construction."
	icon_state = "super_matter_bin"
	origin_tech = list(TECH_MATERIAL = 3)
	rating = 3
	matter = list(MATERIAL_STEEL = 80)

/obj/item/stock_parts/capacitor/super
	name = "super capacitor"
	desc = "A super-high capacity capacitor used in the construction of a variety of devices."
	icon_state = "super_capacitor"
	origin_tech = list(TECH_POWER = 3, TECH_MATERIAL = 3)
	rating = 3

// Subspace stock parts

/obj/item/stock_parts/subspace/ansible
	name = "subspace ansible"
	icon_state = "subspace_ansible"
	desc = "A compact module capable of sensing extradimensional activity."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2 ,TECH_MATERIAL = 2, TECH_BLUESPACE = 2)
	matter = list(MATERIAL_STEEL = 30,MATERIAL_GLASS = 10)

/obj/item/stock_parts/subspace/filter
	name = "hyperwave filter"
	icon_state = "hyperwave_filter"
	desc = "A tiny device capable of filtering and converting super-intense radiowaves."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2)
	matter = list(MATERIAL_STEEL = 30,MATERIAL_GLASS = 10)

/obj/item/stock_parts/subspace/amplifier
	name = "subspace amplifier"
	icon_state = "subspace_amplifier"
	desc = "A compact micro-machine capable of amplifying weak subspace transmissions."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_BLUESPACE = 2)
	matter = list(MATERIAL_STEEL = 30,MATERIAL_GLASS = 10)

/obj/item/stock_parts/subspace/treatment
	name = "subspace treatment disk"
	icon_state = "treatment_disk"
	desc = "A compact micro-machine capable of stretching out hyper-compressed radio waves."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_BLUESPACE = 2)
	matter = list(MATERIAL_STEEL = 30,MATERIAL_GLASS = 10)

/obj/item/stock_parts/subspace/analyzer
	name = "subspace wavelength analyzer"
	icon_state = "wavelength_analyzer"
	desc = "A sophisticated analyzer capable of analyzing cryptic subspace wavelengths."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_BLUESPACE = 2)
	matter = list(MATERIAL_STEEL = 30,MATERIAL_GLASS = 10)

/obj/item/stock_parts/subspace/crystal
	name = "ansible crystal"
	icon_state = "ansible_crystal"
	desc = "A crystal made from pure glass used to transmit laser databursts to subspace."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_BLUESPACE = 2)
	matter = list(MATERIAL_GLASS = 50)

/obj/item/stock_parts/subspace/transmitter
	name = "subspace transmitter"
	icon_state = "subspace_transmitter"
	desc = "A large piece of equipment used to open a window into the subspace dimension."
	origin_tech = list(TECH_DATA = 2, TECH_MAGNET = 2, TECH_MATERIAL = 2, TECH_BLUESPACE = 2)
	matter = list(MATERIAL_STEEL = 50)

// ARCHEOTECH LOOT
// ARCHEOTECH LOOT
/obj/item/rnd/eng3
	name = "xenos alloy"
	desc = "A xenos alloy forged by means unknown to the AdMech. The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "strange"
	origin_tech = list(TECH_MATERIAL = 4, TECH_ENGINEERING = 4)
	sales_price = 1200

/obj/item/rnd/eng5
	name = "admech memory chip"
	desc = "Contains the partially corrupted memory banks of a deceased tech priest. The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "romos1"
	origin_tech = list(TECH_MATERIAL = 6, TECH_ENGINEERING = 6)
	sales_price = 2200

/obj/item/rnd/eng8
	name = "factorum schematics"
	desc = "Forgotten schematics produced by the AdMech from a now forgotten world. The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk0"
	origin_tech = list(TECH_MATERIAL = 8, TECH_ENGINEERING = 8)
	sales_price = 3700

/obj/item/rnd/eng10
	name = "STC Fragment"
	desc = "An STC Fragment with designs for manufactorum machinery... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk6"
	origin_tech = list(TECH_MATERIAL = 10, TECH_ENGINEERING = 10)
	sales_price = 6400

// Power + Phoron Mixture of weaponry, vanilla SS13.
/obj/item/rnd/power3
	name = "strange chemical canister"
	desc = "A xenos forged canister filled with a strange chemical fuel mixture. The Mechanicus will want to study it."
	icon = 'icons/obj/power.dmi'
	icon_state = "plasmaflask"
	origin_tech = list(TECH_POWER = 4, TECH_PHORON = 4)
	sales_price = 1300

/obj/item/rnd/power5
	name = "ancient plasma coil"
	desc = "The remains of a dismantled seolite plasma gun, the plasma coil is still functional... The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "unknown1"
	origin_tech = list(TECH_POWER = 6, TECH_PHORON = 6)
	sales_price = 2400

/obj/item/rnd/power8
	name = "plasma drive schematics"
	desc = "Forgotten starship plasma drive schematics produced by the AdMech from a now forgotten world... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk2"
	origin_tech = list(TECH_POWER = 8, TECH_PHORON = 8)
	sales_price = 4100

/obj/item/rnd/power10
	name = "STC Fragment"
	desc = "An STC Fragment with designs for an ancient voidship reactor... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk6"
	origin_tech = list(TECH_POWER = 10, TECH_PHORON = 10)
	sales_price = 8100
// Bio + Bluespace For bags/misc items, mainly vanilla SS13 Content

/obj/item/rnd/biospace3
	name = "glowing rock"
	desc = "A warpstone... it hums with vibrant energy. The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "plant1"
	origin_tech = list(TECH_BIO = 4, TECH_BLUESPACE = 4)
	sales_price = 900

/obj/item/rnd/biospace5
	name = "xenos green vial"
	desc = "A vial of strange liquid used for seolite laboratory equipment... The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "box"
	origin_tech = list(TECH_BIO = 6, TECH_BLUESPACE = 6)
	sales_price = 1800

/obj/item/rnd/biospacesample1
	name = "tissue sample"
	desc = "A vial of strange liquid storing organic material."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "box"
	origin_tech = list(TECH_BIO = 4, TECH_PHORON = 2, TECH_ILLEGAL = 2)
	sales_price = 1200

/obj/item/rnd/biospacesample2
	name = "rare tissue sample"
	desc = "A vial of strange liquid storing organic material."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "box"
	origin_tech = list(TECH_BIO = 5, TECH_PHORON = 4, TECH_ILLEGAL = 3)
	sales_price = 1500

/obj/item/rnd/biospacesample3
	name = "exotic tissue sample"
	desc = "A vial of strange liquid storing organic material."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "box"
	origin_tech = list(TECH_BIO = 8, TECH_PHORON = 7, TECH_ILLEGAL = 6)
	sales_price = 1800

/obj/item/rnd/biospace8
	name = "xenos autodoc schematics"
	desc = "Schematics to construct a medical autodoc used by the seolite... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk4"
	origin_tech = list(TECH_BIO = 8, TECH_BLUESPACE = 8)
	sales_price = 3200

/obj/item/rnd/biospace10
	name = "STC Fragment"
	desc = "An old STC fragment with designs for an advanced cloning machine... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk6"
	origin_tech = list(TECH_BIO = 10, TECH_BLUESPACE = 10)
	sales_price = 6300

// Combat + Magnet, Works on Weapons primarily, armor as well. (combat needed for armor)

/obj/item/rnd/combat3
	name = "seolite firing mechanism"
	desc = "A seolite firing mechanism used in slug firing projectile weapons. The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "anodev"
	origin_tech = list(TECH_COMBAT = 5, TECH_MAGNET = 4)
	sales_price = 1000

/obj/item/rnd/combat5
	name = "archeotech weapon fragment"
	desc = "The remains of an unknown weapon from the dark age of technology. The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "egun5"
	origin_tech = list(TECH_COMBAT = 7, TECH_MAGNET = 6)
	sales_price = 1700

/obj/item/rnd/combat8
	name = "archeotech weapon design"
	desc = "A weapon design for a forgotten archeotech weapon. The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk6"
	origin_tech = list(TECH_COMBAT = 9, TECH_MAGNET = 8)
	sales_price = 3100

/obj/item/rnd/combat10
	name = "STC Fragment"
	desc = "An STC Fragment with designs for an exteriminatus weapon platform from the dark age of technology... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk5"
	origin_tech = list(TECH_COMBAT = 10, TECH_MAGNET = 10)
	sales_price = 7100

// Illegal + Data (works on very unique things, they border heretical and should be assumed to be bordering technoheresy.) Data is vanilla content from what I can see.

/obj/item/rnd/illegal3
	name = "xenos puzzle box"
	desc = "A silly little puzzle box! The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "ano10"
	origin_tech = list(TECH_DATA = 4, TECH_ILLEGAL = 4)
	sales_price = 800

/obj/item/rnd/illegal5
	name = "xenos research notes"
	desc = "The remains of an unknown weapon from the dark age of technology. The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "measuring"
	origin_tech = list(TECH_DATA = 6, TECH_ILLEGAL = 6)
	sales_price = 1400

/obj/item/rnd/illegal8
	name = "strange object"
	desc = "An AI core from a destroyed Man Of Iron. The Mechanicus will want to study it."
	icon = 'icons/obj/xenoarchaeology.dmi'
	icon_state = "unknown2"
	origin_tech = list(TECH_DATA = 8, TECH_ILLEGAL = 8)
	sales_price = 3000

/obj/item/rnd/illegal10
	name = "Glowing STC Fragment"
	desc = "An STC Fragment with designs for an artifact... The Mechanicus will want to study it."
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk0"
	origin_tech = list(TECH_DATA = 10, TECH_ILLEGAL = 10)
	sales_price = 7000
//Debug
/obj/item/rnd/debugstc
	name = "DEBUG STC"
	desc = "If you have this, an admin is testing RnD! That or something is horribly bad!"
	icon = 'icons/obj/stock_parts.dmi'
	icon_state = "datadisk3"
	origin_tech = list(TECH_DATA = 10, TECH_ILLEGAL = 10, TECH_COMBAT = 10, TECH_BIO = 10, TECH_PHORON = 10, TECH_ENGINEERING = 10, TECH_BLUESPACE = 10, TECH_MATERIAL = 10, TECH_MAGNET = 10, TECH_POWER = 10)
	sales_price = 60


/*
/// EXPLORATION REWARDS ///
Added items that will be random in most ruins/cave areas, they range from packages, reports, lost clothing rolls, to ingots of expensive minerals
and the like.

These items are meant to be randomized rewards that people can find on the caves & ruins, this is to balance
issues such as:

- Bad loot drops (Fighting a cave with 7 mobs to find a lasgun clip)
- Increase actual economy (No longer the RT would have to buy shit serf clothes, shitty pistols)
- Allows the RT to gain certain wealth to sell more of his products and not being solely a Fallout-style shop owner which only buys guns, and armors.

This is more RPG-style and i honestly belive this is more fresh and contributes to a more healthy dungeon/exploration style of gameplay.

*/


/obj/item/exploration_loot
	name = "geology report"
	desc = "A very rough report of a high value asteroid roughly the size of a small moon, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "giftpaper"
	item_state = "giftpaper"
	w_class = ITEM_SIZE_SMALL
	sales_price = 700

/obj/item/exploration_loot/map
	name = "rookie treasure map"
	desc = "Someone's poor writing and drawing of what appears to be the location of an stash, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "oldmap"
	item_state = "oldmap"
	w_class = ITEM_SIZE_SMALL
	sales_price = 200

/obj/item/exploration_loot/cloth_roll
	name = "cloth roll"
	desc = "Just some cloth simply rolled and ready to be sold to merchants, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "roll"
	item_state = "roll"
	w_class = ITEM_SIZE_SMALL
	sales_price = 200

/obj/item/exploration_loot/sealed_enve
	name = "sealed envelope"
	desc = "A sealed envelope written with ordos cipher code, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "sealed_envelope"
	item_state = "sealed_envelope"
	w_class = ITEM_SIZE_SMALL
	sales_price = 500

/obj/item/exploration_loot/package
	name = "unknown package"
	desc = "A malevolent package, it sounds like there's some mechanical components, attempts to open it are impossible, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "package"
	item_state = "package"
	w_class = ITEM_SIZE_LARGE
	sales_price = 800

/obj/item/exploration_loot/drugs
	name = "exotic drug cocktail"
	desc = "A bottle of gene liquids and combat stims for use with cyborg soldiers -- the side effects of it's withdrawl appear lethal, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "drugs"
	item_state = "drugs"
	w_class = ITEM_SIZE_SMALL
	sales_price = 1200

/obj/item/exploration_loot/guard_diary
	name = "combat diary"
	desc = "The diary of ciaphas cain... the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "diary"
	item_state = "diary"
	w_class = ITEM_SIZE_SMALL
	sales_price = 1500

/obj/item/exploration_loot/map
	name = "detailed underground map"
	desc = "Someone had a 'fun' time going through the depths of Commorough, this map details a few routes and locations of interest, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "map"
	item_state = "map"
	w_class = ITEM_SIZE_SMALL
	sales_price = 1000

/obj/item/exploration_loot/case
	name = "unknown case"
	desc = "An sturdy red metalic case, the contents seem to be highly illegal fetish cybernetics... the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "case"
	item_state = "case"
	w_class = ITEM_SIZE_SMALL
	sales_price = 1200

/obj/item/exploration_loot/spicecase
	name = "spice case"
	desc = "The strong smell of so many different spices leave no doubt this is a case of quality spices for making dishes more delicious, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "spice"
	item_state = "spice"
	w_class = ITEM_SIZE_SMALL
	sales_price = 600

/obj/item/exploration_loot/lootbox
	name = "unknown case"
	desc = "A finely wrapped box that seems to be filled with something made out of crystal, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "package4"
	item_state = "package4"
	w_class = ITEM_SIZE_SMALL
	sales_price = 900

/obj/item/exploration_loot/chem_package
	name = "chemical package"
	desc = "A large package containing quite a lot of common chemicals, mostly to refill medical dispensers, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "dispenser"
	item_state = "dispenser"
	w_class = ITEM_SIZE_LARGE
	sales_price = 500

/obj/item/exploration_loot/odd_book
	name = "ancient book"
	desc = "This appears to be a very old scientific book, who knows how long it's been there, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "sh"
	item_state = "sh"
	w_class = ITEM_SIZE_SMALL
	sales_price = 500

/obj/item/exploration_loot/bm_file
	name = "shady file"
	desc = "Judging by the contents, it appears to be blackmail evidence against the House de Burgen, suggesting a string of murders against arbites personnel... the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "file"
	item_state = "file"
	w_class = ITEM_SIZE_SMALL
	sales_price = 2500

/obj/item/exploration_loot/imperial_book
	name = "imperial book"
	desc = "An Imperial book that seems to be full of history about the Imperium, there's some interesting marks from whoever was the owner, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "imperial"
	item_state = ""
	w_class = ITEM_SIZE_SMALL
	sales_price = 300

/obj/item/exploration_loot/shiny_gem
	name = "shiny gem"
	desc = "A crystal-clear gem of sorts, you're not sure if it's a diamond but must fetch some price at least. The guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "gem1"
	item_state = "gem1"
	w_class = ITEM_SIZE_SMALL
	sales_price = 500

/obj/item/exploration_loot/zrbite
	name = "zeranthite ore"
	desc = "An small amount of unrefined zeranthite, an ore that is very rare to find and used for constructing Gellar fields and other fancy equipment, the rogue trader would be very interested on buying this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "zrbite_ore"
	item_state = "zrbite_ore"
	w_class = ITEM_SIZE_SMALL
	sales_price = 300

/obj/item/exploration_loot/zrbite_ingot
	name = "zeranthite ingot"
	desc = "A ingot of zeranthite, these are refined on proper Industrial worlds which have the equipment to refine this rare ore, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "zrbite"
	item_state = "zrbite"
	w_class = ITEM_SIZE_SMALL
	sales_price = 500

/obj/item/exploration_loot/elerium
	name = "elerium ore"
	desc = "A chunk of unrefined Elerium, this is an extremly rare mineral currently being used for experimental plasma weaponary prototypes, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "elerium_ore"
	item_state = "elerium_ore"
	w_class = ITEM_SIZE_SMALL
	sales_price = 350

/obj/item/exploration_loot/elerium_ingot
	name = "elerium ingot"
	desc = "A refined ingot of Elerium, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "elerium"
	item_state = "elerium"
	w_class = ITEM_SIZE_SMALL
	sales_price = 300

/obj/item/exploration_loot/artiaxe
	name = "artifact axe"
	desc = "A finely crafted axe with a lot of adorments around it that seem to be made out of gold, silver and steel, the guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "artiaxe2"
	item_state = "artiaxe2"
	w_class = ITEM_SIZE_SMALL
	sales_price = 4000

/obj/item/exploration_loot/goldbar
	name = "untraceable gold bar"
	desc = "A gold bar of unknown origin. The guilders would pay well for this."
	icon = 'icons/map_project/fluff_items.dmi'
	icon_state = "gold_ingot_ravenheart"
	item_state = "gold_ingot_ravenheart"
	w_class = ITEM_SIZE_SMALL
	sales_price = 1000
