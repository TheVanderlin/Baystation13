// 40k melee

/*
// A breakdown for how force works. The default material steel -- 1000 is the multiplier.
Your force divisor(unwielded) or force multiplier(wielded) is * against 100. Which gives you total force damage. E.G. Hardness 100 and unwielded divisor of .5 would mean force 50.
To find relevant hardness use VSC Search[hardness = ] to find material values.
Steel = 1000 / Ceramite = 120 / Ceramite Plasteel = 140

All weapons should use twohanded/warhammer -- otherwise it will break.
	*/


/obj/item/material/hatchet
	name = "hatchet"
	desc = "A very sharp axe blade upon a short fibremetal handle. It has a long history of chopping things, but now it is used for chopping wood."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	icon_state = "hatchet"
	max_force = 40
	force_multiplier = 0.30 // 12 with hardness 60 (steel)
	thrown_force_multiplier = 0.20 // 15 with weight 20 (steel)
	sharp = TRUE
	edge = TRUE
	default_material = MATERIAL_STEEL
	origin_tech = list(TECH_MATERIAL = 2, TECH_COMBAT = 1)
	attack_verb = list("chopped", "torn", "cut")
	applies_material_colour = 0
	hitsound = "chop"
	attack_cooldown_modifier = 0.5
	base_parry_chance = 35
	armor_penetration = 4

/obj/item/material/hatchet/unbreakable
	unbreakable = TRUE

/obj/item/material/hatchet/machete
	name = "machete"
	desc = "A long, sturdy blade with a rugged handle. Leading the way to cursed treasures since before space travel."
	icon = 'icons/obj/weapons/melee_physical.dmi'
	item_state = "machete"
	w_class = ITEM_SIZE_NORMAL
	slot_flags = SLOT_BELT
	base_parry_chance = 30
	max_force = 43
	force_multiplier = 0.32
	armor_penetration = 3 // Hits for more damage but worse AP. Like a shitty cutro.
	attack_cooldown_modifier = 0.6

/obj/item/material/hatchet/machete/unbreakable
	unbreakable = TRUE

/obj/item/material/hatchet/machete/steel
	name = "fabricated machete"
	desc = "A long, machine-stamped blade with a somewhat ungainly handle."
	armor_penetration = 4

/obj/item/material/hatchet/machete/Initialize()
	icon_state = "machete[pick("","_red","_blue", "_black", "_olive")]"
	. = ..()

/obj/item/material/hatchet/machete/deluxe
	name = "adamantine machete"
	desc = "A fine example of a machete, with a polished blade, wooden handle and a leather cord loop."

/obj/item/material/hatchet/machete/deluxe/Initialize()
	. = ..()
	icon_state = "machetedx"

/obj/item/material/twohanded/ravenor
	name = "you shouldn't see this"
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "mekmace"
	item_state = "mekmace"
	max_force = 60
	applies_material_name = FALSE
	default_material = MATERIAL_STEEL
	var/wielded_item_state // For two handed icon. Only add if it has it.
	applies_material_colour = 0
	sharp = TRUE // For decap chance.
	edge = TRUE // If blunt set to FALSE. Otherwise TRUE.

/obj/item/material/twohanded/ravenor/on_update_icon()
	..()
	if(wielded_item_state)
		icon_state = "[icon_state]"
		item_state_slots[slot_l_hand_str] = wielded_item_state
		item_state_slots[slot_r_hand_str] = wielded_item_state
		item_state_slots[slot_back_str] = icon_state
	else
		icon_state = "[icon_state]"
		item_state_slots[slot_l_hand_str] = initial(item_state)
		item_state_slots[slot_r_hand_str] = initial(item_state)
		item_state_slots[slot_back_str] = icon_state

/obj/item/material/twohanded/ravenor/sword
	name = "iron sabre"
	desc = "A decorative imperial sabre issued commonly to PDF and old school guard regiments."
	icon_state = "sabre"
	item_state = "sabre"
	attack_verb = list("stabbed", "chopped", "cut", "sliced")
	hitsound = 'sound/weapons/bladeslice.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	max_force = 60
	force_multiplier = 0.34 // 0.34 = 34 Force damage wielded.
	unwielded_force_divisor = 0.31
	thrown_force_multiplier = 0.27
	armor_penetration = 4
	throw_speed = 2
	edge = TRUE
	sharp = TRUE
	does_spin = FALSE // Does it spin when thrown?
	base_parry_chance = 25
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.8
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/ravenor/sword/cutro
	name = "cutro blade"
	desc = "A lightweight iron blade with near perfect balance, designed for short quick thrusts -- favoured by the merchant class and the occasional assassin."
	icon_state = "spatha"
	item_state = "spatha"
	w_class = ITEM_SIZE_LARGE
	attack_cooldown_modifier = 0.7
	max_force = 55
	force_multiplier = 0.33
	unwielded_force_divisor = 0.33
	thrown_force_multiplier = 0.28
	armor_penetration = 5 // 40k equiv of an arming sword or long dagger.
	base_parry_chance = 30
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/ravenor/sword/cutro/adamantine
	name = "adamantine cutro"
	desc = "A lightweight adamantium blade with near perfect balance."
	color = "#848484"
	armor_penetration = 6
	max_force = 60
	force_multiplier = 0.35
	unwielded_force_divisor = 0.35
	thrown_force_multiplier = 0.1

/obj/item/material/twohanded/ravenor/sword/broadsword
	name = "heavy broadsword"
	desc = "A heavy, iron-forged broadsword, its sheer weight allows it to cleave through flesh and bone with brutal precision."
	icon_state = "claymore"
	item_state = "claymore"
	attack_cooldown_modifier = 1
	w_class = ITEM_SIZE_HUGE
	max_force = 70
	force_multiplier = 0.41 // Dedicated two hander gets good stats. Balanced by being bad at one-handed fighting.
	unwielded_force_divisor = 0.36
	thrown_force_multiplier = 0.30
	armor_penetration = 5
	base_parry_chance = 25
	wielded_parry_bonus = 10
	melee_accuracy_bonus = 10

/obj/item/material/twohanded/ravenor/sword/broadsword/adamantine
	name = "adamantine broadsword"
	desc = "A heavy, adamantine-forged broadsword, its sheer weight allows it to cleave through flesh and bone with brutal precision."
	color = "#848484"
	max_force = 80
	force_multiplier = 0.44 // Dedicated two hander gets good stats. Balanced by being bad at one-handed fighting.
	unwielded_force_divisor = 0.38
	thrown_force_multiplier = 0.32
	armor_penetration = 6

/obj/item/material/twohanded/ravenor/sword/chopper
	name = "iron chopper"
	desc = "A light primitive blade made of scrap iron, a common sight in the underhives of imperial worlds."
	icon_state = "machete_imp"
	item_state = "salvagedmachete"
	w_class = ITEM_SIZE_LARGE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	attack_cooldown_modifier = 1
	max_force = 65
	force_multiplier = 0.39
	unwielded_force_divisor = 0.37
	thrown_force_multiplier = 0.3
	armor_penetration = 3
	base_parry_chance = 20
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/ravenor/sword/chopper/heavy
	name = "heavy iron chopper"
	desc = "A heavy primitive blade made of scrap iron, a common sight in the underhives of imperial worlds."
	icon_state = "scrapsabre"
	item_state = "salvagedmachete"
	w_class = ITEM_SIZE_HUGE
	attack_cooldown_modifier = 1.2
	max_force = 75
	force_multiplier = 0.44
	unwielded_force_divisor = 0.39
	thrown_force_multiplier = 0.33
	armor_penetration = 4
	base_parry_chance = 25
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/ravenor/sword/chopper/heavy/adamantine
	name = "heavy adamantine chopper"
	desc = "A heavy primitive blade made of scrap iron, a common sight in the underhives of imperial worlds."
	color = "#848484"
	armor_penetration = 5
	max_force = 80
	force_multiplier = 0.46
	unwielded_force_divisor = 0.41
	thrown_force_multiplier = 0.34

/obj/item/material/twohanded/ravenor/sword/commisword
	name = "masterwork imperial blade"
	desc = "A mastercrafted fighting sword of exceptional quality, it's design a perfect balance between speed and strength."
	icon_state = "commissword"
	item_state = "commissword"
	w_class = ITEM_SIZE_HUGE
	max_force = 75
	force_multiplier = 0.39
	unwielded_force_divisor = 0.35
	thrown_force_multiplier = 0.29
	armor_penetration = 6 // Adamantine Masterwork Commisword.
	throw_speed = 2.3
	base_parry_chance = 30 // Good parry.
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1
	melee_accuracy_bonus = 7 // Accurate.

/obj/item/material/twohanded/ravenor/sword/commisword/sabre
	name = "sabre"
	desc = "A masteredcrafted sabre of exceptional quality, it has a duelists grip."
	icon_state = "sabre"
	item_state = "sabre"
	melee_accuracy_bonus = 10
	base_parry_chance = 27

// CHAOS WEAPONS
/obj/item/material/twohanded/ravenor/sword/demon
	name = "chaos sword"
	desc = "The very sight of this blade makes you sick to your stomach."
	icon_state = "Scorpion_CS"
	item_state = "Scorpion_CS"
	w_class = ITEM_SIZE_HUGE
	max_force = 100
	force_multiplier = 0.42
	unwielded_force_divisor = 0.38
	thrown_force_multiplier = 0.30
	armor_penetration = 7
	throw_speed = 3
	base_parry_chance = 35
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1.4
	melee_accuracy_bonus = 10


/obj/item/material/twohanded/ravenor/axe
	name = "trench axe"
	desc = "An agile trench axe issued to guardsmen, used both as a weapon and field tool. Popularized during the Heresy of Krieg, it became standard issue after the Munitorum sanctioned it based on data-scrolls from the conflict."
	icon_state = "trenchaxe"
	item_state = "trenchaxe"
	wielded_item_state = "trenchaxe-w" // ALL AXE SUBWEAPONS REQUIRE WIELDED ITEM STATE SET
	hitsound = list('sound/weapons/slash1.ogg','sound/weapons/slash2.ogg','sound/weapons/slash3.ogg')
	attack_verb = list("bashed", "chopped", "slashed")
	obj_flags = null // no shock
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	max_force = 80
	force_multiplier = 0.46 // Bad one handed. Stronger than sword two handed.
	unwielded_force_divisor = 0.32
	thrown_force_multiplier = 0.30
	armor_penetration = 5 // Hits heavy. Crushes/Cuts Armor.
	throw_speed = 2.5
	edge = TRUE
	sharp = TRUE
	does_spin = TRUE
	base_parry_chance = 15 // Really bad one handed. Equal to a sword when two handed.
	wielded_parry_bonus = 15
	attack_cooldown_modifier = 1.4
	melee_accuracy_bonus = 5


/obj/item/material/twohanded/ravenor/axe/spear
	name = "hunting spear"
	desc = "An incredibly lightweight and nimble spear used by hunters against large game animals."
	hitsound = list('sound/weapons/stab1.ogg', 'sound/weapons/stab2.ogg', 'sound/weapons/stab3.ogg')
	icon_state = "bone_spear"
	item_state = "bone_spear"
	wielded_item_state = "bone_spear-w"
	attack_verb = list("pierced", "stabbed", "slashed")
	obj_flags = null // no shock
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	max_force = 60
	force_multiplier = 0.42
	unwielded_force_divisor = 0.30
	thrown_force_multiplier = 0.30
	armor_penetration = 6 // Pens armor.
	throw_speed = 4
	edge = TRUE
	sharp = FALSE // no decap
	does_spin = FALSE
	base_parry_chance = 10
	wielded_parry_bonus = 20 // Defending eezi
	attack_cooldown_modifier = 1.2
	melee_accuracy_bonus = 7 // Primitive easy to use weapon.

/obj/item/material/twohanded/ravenor/axe/spear/adamantine
	name = "adamantine spear"
	color = "#848484"
	armor_penetration = 7
	force_multiplier = 0.44
	max_force = 70
	edge = TRUE
	thrown_force_multiplier = 0.32
	unwielded_force_divisor = 0.32

/obj/item/material/twohanded/ravenor/axe/spear/fuscina
	name = "fuscina war spear"
	desc = "A relic of ancient Terra, its long reach and brutal weight make it ideal for felling towering foes. Rarely practical, save for Astartes or savage xenos, who wield it to keep death at bay with each crushing strike."
	icon_state = "lance"
	item_state = "lance"
	wielded_item_state = "lance-w"
	w_class = ITEM_SIZE_GARGANTUAN
	max_force = 70
	force_multiplier = 0.46 // Heavier, slower version of a spear.
	unwielded_force_divisor = 0.32
	thrown_force_multiplier = 0.32
	armor_penetration = 7
	throw_speed = 3
	edge = TRUE // Decaps. Big boy.
	sharp = TRUE
	base_parry_chance = 5
	wielded_parry_bonus = 30 // Long reach good defense.
	attack_cooldown_modifier = 1.6
	melee_accuracy_bonus = 7

/obj/item/material/twohanded/ravenor/axe/spear/fuscina/adamantine
	name = "adamantine fuscina"
	color = "#848484"
	armor_penetration = 8
	force_multiplier = 0.48
	max_force = 80
	edge = TRUE
	thrown_force_multiplier = 0.34
	unwielded_force_divisor = 0.34

/obj/item/material/twohanded/ravenor/axe/saintie
	name = "steel saintie"
	desc = "An exotic and incredibly heavy spear/hammer hybrid, ancient stories tell of the weapons use in mythic duels between Lion El'Jonson and Eldar Banshees during the Thramas Crusade. It delivers devastating, singular precision strikes meant to crush armor and overwhelm your opponent (pronounced san-tee)."
	icon_state = "glaive"
	item_state = "spear"
	wielded_item_state = "spear-w"
	w_class = ITEM_SIZE_GARGANTUAN
	obj_flags = OBJ_FLAG_CONDUCTIBLE // Steel Staff
	max_force = 90
	force_multiplier = 0.50
	unwielded_force_divisor = 0.36
	thrown_force_multiplier = 0.34
	armor_penetration = 6
	throw_speed = 2
	base_parry_chance = 10
	wielded_parry_bonus = 25
	attack_cooldown_modifier = 1.8
	melee_accuracy_bonus = 10
	does_spin = FALSE // Spear.

/obj/item/material/twohanded/ravenor/axe/saintie/adamantine
	name = "adamantine saintie"
	color = "#848484"
	armor_penetration = 7
	force_multiplier = 0.53
	max_force = 110
	thrown_force_multiplier = 0.36
	unwielded_force_divisor = 0.39

/obj/item/material/twohanded/ravenor/axe/bardiche
	name = "bardiche"
	desc = "A massive two-handed polearm, built for heavy, armor-crushing strikes. Its sharp blade delivers singular, powerful blows against armored targets. The weigh is considerable on the axe-blade making you vulnerable for a time between each swing."
	icon_state = "bardiche"
	item_state = "savaxe"
	wielded_item_state = "savaxe"
	w_class = ITEM_SIZE_GARGANTUAN
	max_force = 95
	force_multiplier = 0.53 // Heavy chopping weapon.
	unwielded_force_divisor = 0.36
	thrown_force_multiplier = 0.36
	armor_penetration = 6
	throw_speed = 1
	base_parry_chance = 10 // Not as fancy as a saintie. But simple can be effective.
	wielded_parry_bonus = 15
	attack_cooldown_modifier = 1.6
	melee_accuracy_bonus = 5

/obj/item/material/twohanded/ravenor/axe/bardiche/adamantine
	name = "adamantine bardiche"
	color = "#848484"
	armor_penetration = 7
	force_multiplier = 0.56
	max_force = 105
	thrown_force_multiplier = 0.38
	unwielded_force_divisor = 0.41

// CHAINSWORDS
/obj/item/material/twohanded/ravenor/chainsword
	name = "locke pattern chainsword"
	desc = "A standard pattern chainsword constructed in the holy manufactorums of the Mercy Forgeworld."
	icon_state = "mercychainsword"
	item_state = "mercychainsword"
	attack_verb = list("gored", "chopped", "smashed", "battered")
	hitsound = 'sound/weapons/chainsword.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_HUGE
	max_force = 100
	force_multiplier = 0.65
	unwielded_force_divisor = 0.62
	thrown_force_multiplier = 0.45
	armor_penetration = 7 // Ceramite Teeth.
	throw_speed = 1
	edge = TRUE
	sharp = TRUE
	does_spin = TRUE
	base_parry_chance = 25
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1.6 // Chainblade.
	melee_accuracy_bonus = 10 // Chainblades don't miss.

/obj/item/material/twohanded/ravenor/chainsword/guard
	name = "imperial guard chainsword"
	desc = "A light imperial guard issue chainsword, a lighter weight model favored by the Guard, the reduced weight adds to it's speed but makes this pattern far weaker than other chain weapons."
	icon_state = "gchain"
	item_state = "inqchainsword"
	force_multiplier = 0.60
	armor_penetration = 6
	unwielded_force_divisor = 0.57
	thrown_force_multiplier = 0.43
	throw_speed = 2
	max_force = 90
	base_parry_chance = 30
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1.4 // Lighter one-handed variant of the Mercy, faster attack, higher accuracy and defense in exchange for damage.
	melee_accuracy_bonus = 15

/obj/item/material/twohanded/ravenor/chainsword/relic
	name = "relic pattern chainsword"
	desc = "A golden chainsword of extreme quality, it's craft that of the opulent hiveworlds of Sancor -- this relic likely existed for many terran centuries before reaching your hands."
	icon_state = "ggchain"
	item_state = "inqchainsword"
	max_force = 110
	armor_penetration = 7
	force_multiplier = 0.66
	unwielded_force_divisor = 0.64
	melee_accuracy_bonus = 15

/obj/item/material/twohanded/ravenor/chainsword/eviscerator
	name = "eviscerator pattern chainsword"
	desc = "Favoured by Ecclesiarchy Zealots and Ordo Hereticus Members, it's an absurdly large, two-handed chainsword. Almost useless one-handed."
	icon_state = "eviscerator"
	item_state = "eviscerator"
	wielded_item_state = "eviscerator"
	w_class = ITEM_SIZE_GARGANTUAN
	max_force = 110
	armor_penetration = 8
	force_multiplier = 0.71 // Super OP fast astartes chainsword.
	unwielded_force_divisor = 0.6
	melee_accuracy_bonus = 15
	attack_cooldown_modifier = 2
	base_parry_chance = 35

/obj/item/material/twohanded/ravenor/chainsword/drusian
	name = "drusian pattern chainsword"
	desc = "Nicknamed the 'Crusader', it's a common chainsword pattern issued to Inquisitorial agents of the Inquisition in the Koronus Expanse, designed solely to smite the filthy xenos."
	icon_state = "inqchainsword"
	item_state = "inqchainsword"
	wielded_item_state = "inqchainsword"
	force_multiplier = 0.62
	unwielded_force_divisor = 0.59
	thrown_force_multiplier = 0.5
	throw_speed = 1
	base_parry_chance = 32
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1.4 // Same design as guard, just higher quality.
	melee_accuracy_bonus = 17

/obj/item/material/twohanded/ravenor/chainsword/astartes
	name = "mark I pattern chainsword"
	desc = "The standard issued chainsword of the Adeptus Astartes since millennia ago, forged by the finest warsmiths, these chainswords have seen the test of time."
	icon_state = "pcsword"
	item_state = "pcsword"
	wielded_item_state = "pcsword"
	w_class = ITEM_SIZE_GARGANTUAN
	armor_penetration = 8
	force_multiplier = 0.74 // Super OP fast astartes chainsword.
	unwielded_force_divisor = 0.72
	thrown_force_multiplier = 0.62
	throw_speed = 2
	melee_accuracy_bonus = 20
	attack_cooldown_modifier = 1.4
	base_parry_chance = 25 // Astartes melee skill is crazy high.
	wielded_parry_bonus = 5
	str_requirement = 1 // Does a skill check. Do not set to anything else.

/obj/item/material/twohanded/ravenor/axe/thunderhammer
	name = "thunder hammer"
	desc = "A brutal weapon, not for the faint of heart. This weapon is the chosen wargear for Ordos Agents and Astartes -- legendary for its use against daemonkind. A truly terrifying power-weapon."
	icon_state = "thunder_hammer"
	item_state = "thunder_hammer"
	wielded_item_state = "thunder_hammer-w"
	obj_flags = null // Power weapons don't get shocked.
	slot_flags = null
	w_class = ITEM_SIZE_GARGANTUAN
	attack_verb = list("smited", "thrashed", "struck")
	max_force = 100
	force_multiplier = 0.75
	unwielded_force_divisor = 0.71
	thrown_force_multiplier = 0.55
	armor_penetration = 8 // THUNDER
	throw_speed = 0.5
	edge = TRUE // Blows you apart.
	sharp = TRUE
	does_spin = FALSE
	base_parry_chance = 15
	wielded_parry_bonus = 20
	attack_cooldown_modifier = 1.8
	melee_accuracy_bonus = 10


/obj/item/material/twohanded/ravenor/axe/thunderhammer/omnissiah
	name = "omnissiah axe"
	desc = "Muh magos!"
	icon = 'icons/obj/items/oma.dmi'
	icon_state = "Whistle"
	item_state = "Whistle_InHand"
	wielded_item_state = "Whistle_InHand_W"
	max_force = 90
	armor_penetration = 7
	force_multiplier = 0.70
	unwielded_force_divisor = 0.68
	thrown_force_multiplier = 0.48
	throw_speed = 0.6
	attack_cooldown_modifier = 1.7

/obj/item/material/twohanded/ravenor/axe/thunderhammer/astartes
	name = "astartes thunder hammer"
	max_force = 110
	armor_penetration = 9
	force_multiplier = 0.78 // Main benefit is you swing faster compared to human version.
	unwielded_force_divisor = 0.74
	thrown_force_multiplier = 0.58
	throw_speed = 0.5
	base_parry_chance = 10 // Astartes melee covers this.
	wielded_parry_bonus = 20
	attack_cooldown_modifier = 1.4
	melee_accuracy_bonus = 10
	str_requirement = 1

// XENOS / HERETIC WEAPONS

/obj/item/material/twohanded/ravenor/orkmace
	name = "ork mace"
	desc = "A mace normally used by the ork meks, made of scrap. It's MASSIVE."
	icon_state = "mekmace"
	item_state = "mekmace"
	hitsound = 'sound/weapons/bladeslice.ogg'
	attack_verb = list("grunked", "krumped", "kronked", "bonked", "gonked")
	w_class = ITEM_SIZE_GARGANTUAN
	slot_flags = SLOT_BELT
	max_force = 100
	force_multiplier = 0.51
	unwielded_force_divisor = 0.47
	thrown_force_multiplier = 0.43
	armor_penetration = 8 // Ork Magic.
	throw_speed = 2
	edge = TRUE
	sharp = TRUE // Ork mace so big it make head go bye bye.
	does_spin = FALSE // Ork throwing is like shooting a bullet.
	base_parry_chance = 30
	wielded_parry_bonus = 0 // Orks don't two hand melee.
	attack_cooldown_modifier = 1.4
	melee_accuracy_bonus = 12 // Too big to miss.
	str_requirement = 1

/obj/item/material/twohanded/ravenor/orkmace/New() // Waagh speed
	..()
	slowdown_per_slot[slot_r_hand] = -0.1
	slowdown_per_slot[slot_l_hand] = -0.1

/obj/item/material/twohanded/ravenor/orkmace/choppa
	name = "ork choppa"
	desc = "Fixed out of a rusted sheet of metal, this choppa looks too big to be a sword. More like a piece of iron."
	icon_state = "choppa"
	item_state = "choppa"
	wielded_item_state = "pcsword"
	attack_verb = list("ganked", "smushed", "grotted", "smacked")
	armor_penetration = 7
	force_multiplier = 0.54 // Hit harder. Worse AP. Deflect worse. Swing faster.
	unwielded_force_divisor =  0.50
	thrown_force_multiplier = 0.45
	throw_speed = 3
	melee_accuracy_bonus = 10
	attack_cooldown_modifier = 1.2
	base_parry_chance = 25

/obj/item/material/twohanded/ravenor/lashoftorment
	name = "lash of torment"
	desc = "Made up of lascivious coils and barbed hooks, a Lash of Torment moves with a mind of its own."
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "lash"
	item_state = "lash"
	hitsound = 'sound/weapons/whip.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	origin_tech = list(TECH_COMBAT = 5)
	attack_verb = list("flicked", "whipped", "lashed")
	max_force = 38
	force_multiplier = 0.1
	unwielded_force_divisor = 0.1
	thrown_force_multiplier = 0.25
	armor_penetration = 7 // Chaos Magic.
	throw_speed = 1
	edge = TRUE
	sharp = TRUE
	does_spin = TRUE
	base_parry_chance = 25
	wielded_parry_bonus = 10
	attack_cooldown_modifier = 1.2
	melee_accuracy_bonus = 15 // Tis a whip.

/obj/item/material/twohanded/ravenor/lashoftorment/New() // Magic
	..()
	slowdown_per_slot[slot_r_hand] = -0.1
	slowdown_per_slot[slot_l_hand] = -0.1

/obj/item/material/twohanded/ravenor/lashoftorment/apply_hit_effect(mob/living/target, mob/living/user, hit_zone)
	if(usr.gender == MALE)
		playsound(usr.loc, 'sound/voice/Screams_Male_3.ogg', 100, 1, 1)
	else if(usr.gender == FEMALE)
		playsound(usr.loc, 'sound/voice/Screams_Woman_1.ogg', 100, 1, 1)
	if (prob(50))
		user.visible_message(SPAN_DANGER("[user] painfully whips [target], leaving an alien mark on their back!"))
		user.do_attack_animation(target)

		var/blocked = target.get_blocked_ratio(hit_zone, DAMAGE_BURN, damage = 43)
		target.Weaken(pick(0,0,6) * (1 - blocked)) // may need to examine this calc later. 1-blocked?
		target.apply_damage(43, DAMAGE_BURN, hit_zone, src)
		return 1


	return ..()

// COMBAT KNIVES

/obj/item/material/twohanded/ravenor/knife
	name = "utility knife"
	desc = "A versatile tool, more for work than for fighting. It’s the kind of knife you’d find on any belt, sharp enough to get the job done when things need cutting."
	icon_state = "combatknife"
	item_state = "EB-knife"
	attack_verb = list("slashed")
	hitsound = 'sound/weapons/bladeslice.ogg'
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER|SLOT_POCKET
	w_class = ITEM_SIZE_NORMAL
	max_force = 40
	force_multiplier = 0.22
	unwielded_force_divisor = 0.21
	thrown_force_multiplier = 0.20
	armor_penetration = 4 // Knife go in gap of armor.
	throw_speed = 4.5
	edge = TRUE
	sharp = TRUE
	does_spin = FALSE
	base_parry_chance = 20
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.5
	melee_accuracy_bonus = 0 // Difficult to use.
	lock_picking_level = 4


/obj/item/material/twohanded/ravenor/knife/use_after(mob/living/carbon/C as mob, mob/user as mob)
	. = FALSE
	if (istype(C) && (C.handcuffed) && (istype(C.handcuffed, /obj/item/handcuffs/cable)))
		usr.visible_message("\The [usr] cuts \the [C]'s restraints with \the [src]!",\
		"You cut \the [C]'s restraints with \the [src]!",\
		"You hear cable being cut.")
		C.handcuffed = null
		if (C.buckled && C.buckled.buckle_require_restraints)
			C.buckled.unbuckle_mob()
		C.update_inv_handcuffed()
		return TRUE


/obj/item/material/twohanded/ravenor/knife/trench
	name = "trench knife"
	desc = "A blade built for the mud and blood, designed to punch through the chaos of close-quarters combat."
	icon_state = "knife_trench"
	max_force = 45
	force_multiplier = 0.26
	unwielded_force_divisor = 0.25
	thrown_force_multiplier = 0.18 // Not good at throwing.
	base_parry_chance = 23
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.6
	melee_accuracy_bonus = 3
	armor_penetration = 5
	lock_picking_level = 2

/obj/item/material/twohanded/ravenor/knife/tau
	name = "tau blade"
	desc = "A blade built for the mud and blood, designed to punch through the chaos of close-quarters combat."
	icon = 'icons/obj/weapons/knife.dmi'
	icon_state = "tacknife"
	max_force = 45
	force_multiplier = 0.26
	unwielded_force_divisor = 0.25 // same stats as trench knife until someone decides how tau knives differ from normal ones...
	thrown_force_multiplier = 0.18
	base_parry_chance = 23
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.5
	melee_accuracy_bonus = 3
	armor_penetration = 5
	lock_picking_level = 2


/obj/item/material/twohanded/ravenor/knife/bowie
	name = "combat knife"
	desc = "Reliable, heavy, and meant for work in the harshest conditions."
	icon_state = "knife_bowie"
	max_force = 45
	force_multiplier = 0.25 // A more balanced knife compared to the trench.
	unwielded_force_divisor = 0.24
	thrown_force_multiplier = 0.23 // Now thats a knoife
	base_parry_chance = 20
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.5
	melee_accuracy_bonus = 5
	armor_penetration = 5
	throw_speed = 4
	lock_picking_level = 3

/obj/item/material/twohanded/ravenor/knife/glaive
	name = "glaive chopper"
	desc = "An improvised monster of metal, this glaive head has been refitted into something brutal."
	icon_state = "glaive-dagger"
	item_state = "salvagedmachete"
	w_class = ITEM_SIZE_LARGE
	max_force = 50
	force_multiplier = 0.28
	unwielded_force_divisor = 0.27
	thrown_force_multiplier = 0.21
	base_parry_chance = 25
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.7
	melee_accuracy_bonus = 3
	armor_penetration = 4
	throw_speed = 3
	lock_picking_level = 0

/obj/item/material/twohanded/ravenor/knife/catachan
	name = "strange knife"
	desc = "A catachan dagger, a mix between a machete and a shortsword. A brutal weapon used by the death world's jungle fighters."
	icon_state = "catachanfang"
	item_state = "EB-knife"
	max_force = 55
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_LARGE
	force_multiplier = 0.32
	unwielded_force_divisor = 0.3
	thrown_force_multiplier = 0.3
	base_parry_chance = 25 // Excellent parry.
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 0.8
	melee_accuracy_bonus = 0 // Difficult to use.
	armor_penetration = 6
	throw_speed = 3
	lock_picking_level = 0


// EXOTIC

/obj/item/material/twohanded/ravenor/powermaul
	name = "shock maul"
	desc = "The Power Maul commonly used by members of the Adeptus Arbites. It is good for stunning victims."
	icon = 'icons/obj/weapons/melee/misc.dmi'
	icon_state = "thunder_hammer_old"
	item_state = "thunder_hammer_old"
	color = "#292929"
	max_force = 55
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER
	w_class = ITEM_SIZE_GARGANTUAN
	force_multiplier = 0.22
	unwielded_force_divisor = 0.19
	thrown_force_multiplier = 0.22
	base_parry_chance = 25
	wielded_parry_bonus = 5
	attack_cooldown_modifier = 1
	melee_accuracy_bonus = 5
	throw_speed = 0.5
	w_class = ITEM_SIZE_HUGE
	atom_flags = ATOM_FLAG_NO_BLOOD
	attack_verb = list("beaten", "smashed")
	armor_penetration = 5 // Non Lethal Shock
	var/stunforce = 0
	var/agonyforce = 50

/obj/item/material/twohanded/ravenor/powermaul/apply_hit_effect(mob/living/target, mob/living/user, hit_zone)
	var/agony = agonyforce
	var/stun = stunforce
	var/obj/item/organ/external/affecting = null
	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		affecting = H.get_organ(hit_zone)

	if(user.a_intent == I_HURT)
		. = ..()
		if (!.)	//item/attack() does it's own messaging and logs
			return 0	// item/attack() will return 1 if they hit, 0 if they missed.

		stun *= 0.5
		agony = 20
	else
		if(affecting)
			target.visible_message("<span class='danger'>[target] has been shocked in the [affecting.name] with [src] by [user]!</span>")
		else
			target.visible_message("<span class='danger'>[target] has been shocked with [src] by [user]!</span>")

	//stun effects
	target.stun_effect_act(stun, agony, hit_zone, src)

	if(ishuman(target))
		var/mob/living/carbon/human/H = target
		H.forcesay(GLOB.hit_appends)


/*
#define EFFECT_STUN     "stun"
#define EFFECT_WEAKEN   "weaken"
#define EFFECT_PARALYZE "paralize"
#define EFFECT_STUTTER  "stutter"
#define EFFECT_EYE_BLUR "eye_blur"
#define EFFECT_DROWSY   "drowsy"
#define EFFECT_PAIN     "pain" // These are ur melee effects
	*/

/*
/obj/item/melee/energy/powersword //basis for other power weapons
	name = "Power Sword"
	desc = "A adamantium sword with a void shield generator inside of it, the void shield will cut through almost anything that it touches when its on, so make sure you don't cut yourself."
	item_state = "powersword"
	icon_state = "powersword"
	wielded_icon = "powersword-w"
	active_force = 47 //should be enough to cut off most limbs
	active_throwforce = 18
	icon = 'icons/obj/guardpower_gear_32xOBJ.dmi'
	force = 42
	armor_penetration = 8
	throwforce = 15
	throw_speed = 1
	throw_range = 4
	block_chance = 30
	sales_price = 0
	weapon_speed_delay = 9 //2 seconds
	edge = 1
	sharp = 1
	w_class = ITEM_SIZE_HUGE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER|SLOT_S_STORE
	atom_flags = 0
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	origin_tech = list(TECH_MAGNET = 6, TECH_COMBAT = 6)
	attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut", "slashed", "sliced")
	hitsound = "slash_sound"
	parry_sounds = list('sound/weapons/bladeparry1.ogg', 'sound/weapons/bladeparry2.ogg', 'sound/weapons/bladeparry3.ogg', 'sound/weapons/bladeparry4.ogg')
	drop_sound = 'sound/items/drop_sword.ogg'
	grab_sound = 'sound/items/unholster_sword02.ogg'
	equipsound = 'sound/items/holster_sword1.ogg'
	body_parts_covered = UPPER_TORSO|LOWER_TORSO|LEGS|ARMS|HEAD
	armor = list(melee = 1, bullet = 3, laser = 3, energy = 3, bomb = 3, bio = 0, rad = 0)

/obj/item/melee/energy/powersword/activate(mob/living/user)
	..()
	icon_state = "powersword_on"
	to_chat(user, "<span class='notice'>\The [src] is now energised.</span>")

/obj/item/melee/energy/powersword/deactivate(mob/living/user)
	..()
	icon_state = initial(icon_state)
	to_chat(user, "<span class='notice'>\The [src] is de-energised. It's just a regular adamantium sword now.</span>")

/obj/item/melee/energy/powersword/astartes/ingelldina
	name = "Ingelldina Pattern Power Sword"
	desc = "A adamantium sword with a void shield generator inside of it, this one is very long and heavy, clearly having been made for one of the sons of the emperor."
	item_state = "powersword" // There is no on-mob for powersword we must use this. It looks alright.
	icon_state = "powersword"
	wielded_icon = "powersword-w"
	active_force = 47 //should be enough to cut off most limbs
	active_throwforce = 20
	force = 42 //its just a adamantium sword when offline
	throwforce = 15
	throw_speed = 1
	throw_range = 4
	sharp = TRUE
	slot_flags = SLOT_BELT|SLOT_BACK|SLOT_HOLSTER|SLOT_S_STORE //we have a power sword belt sprite, but im not going to code it in just yet, alright? enough codin' today
	block_chance = 33
	sales_price = 0
	w_class = ITEM_SIZE_HUGE
	atom_flags = 0
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	origin_tech = list(TECH_MAGNET = 7, TECH_COMBAT = 7)
	attack_verb = list("attacked", "chopped", "cleaved", "torn", "cut")
	armor_penetration = 10



/obj/item/melee/energy/powersword/claw/integrated
	name = "Power Claws"
	desc = "A gauntlet with 4 clawed fingers with a void shield generator inside of it, the voidshield makes a concentrated power field around each of the 4 claws, making them able to cut through almost anything, this one was integrated to the user's armor and would need a series of ajustments to be safely removed."
	icon_state = "powerclaw-alt_mag"
	item_state = "none"
	wielded_icon = "none"
	active_force = 46
	active_throwforce = 0
	force = 41
	throwforce = 1
	throw_speed = 1
	throw_range = 1
	weapon_speed_delay = 8
	armor_penetration = 7
	edge = 1
	sharp = 1
	block_chance = 15
	sales_price = 0
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_LARGE
	atom_flags = 0
	origin_tech = list(TECH_MAGNET = 1, TECH_COMBAT = 1)
	attack_verb = list("mauled", "clawed", "cleaved", "torn", "cut")

/obj/item/melee/energy/powersword/claw/integrated/activate(mob/living/user)
	..()
	icon_state = "powerclaw-alt_on_mag"
	to_chat(user, "<span class='notice'>\The [src] is now energised.</span>")

/obj/item/melee/energy/powersword/claw/integrated/deactivate(mob/living/user)
	..()
	icon_state = initial(icon_state)
	to_chat(user, "<span class='notice'>\The [src] is de-energised. It's just some adamantium claws now now.</span>")


/obj/item/melee/energy/powersword/claw/integrated/dropped()
	..()
	spawn(1) if(src) qdel(src)

/obj/item/melee/energy/powersword/claw/integrated/terminator
	name = "Terminator Lightning Claws"
	desc = "A gauntlet with 4 clawed fingers with a void shield generator inside of it, the voidshield makes a concentrated power field around each of the 4 claws, making them able to cut through almost anything, this one was integrated to the user's armor and would need a series of ajustments to be safely removed."
	icon_state = "powerclaw-alt_mag"
	item_state = "none"
	wielded_icon = "none"
	active_force = 58
	active_throwforce = 0
	force = 35
	throwforce = 1
	throw_speed = 1
	throw_range = 1
	weapon_speed_delay = 8
	armor_penetration = 22
	edge = 1
	sharp = 1
	block_chance = 66
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_LARGE
	atom_flags = 0
	attack_verb = list("mauled", "clawed", "cleaved", "torn", "cut")
	can_door_force = 1

/obj/item/melee/energy/powersword/fist/integrated/terminator //Make other sub-groups for this when other power fists get added.
	name = "Terminator Power Fist"
	desc = "A powerful ceramite gauntlet, coated in a crackling power field, this one was integrated to the user's armor and would need a series of ajustments to be safely removed."
	icon_state = "powerclaw-alt_mag"
	item_state = "none"
	wielded_icon = "none"
	active_force = 55
	active_throwforce = 0
	force = 38
	throwforce = 1
	throw_speed = 1
	throw_range = 1
	weapon_speed_delay = 8
	armor_penetration = 18
	edge = 1
	sharp = 1
	block_chance = 45
	obj_flags = OBJ_FLAG_CONDUCTIBLE
	w_class = ITEM_SIZE_LARGE
	atom_flags = 0
	attack_verb = list("crushed", "slammed", "bludgeoned", "smashed", "slammed")
	can_door_force = 1
//	wall_breaker = 1

/obj/item/melee/energy/powersword/fist/integrated/terminator/activate(mob/living/user)
	..()
	icon_state = "powerclaw-alt_on_mag"
	to_chat(user, "<span class='notice'>\The [src] is now energised.</span>")

/obj/item/melee/energy/powersword/fist/integrated/terminator/deactivate(mob/living/user)
	..()
	icon_state = initial(icon_state)
	to_chat(user, "<span class='notice'>\The [src] is de-energised. It's just a ceramite fist now.</span>")

/obj/item/melee/energy/powersword/fist/integrated/terminator/dropped()
	..()
	spawn(1) if(src) qdel(src)
*/
